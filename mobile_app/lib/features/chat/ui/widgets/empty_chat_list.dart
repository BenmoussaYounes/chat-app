import 'package:flutter/material.dart';
import 'package:mobile_app/core/theming/colors_manager.dart';

class EmptyChatList extends StatelessWidget {
  const EmptyChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No chats yet\n Tap on the + button to start a new chat',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: ColorsManager.mainGray,
            ),
      ),
    );
  }
}
