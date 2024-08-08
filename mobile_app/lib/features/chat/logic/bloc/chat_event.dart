part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getConversations() = _GetConversations;
  const factory ChatEvent.changeSelectedPage(int pageIndex) =
      _ChangeSelectedPage;

  const factory ChatEvent.openConversation(String conversationId) =
      _OpenConversation;
  const factory ChatEvent.startNewConversation() = _StartNewConversation;
}
