import '../../../../core/enums/user_enums.dart';

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
      unSeenMessagesCount: unSeenMessagesCount,
      lastMessage: json['lastMessage'] == null
          ? null
          : LastMessageModel.fromJson(json['lastMessage']),
    );
  }
}

class LastMessageModel {
  final String message;
  final DateTime sentTime;

  LastMessageModel({
    required this.message,
    required this.sentTime,
  });

  factory LastMessageModel.fromJson(Map<String, dynamic> json) {
    return LastMessageModel(
      message: json['message'],
      sentTime: DateTime.parse(json['sentTime']),
    );
  }
}
