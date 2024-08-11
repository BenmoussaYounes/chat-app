import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/enums/user_enums.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/params/conversation_params.dart';
import '../data_source/conversation_remote_data_source.dart';
import '../models/message_bubble_model.dart';

class ConversationRepository {
  final ConversationRemoteDataSource _conversationRemoteDataSource;

  ConversationRepository(this._conversationRemoteDataSource);

  Future<ApiResult> sendNewMessage(SendNewMessageParams params) async {
    try {
      await _conversationRemoteDataSource.sendNewMessage(params);
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult> markMessagesAsSeen(String conversationId, User user) async {
    try {
      await _conversationRemoteDataSource.markMessagesAsSeen(
          conversationId, user);
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
