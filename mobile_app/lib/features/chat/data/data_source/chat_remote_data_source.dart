import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/enums/user_enums.dart';
import '../../../../core/networking/firebase_constants.dart';
import '../models/conversation_model.dart';
import '../models/last_message_model.dart';

abstract class ChatRemoteDataSource {
  Future<void> startNewConversation();
  Future<List<ConversationModel>> getConversations(User selectedUser);
  Future<LastMessageModel?> getLastMessage(String conversationId);
}

class ChatRemoteDataSourceImplementation implements ChatRemoteDataSource {
  @override
  Future<void> startNewConversation() async {
    CollectionReference chatCollection =
        FirebaseFirestore.instance.collection(FirebaseConstants.chatCollection);

    chatCollection.add(FirebaseConstants.newConversationDocument);
  }

  @override
  Future<List<ConversationModel>> getConversations(User selectedUser) async {
    CollectionReference chatCollection =
        FirebaseFirestore.instance.collection(FirebaseConstants.chatCollection);

    QuerySnapshot querySnapshot = await chatCollection.get();
    List<ConversationModel> conversations = [];

    for (QueryDocumentSnapshot<Object?> element in querySnapshot.docs) {
      conversations.add(ConversationModel.fromJson(
          {...element.data() as Map<String, dynamic>, 'id': element.id},
          selectedUser));
    }
    return conversations;
  }

  @override
  Future<LastMessageModel?> getLastMessage(String conversationId) async {
    CollectionReference chatCollection =
        FirebaseFirestore.instance.collection(FirebaseConstants.chatCollection);

    QuerySnapshot querySnapshot = await chatCollection
        .doc(conversationId)
        .collection(FirebaseConstants.messagesCollection)
        .orderBy('messageTime', descending: true)
        .limit(1)
        .get();

    if (querySnapshot.docs.isEmpty) return null;

    return LastMessageModel.fromJson(
        querySnapshot.docs.first.data() as Map<String, dynamic>);
  }
}
