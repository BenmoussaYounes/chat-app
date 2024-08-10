import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/enums/user_enums.dart';

class ConversationModel {
  final String id;
  final String name;
  final DateTime createdAt;
  final int unSeenMessagesCount;

  ConversationModel({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.unSeenMessagesCount,
  });

  factory ConversationModel.fromJson(
      Map<String, dynamic> json, User selectedUser) {
    int unSeenMessagesCount;
    String name;
    switch (selectedUser) {
      case User.younes:
        unSeenMessagesCount = json['aliUnSeenMessagesCount'];
        name = 'Ali';
        break;
      case User.ali:
        unSeenMessagesCount = json['younesUnSeenMessagesCount'];
        name = 'Younes';
        break;
    }
    return ConversationModel(
      id: json['id'],
      name: name,
      createdAt: json['createAt'] == null // to solve serverTimestamp() bug
          ? DateTime.now()
          : (json['createAt'] as Timestamp).toDate(),
      unSeenMessagesCount: unSeenMessagesCount,
    );
  }
}
