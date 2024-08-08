import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:mobile_app/features/chat/data/models/conversation_model.dart';
import 'package:mobile_app/features/chat/ui/widgets/leading_circle_avatar.dart';

import '../../../../core/theming/colors_manager.dart';
import 'package:badges/badges.dart' as badges;

import '../../logic/bloc/chat_bloc.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile({super.key, required this.conversation});

  final ConversationModel conversation;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5.w,
        ),
      ),
      tileColor: conversation.isLastMessageSeen
          ? Colors.white
          : ColorsManager.mainBlue.withOpacity(0.15),
      onTap: () => context.read<ChatBloc>().add(
            ChatEvent.openConversation(conversation.id),
          ),
      leading: conversation.unSeenMessagesCount > 0
          ? badges.Badge(
              badgeContent: Text(
                conversation.unSeenMessagesCount.toString(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white,
                    ),
              ),
              child: const LeadingCircleAvatar())
          : const LeadingCircleAvatar(),
      title: Text(
        conversation.name,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: conversation.isLastMessageSeen
                  ? FontWeight.normal
                  : FontWeight.bold,
            ),
      ),
      subtitle: Text(
        conversation.lastMessage,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: conversation.isLastMessageSeen
                  ? FontWeight.normal
                  : FontWeight.bold,
            ),
      ),
      trailing: Text(
        DateFormat('hh:mm a').format(conversation.lastMessageTime),
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: conversation.isLastMessageSeen
                  ? FontWeight.normal
                  : FontWeight.bold,
            ),
      ),
    );
  }
}
