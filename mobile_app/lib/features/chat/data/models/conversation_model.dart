class ConversationModel {
  final String id;
  final String name;
  final String lastMessage;
  final DateTime lastMessageTime;
  final bool isLastMessageSeen;
  final int unSeenMessagesCount;

  ConversationModel({
    required this.id,
    required this.name,
    required this.lastMessage,
    required this.lastMessageTime,
    required this.isLastMessageSeen,
    required this.unSeenMessagesCount,
  });
}
