import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/helpers/time_formatter.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/widgets/seen_status_icon.dart';
import '../../data/models/message_bubble_model.dart';

class MessageBubble extends StatelessWidget {
  final MessageBubbleModel messageBubble;

  const MessageBubble({required this.messageBubble, super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Row(
        mainAxisAlignment: messageBubble.isMe
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!messageBubble.isMe)
            Container(
              height: 48.h,
              width: 28.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFE9ECEF),
              ),
              child: Icon(Icons.person,
                  size: 16.sp, color: ColorsManager.mainGray),
            ),
          horizontalSpace(8),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            constraints: BoxConstraints(maxWidth: screenWidth * 0.7),
            decoration: BoxDecoration(
                color: messageBubble.isMe
                    ? ColorsManager.mainGray
                    : const Color(0xFFE9ECEF),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.r),
                    topRight: Radius.circular(messageBubble.isMe ? 0 : 18.r),
                    bottomLeft: Radius.circular(messageBubble.isMe ? 18.r : 0),
                    bottomRight: Radius.circular(18.r))),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              alignment: WrapAlignment.end,
              children: [
                if (messageBubble.haveSeenStatus) ...[
                  SeenStatusIcon(isSeen: messageBubble.isMessageSeen),
                  horizontalSpace(8),
                ],
                Text(messageBubble.message,
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: messageBubble.isMe
                            ? Colors.white
                            : ColorsManager.mainGray,
                        fontWeight: FontWeight.w500)),
                horizontalSpace(8),
                Text(
                  TimeFormatter.formatSentTime(messageBubble.messageTime),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 8.sp,
                      color: messageBubble.isMe
                          ? Colors.white.withOpacity(0.7)
                          : Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
