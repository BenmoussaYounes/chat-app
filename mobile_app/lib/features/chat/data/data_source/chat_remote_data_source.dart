import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobile_app/core/networking/firebase_constants.dart';
import 'package:mobile_app/features/chat/data/models/conversation_model.dart';

import '../../../../core/enums/user_enums.dart';

abstract class ChatRemoteDataSource {
  Future<void> startNewConversation();
  Future<List<ConversationModel>> getConversations(User selectedUser);
}

class ChatRemoteDataSourceImplementation implements ChatRemoteDataSource {
  @override
  Future<void> startNewConversation() async {
    CollectionReference conversation =
        FirebaseFirestore.instance.collection(FirebaseConstants.chatCollection);
    conversation.add(FirebaseConstants.newChatCollection);
  }

  @override
  Future<List<ConversationModel>> getConversations(User selectedUser) async {
    CollectionReference conversation =
        FirebaseFirestore.instance.collection(FirebaseConstants.chatCollection);
    QuerySnapshot querySnapshot = await conversation.get();
    List<ConversationModel> conversations = [];

    querySnapshot.docs.forEach((element) {
      conversations.add(ConversationModel.fromJson(
          {...element.data() as Map<String, dynamic>, 'id': element.id},
          selectedUser));
    });
    return conversations;
  }
}
