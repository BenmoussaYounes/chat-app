import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/enums/user_enums.dart';
import '../../../../core/networking/firebase_constants.dart';
import '../../domain/params/conversation_params.dart';

class ConversationRemoteDataSource {
  Future<void> sendNewMessage(SendNewMessageParams params) async {
    DocumentReference chatDocument = FirebaseFirestore.instance
        .collection(FirebaseConstants.chatCollection)
        .doc(params.conversationId);
    CollectionReference messagesCollection =
        chatDocument.collection(FirebaseConstants.messagesCollection);

    // transaction to add new message and update unSeenMessagesCount
    await FirebaseFirestore.instance.runTransaction((transaction) async {
      await messagesCollection.add({
        'message': params.message,
        'sender': params.sender.value,
        'messageTime': FieldValue.serverTimestamp(),
        'isMessageSeen': false,
      });

      DocumentSnapshot chatDocSnapshot = await transaction.get(chatDocument);
      if (chatDocSnapshot.exists) {
        transaction.update(
            chatDocument,
            params.sender == User.ali
                ? {'younesUnSeenMessagesCount': FieldValue.increment(1)}
                : {'aliUnSeenMessagesCount': FieldValue.increment(1)});
      }
    });
  }

  Future<void> markMessagesAsSeen(String conversationId, User user) async {
    DocumentReference chatDocument = FirebaseFirestore.instance
        .collection(FirebaseConstants.chatCollection)
        .doc(conversationId);

    // transaction to mark messages as seen and update unSeenMessagesCount
    await FirebaseFirestore.instance.runTransaction((transaction) async {
      QuerySnapshot messagesSnapshot = await chatDocument
          .collection(FirebaseConstants.messagesCollection)
          .where('sender', isNotEqualTo: user.value)
          .where('isMessageSeen', isEqualTo: false)
          .get();

      for (QueryDocumentSnapshot message in messagesSnapshot.docs) {
        transaction.update(
          chatDocument
              .collection(FirebaseConstants.messagesCollection)
              .doc(message.id),
          {'isMessageSeen': true},
        );
      }

      transaction.update(
          chatDocument,
          user == User.ali
              ? {'aliUnSeenMessagesCount': 0}
              : {'younesUnSeenMessagesCount': 0});
    });
  }
}
