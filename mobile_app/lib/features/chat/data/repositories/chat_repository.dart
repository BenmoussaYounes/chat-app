import 'package:mobile_app/core/networking/api_result.dart';
import 'package:mobile_app/features/chat/data/data_source/chat_remote_data_source.dart';
import 'package:mobile_app/features/chat/data/models/conversation_model.dart';
import 'package:mobile_app/features/chat/data/models/last_message_model.dart';

import '../../../../core/enums/user_enums.dart';

class ChatRepository {
  ChatRepository(this._chatRemoteDataSource);
  final ChatRemoteDataSource _chatRemoteDataSource;

  Future<ApiResult<void>> startNewConversation() async {
    try {
      await _chatRemoteDataSource.startNewConversation();
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }

  Future<ApiResult<List<ConversationModel>>> getConversations(
      User selectedUser) async {
    try {
      final conversation =
          await _chatRemoteDataSource.getConversations(selectedUser);
      return ApiResult.success(conversation);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }

  Future<ApiResult<LastMessageModel?>> getLastMessage(
      String conversationId) async {
    try {
      final lastMessage =
          await _chatRemoteDataSource.getLastMessage(conversationId);
      return ApiResult.success(lastMessage);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
