class ConversationModel {
  final String id;
  final String name;
  final int unSeenMessagesCount;
  final LastMessageModel? lastMessage;

  ConversationModel({
    required this.id,
    required this.name,
    required this.unSeenMessagesCount,
    this.lastMessage,
  });
}

class LastMessageModel {
  final String message;
  final DateTime sentTime;

  LastMessageModel({
    required this.message,
    required this.sentTime,
  });
}
