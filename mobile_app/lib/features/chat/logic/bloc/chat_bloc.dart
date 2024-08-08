import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    emit(Loaded([
      ConversationModel(
        id: '1',
        name: 'John Doe',
        lastMessage: 'Hello, how are you?',
        lastMessageTime: DateTime.now(),
        unSeenMessagesCount: 2,
        isLastMessageSeen: false,
      ),
      ConversationModel(
        id: '2',
        name: 'Jane Doe',
        lastMessage: 'Hi, I am fine',
        lastMessageTime: DateTime.now(),
        unSeenMessagesCount: 0,
        isLastMessageSeen: true,
      ),
    ]));
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
        lastMessage: 'Hello, how are you?',
        lastMessageTime: DateTime.now(),
        unSeenMessagesCount: 2,
        isLastMessageSeen: false,
      ),
      ConversationModel(
        id: '2',
        name: 'Jane Doe',
        lastMessage: 'Hi, I am fine',
        lastMessageTime: DateTime.now(),
        unSeenMessagesCount: 0,
        isLastMessageSeen: true,
      ),
    ]));
  }

  void _openConversation(
    _OpenConversation event,
    Emitter<ChatState> emit,
  ) {
    // Open conversation logic
  }

  void _startNewConversation(
    _StartNewConversation event,
    Emitter<ChatState> emit,
  ) {
    // Start new conversation logic
  }
}
