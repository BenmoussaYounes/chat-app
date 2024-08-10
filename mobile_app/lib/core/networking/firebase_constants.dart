import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseConstants {
  static String chatCollection = 'chat';
  static String messagesCollection = 'messages';
  static Map<String, dynamic> newConversationDocument = <String, dynamic>{
    'aliUnSeenMessagesCount': 0,
    'younesUnSeenMessagesCount': 0,
    'createAt': FieldValue.serverTimestamp(),
  };
}
