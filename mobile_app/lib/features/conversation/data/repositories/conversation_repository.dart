import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_app/core/enums/user_enums.dart';
import 'package:mobile_app/core/networking/api_error_handler.dart';
import 'package:mobile_app/core/networking/api_result.dart';

import '../../../../core/networking/firebase_constants.dart';
import '../../domain/params/conversation_params.dart';
import '../models/message_bubble_model.dart';

class ConversationRepository {
  Future<ApiResult> sendNewMessage(SendNewMessageParams params) async {
    try {
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
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult> markMessagesAsSeen(String conversationId, User user) async {
    try {
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
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<MessageBubbleModel>>> parseMessagesSnapshot(
      List<QueryDocumentSnapshot> snapshots, User selectedUser) async {
    try {
      List<MessageBubbleModel> messages = [];
      for (int index = 0; index < snapshots.length; index++) {
        QueryDocumentSnapshot<Object?> message = snapshots[index];
        Map<String, dynamic> data = message.data() as Map<String, dynamic>;
        data['id'] = message.id;

        MessageBubbleModel messageBubble =
            MessageBubbleModel.fromJson(data, selectedUser);

        if (index == snapshots.length - 1 && messageBubble.isMe) {
          messageBubble.haveSeenStatus = true;
        }
        messages.add(messageBubble);
      }
      return ApiResult.success(messages);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
