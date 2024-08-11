part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.onNewMessagesReceived(
          BuildContext context, List<ConversationModel> conversations) =
      _OnNewMessagesReceived;

  const factory ChatEvent.getConversations(BuildContext context) =
      _GetConversations;
  const factory ChatEvent.changeSelectedPage(
      BuildContext context, int pageIndex) = _ChangeSelectedPage;

  const factory ChatEvent.openConversation(
          BuildContext context, String conversationId, String userName) =
      _OpenConversation;
  const factory ChatEvent.startNewConversation(BuildContext context) =
      _StartNewConversation;

  const factory ChatEvent.refreshConversations(BuildContext context) =
      _RefreshConversations;

  const factory ChatEvent.sendErrorEvent(ApiErrorModel apiErrorModel) =
      _SendErrorEvent;
}
