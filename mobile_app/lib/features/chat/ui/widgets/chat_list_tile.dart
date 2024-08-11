import 'package:flutter/material.dart';

import 'package:badges/badges.dart' as badges;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/time_formatter.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../domain/entities/conversation_entity.dart';
import '../../logic/bloc/chat_bloc.dart';

import 'leading_circle_avatar.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({super.key, required this.chatTile});

  final ChatListTileEntity chatTile;

  @override
  Widget build(BuildContext context) {
    final isMessageSeen =
        chatTile.conversation.unSeenMessagesCount == 0 ? true : false;
    return ListTile(
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5.w,
        ),
      ),
      tileColor: isMessageSeen
          ? Colors.white
          : ColorsManager.mainGray.withOpacity(0.2),
      onTap: () => context.read<ChatBloc>().add(
            ChatEvent.openConversation(
                context, chatTile.conversation.id, chatTile.conversation.name),
          ),
      leading: chatTile.conversation.unSeenMessagesCount > 0
          ? badges.Badge(
              badgeContent: Text(
                chatTile.conversation.unSeenMessagesCount.toString(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
              child: const LeadingCircleAvatar())
          : const LeadingCircleAvatar(),
      title: Text(
        chatTile.conversation.name,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: isMessageSeen ? FontWeight.normal : FontWeight.bold,
            ),
      ),
      subtitle: Text(
        chatTile.lastMessage?.message ?? 'No messages yet',
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: isMessageSeen ? FontWeight.normal : FontWeight.bold,
            ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        chatTile.lastMessage == null
            ? ''
            : TimeFormatter.formatSentTime(chatTile.lastMessage!.messageTime),
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: isMessageSeen ? FontWeight.normal : FontWeight.bold,
            ),
      ),
    );
  }
}
