import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/core/enums/user_enums.dart';
import 'package:mobile_app/core/helpers/extensions.dart';
import 'package:mobile_app/core/networking/firebase_constants.dart';
import 'package:mobile_app/core/routing/routes.dart';

import 'package:mobile_app/features/chat/domain/entities/conversation_entity.dart';

import '../../data/models/conversation_model.dart';
import '../../data/repositories/chat_repository.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatRepository _chatRepository;

  StreamSubscription<QuerySnapshot>? chatSubscription;
  User selectedUser = User.younes;

  ChatBloc(this._chatRepository) : super(const _Initial()) {
    on<_GetConversations>(_getConversations);
    on<_OnNewMessagesReceived>(_onNewMessagesReceived);
    on<_ChangeSelectedPage>(_changeSelectedPageIndex,
        transformer:
            restartable()); // prevent multiple events from being processed at the same time
    on<_OpenConversation>(_openConversation);
    on<_StartNewConversation>(_startNewConversation);
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
        failure: (error) => print('Error getting last message: $error'),
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
      (event) {
        final List<ConversationModel> conversations =
            event.docs.map((conversation) {
          return ConversationModel.fromJson({
            ...conversation.data() as Map<String, dynamic>,
            'id': conversation.id,
          }, selectedUser);
        }).toList();
        add(ChatEvent.onNewMessagesReceived(conversations));
      },
    );
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
    add(const ChatEvent.getConversations());
  }

  void _startNewConversation(
    _StartNewConversation event,
    Emitter<ChatState> emit,
  ) async {
    final response = await _chatRepository.startNewConversation();
    response.when(
      success: (_) => null,
      failure: (error) => null,
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

  @override
  Future<void> close() {
    chatSubscription?.cancel();
    return super.close();
  }
}
