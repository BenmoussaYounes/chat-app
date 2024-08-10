import 'package:cloud_firestore/cloud_firestore.dart';

class LastMessageModel {
  final String message;
  final DateTime messageTime;

  LastMessageModel({
    required this.message,
    required this.messageTime,
  });

  factory LastMessageModel.fromJson(Map<String, dynamic> json) {
    return LastMessageModel(
      message: json['message'],
      messageTime: (json['messageTime'] as Timestamp).toDate(),
    );
  }
}
