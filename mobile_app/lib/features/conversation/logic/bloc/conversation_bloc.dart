import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/core/enums/user_enums.dart';
import 'package:mobile_app/features/conversation/domain/params/conversation_params.dart';
import 'package:mobile_app/features/conversation/data/repositories/conversation_repository.dart';

import '../../../../core/networking/firebase_constants.dart';
import '../../data/models/message_bubble_model.dart';

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

    _conversationSubscription = conversationStream.listen((event) {
      List<MessageBubbleModel> messages = [];
      for (int index = 0; index < event.docs.length; index++) {
        QueryDocumentSnapshot<Object?> message = event.docs[index];
        Map<String, dynamic> data = message.data() as Map<String, dynamic>;
        data['id'] = message.id;

        MessageBubbleModel messageBubble =
            MessageBubbleModel.fromJson(data, selectedUser);

        if (index == event.docs.length - 1 && messageBubble.isMe) {
          messageBubble.haveSeenStatus = true;
        }
        messages.add(messageBubble);
      }

      add(_MessageReceived(messages));
      _conversationRepository.markMessagesAsSeen(conversationId, selectedUser);
    });
  }

  void _messageReceived(
      _MessageReceived event, Emitter<ConversationState> emit) {
    final messageBubble = event.messagesBubbles;
    emit(ConversationState.loaded(messageBubble));
  }

  void _sendMessage(_SendMessage event, Emitter<ConversationState> emit) {
    final String newMessage = newMessageController.text.trim();
    newMessageController.clear();

    _conversationRepository.sendNewMessage(SendNewMessageParams(
        conversationId: conversationId,
        sender: selectedUser,
        message: newMessage));
  }

  @override
  Future<void> close() {
    _conversationSubscription?.cancel();
    return super.close();
  }
}
