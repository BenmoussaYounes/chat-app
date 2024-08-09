import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_app/core/helpers/extensions.dart';
import 'package:mobile_app/core/routing/routes.dart';

import '../../data/models/conversation_model.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc() : super(const _Initial()) {
    on<_GetConversations>(_getConversations);
    on<_ChangeSelectedPage>(_changeSelectedPageIndex,
        // prevent multiple events from being processed at the same time
        transformer: restartable());
    on<_OpenConversation>(_openConversation);
    on<_StartNewConversation>(_startNewConversation);
  }

  Future<void> _getConversations(
    _GetConversations event,
    Emitter<ChatState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 2));
    emit(const Loaded([]));
  }

  void _changeSelectedPageIndex(
    _ChangeSelectedPage event,
    Emitter<ChatState> emit,
  ) async {
    emit(ChangeSelectedPageIndex(event.pageIndex));
    await Future.delayed(const Duration(seconds: 2));
    emit(Loaded([
      ConversationModel(
        id: '1',
        name: 'John Doe',
        unSeenMessagesCount: 2,
        lastMessage: LastMessageModel(
          message: 'Hey',
          sentTime: DateTime.now(),
        ),
      ),
      ConversationModel(
        id: '2',
        name: 'Jane Doe',
        unSeenMessagesCount: 0,
        lastMessage: LastMessageModel(
          message: 'Hi, I am fine',
          sentTime: DateTime.now(),
        ),
      ),
      ConversationModel(
        id: '1',
        name: 'John Doe',
        unSeenMessagesCount: 1,
        lastMessage: LastMessageModel(
          message: 'Hey',
          sentTime: DateTime.now(),
        ),
      ),
      ConversationModel(
        id: '2',
        name: 'Jane Doe',
        unSeenMessagesCount: 0,
      ),
    ]));
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

  void _startNewConversation(
    _StartNewConversation event,
    Emitter<ChatState> emit,
  ) {
    // Start new conversation logic
  }
}
