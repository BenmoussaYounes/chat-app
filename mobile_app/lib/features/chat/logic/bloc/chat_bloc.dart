import 'dart:async';

import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/user_enums.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_error_model.dart';
import '../../../../core/networking/api_response_snackbar.dart';
import '../../../../core/networking/api_result.dart';
import '../../../../core/networking/firebase_constants.dart';
import '../../../../core/routing/routes.dart';
import '../../data/models/conversation_model.dart';
import '../../data/repositories/chat_repository.dart';
import '../../domain/entities/conversation_entity.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _chatRepository;

  StreamSubscription<QuerySnapshot>? chatSubscription;
  User selectedUser = User.younes;

  ChatBloc(this._chatRepository) : super(const _Initial()) {
    on<_GetConversations>(_getConversations, transformer: restartable());
    on<_OnNewMessagesReceived>(_onNewMessagesReceived,
        transformer:
            restartable()); // prevent multiple events from being processed at the same time
    on<_ChangeSelectedPage>(_changeSelectedPageIndex);
    on<_OpenConversation>(_openConversation);
    on<_StartNewConversation>(_startNewConversation,
        transformer: restartable());
    on<_RefreshConversations>(_onRefreshConversations);
    on<_SendErrorEvent>(_sendErrorEvent);
  }

  Future<void> _onNewMessagesReceived(
    _OnNewMessagesReceived event,
    Emitter<ChatState> emit,
  ) async {
    List<ChatListTileEntity> chatListTileEntities = [];
    for (ConversationModel conversation in event.conversations) {
      final response = await _chatRepository.getLastMessage(conversation.id);
      response.when(
        success: (lastMessage) {
          return chatListTileEntities.add(ChatListTileEntity(
            conversation: conversation,
            lastMessage: lastMessage,
          ));
        },
        failure: (error) => Error(error),
      );
    }
    chatListTileEntities.sort((a, b) {
      final aTime = a.lastMessage?.messageTime ?? a.conversation.createdAt;
      final bTime = b.lastMessage?.messageTime ?? b.conversation.createdAt;
      return bTime.compareTo(aTime); // sort by last message time
    });

    emit(Loaded(chatListTileEntities));
  }

  Future<void> _getConversations(
    _GetConversations event,
    Emitter<ChatState> emit,
  ) async {
    final Stream<QuerySnapshot> chatStream = FirebaseFirestore.instance
        .collectionGroup(FirebaseConstants.chatCollection)
        .orderBy('createAt', descending: true)
        .snapshots(includeMetadataChanges: true);

    chatSubscription = chatStream.listen(
      (subscriptionEvent) async {
        final ApiResult response =
            await _chatRepository.parseSubscriptionConversationsSnapshot(
                subscriptionEvent.docs, selectedUser);
        response.when(
          success: (conversations) {
            add(_OnNewMessagesReceived(event.context, conversations));
          },
          failure: (error) {
            add(_SendErrorEvent(error));
          },
        );
      },
      onError: (error) {
        emit(Error(ApiErrorHandler.handle(error)));
      },
    );
  }

  void _onRefreshConversations(
    _RefreshConversations event,
    Emitter<ChatState> emit,
  ) async {
    await chatSubscription?.cancel();
    emit(const _Initial());
    if (event.context.mounted) add(_GetConversations(event.context));
  }

  void _changeSelectedPageIndex(
    _ChangeSelectedPage event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChangeSelectedPageIndex(event.pageIndex));
    switch (event.pageIndex) {
      case 0:
        selectedUser = User.younes;
      case 1:
        selectedUser = User.ali;
    }
    chatSubscription?.cancel();
    add(ChatEvent.getConversations(event.context));
  }

  void _startNewConversation(
    _StartNewConversation event,
    Emitter<ChatState> emit,
  ) async {
    final response = await _chatRepository.startNewConversation();
    response.when(
      success: (_) => null,
      failure: (error) =>
          ApiResponseSnackBar.showFailureSnackBar(event.context, error.message),
    );
  }

  void _openConversation(
    _OpenConversation event,
    Emitter<ChatState> emit,
  ) {
    event.context.pushNamed(Routes.conversationScreen, arguments: {
      'conversationId': event.conversationId,
      'userName': event.userName,
    });
  }

  void _sendErrorEvent(
    _SendErrorEvent event,
    Emitter<ChatState> emit,
  ) {
    emit(Error(event.apiErrorModel));
  }

  @override
  Future<void> close() {
    chatSubscription?.cancel();
    return super.close();
  }
}
