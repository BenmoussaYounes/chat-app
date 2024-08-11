part of 'conversation_bloc.dart';

@freezed
class ConversationState with _$ConversationState {
  const factory ConversationState.initial() = _Initial;

  const factory ConversationState.loaded(List<MessageBubbleModel> messages) =
      _Loaded;
  const factory ConversationState.error(ApiErrorModel apiErrorModel) = Error;
  const factory ConversationState.newMessage(MessageBubbleModel message) =
      NewMessage;
}
