part of 'conversation_bloc.dart';

@freezed
class ConversationEvent with _$ConversationEvent {
  const factory ConversationEvent.getMessages(
      String conversationId, User selectedUser) = _GetMessages;
  const factory ConversationEvent.sendMessage(BuildContext context) =
      _SendMessage;
  const factory ConversationEvent.messagesReceived(
      List<MessageBubbleModel> messagesBubbles) = _MessageReceived;
  const factory ConversationEvent.sendErrorEvent(ApiErrorModel apiErrorModel) =
      _SendErrorEvent;
  const factory ConversationEvent.refetchMessages() = _RefetchMessages;
}
