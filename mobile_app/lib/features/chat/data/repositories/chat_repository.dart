import 'package:mobile_app/core/networking/api_result.dart';
import 'package:mobile_app/features/chat/data/data_source/chat_remote_data_source.dart';
import 'package:mobile_app/features/chat/data/models/conversation_model.dart';

import '../../../../core/enums/user_enums.dart';

abstract class ChatRepository {
  Future<ApiResult<void>> startNewConversation();
  Future<ApiResult<List<ConversationModel>>> getConversations(
      User selectedUser);
}

class ChatRepositoryImplementation implements ChatRepository {
  ChatRepositoryImplementation(this._chatRemoteDataSource);
  final ChatRemoteDataSource _chatRemoteDataSource;
  @override
  Future<ApiResult<void>> startNewConversation() async {
    try {
      await _chatRemoteDataSource.startNewConversation();
      return const ApiResult.success(null);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }

  @override
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
}
