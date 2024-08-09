class MessageBubbleModel {
  final String id;
  final bool isMe;
  final String message;
  final String messageTime;
  final bool isMessageSeen;

  MessageBubbleModel({
    required this.id,
    required this.isMe,
    required this.message,
    required this.messageTime,
    required this.isMessageSeen,
  });
}
