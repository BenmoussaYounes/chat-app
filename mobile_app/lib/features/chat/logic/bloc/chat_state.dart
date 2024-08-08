part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loaded(List<ConversationModel> conversations) =
      Loaded;
  const factory ChatState.error(String message) = Error;

  // Navigation Bar
  const factory ChatState.changeSelectedPageIndex(int selectedPageIndex) =
      ChangeSelectedPageIndex;
}
