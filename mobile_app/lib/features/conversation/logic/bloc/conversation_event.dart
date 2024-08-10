part of 'conversation_bloc.dart';

@freezed
class ConversationEvent with _$ConversationEvent {
  const factory ConversationEvent.getMessages(
      String conversationId, User selectedUser) = _GetMessages;
  const factory ConversationEvent.sendMessage() = _SendMessage;

  const factory ConversationEvent.messagesReceived(
      List<MessageBubbleModel> messagesBubbles) = _MessageReceived;
}
