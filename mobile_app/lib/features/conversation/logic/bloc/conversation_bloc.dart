import 'dart:async';

import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/user_enums.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_response_snackbar.dart';
import '../../../../core/networking/firebase_constants.dart';
import '../../data/models/message_bubble_model.dart';
import '../../data/repositories/conversation_repository.dart';
import '../../domain/params/conversation_params.dart';

part 'conversation_event.dart';
part 'conversation_state.dart';
part 'conversation_bloc.freezed.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  late String conversationId;
  late User selectedUser;

  StreamSubscription<QuerySnapshot>? _conversationSubscription;
  final ConversationRepository _conversationRepository;

  TextEditingController newMessageController = TextEditingController();

  ConversationBloc(this._conversationRepository) : super(const _Initial()) {
    on<_GetMessages>(_getConversation);
    on<_SendMessage>(_sendMessage);
    on<_MessageReceived>(_messageReceived);
    on<_RefetchMessages>(_refetchMessages);
    on<_SendErrorEvent>(_sendError);
  }

  Future<void> _getConversation(
      _GetMessages event, Emitter<ConversationState> emit) async {
    conversationId = event.conversationId;
    selectedUser = event.selectedUser;

    final Stream<QuerySnapshot> conversationStream = FirebaseFirestore.instance
        .collection(FirebaseConstants.chatCollection)
        .doc(conversationId)
        .collection(FirebaseConstants.messagesCollection)
        .orderBy('messageTime', descending: false)
        .snapshots();

    _conversationSubscription =
        conversationStream.listen((subscriptionEvent) async {
      final response = await _conversationRepository.parseMessagesSnapshot(
          subscriptionEvent.docs, selectedUser);

      response.when(
          success: (messages) {
            add(_MessageReceived(messages));
            _conversationRepository.markMessagesAsSeen(
                conversationId, selectedUser);
          },
          failure: (error) => add(_SendErrorEvent(error)));
    });
  }

  void _messageReceived(
      _MessageReceived event, Emitter<ConversationState> emit) {
    final messageBubble = event.messagesBubbles;
    emit(ConversationState.loaded(messageBubble));
  }

  void _sendMessage(_SendMessage event, Emitter<ConversationState> emit) async {
    final String newMessage = newMessageController.text.trim();
    newMessageController.clear();

    final response = await _conversationRepository.sendNewMessage(
        SendNewMessageParams(
            conversationId: conversationId,
            sender: selectedUser,
            message: newMessage));

    response.when(
        success: (_) => null,
        failure: (error) => ApiResponseSnackBar.showFailureSnackBar(
            event.context, error.message));
  }

  void _refetchMessages(
      _RefetchMessages event, Emitter<ConversationState> emit) async {
    emit(const _Initial());
    await _conversationSubscription?.cancel();
    add(_GetMessages(conversationId, selectedUser));
  }

  void _sendError(_SendErrorEvent event, Emitter<ConversationState> emit) {
    emit(ConversationState.error(event.apiErrorModel));
  }

  @override
  Future<void> close() {
    _conversationSubscription?.cancel();
    return super.close();
  }
}
