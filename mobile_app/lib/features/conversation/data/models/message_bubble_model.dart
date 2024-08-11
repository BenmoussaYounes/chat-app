import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/enums/user_enums.dart';

class MessageBubbleModel {
  final String id;
  final bool isMe;
  final String message;
  final DateTime messageTime;
  final bool isMessageSeen;
  bool haveSeenStatus;

  MessageBubbleModel({
    required this.id,
    required this.isMe,
    required this.message,
    required this.messageTime,
    required this.isMessageSeen,
    this.haveSeenStatus = false,
  });

  factory MessageBubbleModel.fromJson(
      Map<String, dynamic> json, User selectedUser) {
    bool isMe;
    switch (selectedUser) {
      case User.younes:
        isMe = User.fromString(json['sender']) == User.younes ? true : false;
      case User.ali:
        isMe = User.fromString(json['sender']) == User.ali ? true : false;
    }

    return MessageBubbleModel(
      id: json['id'],
      isMe: isMe,
      message: json['message'],
      messageTime: json['messageTime'] == null // To solve serverTimestamp() bug
          ? DateTime.now()
          : (json['messageTime'] as Timestamp).toDate(),
      isMessageSeen: json['isMessageSeen'],
    );
  }

  Map<String, dynamic> toJson(
    String documentId,
    User user,
    String message,
  ) {
    return {
      'user': user,
      'message': message,
      'messageTime': messageTime,
      'isMessageSeen': isMessageSeen,
    };
  }
}
