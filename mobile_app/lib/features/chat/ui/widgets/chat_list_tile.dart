import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import 'package:mobile_app/features/chat/domain/entities/conversation_entity.dart';
import 'package:mobile_app/features/chat/ui/widgets/leading_circle_avatar.dart';

import '../../../../core/theming/colors_manager.dart';
import 'package:badges/badges.dart' as badges;

import '../../logic/bloc/chat_bloc.dart';

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
      ),
      trailing: Text(
        chatTile.lastMessage == null
            ? ''
            : DateFormat('hh:mm a').format(chatTile.lastMessage!.messageTime),
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: isMessageSeen ? FontWeight.normal : FontWeight.bold,
            ),
      ),
    );
  }
}
