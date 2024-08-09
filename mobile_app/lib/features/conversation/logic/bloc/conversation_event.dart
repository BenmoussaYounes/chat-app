part of 'conversation_bloc.dart';

@freezed
class ConversationEvent with _$ConversationEvent {
  const factory ConversationEvent.getMessages(String conversationId) =
      _GetMessages;
  const factory ConversationEvent.sendMessage() = _SendMessage;
}
