import 'package:flutter/material.dart';

class EmptyConversationList extends StatelessWidget {
  const EmptyConversationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No messages yet',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.grey,
              )),
    );
  }
}
