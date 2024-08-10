import 'package:mobile_app/features/chat/data/models/conversation_model.dart';

import '../../data/models/last_message_model.dart';

class ChatListTileEntity {
  final ConversationModel conversation;
  final LastMessageModel? lastMessage;

  ChatListTileEntity({
    required this.conversation,
    this.lastMessage,
  });
}
