import '../../../../core/enums/user_enums.dart';

class SendNewMessageParams {
  final String conversationId;
  final User sender;
  final String message;

  SendNewMessageParams({
    required this.conversationId,
    required this.sender,
    required this.message,
  });
}
