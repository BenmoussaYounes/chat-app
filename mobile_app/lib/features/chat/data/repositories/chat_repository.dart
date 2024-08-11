import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../core/enums/user_enums.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_result.dart';
import '../data_source/chat_remote_data_source.dart';
import '../models/conversation_model.dart';
import '../models/last_message_model.dart';

class ChatRepository {
  ChatRepository(this._chatRemoteDataSource);
  final ChatRemoteDataSource _chatRemoteDataSource;

  Future<ApiResult<void>> startNewConversation() async {
    try {
      await _chatRemoteDataSource.startNewConversation();
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<ConversationModel>>> getConversations(
      User selectedUser) async {
    try {
      final conversation =
          await _chatRemoteDataSource.getConversations(selectedUser);
      return ApiResult.success(conversation);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<LastMessageModel?>> getLastMessage(
      String conversationId) async {
    try {
      final lastMessage =
          await _chatRemoteDataSource.getLastMessage(conversationId);
      return ApiResult.success(lastMessage);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }

  Future<ApiResult<List<ConversationModel>>>
      parseSubscriptionConversationsSnapshot(
          List<QueryDocumentSnapshot> snapshots, User selectedUser) async {
    try {
      return ApiResult.success(snapshots.map((conversation) {
        return ConversationModel.fromJson({
          ...conversation.data() as Map<String, dynamic>,
          'id': conversation.id,
        }, selectedUser);
      }).toList());
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
