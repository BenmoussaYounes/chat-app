import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/core/theming/colors_manager.dart';
import 'package:mobile_app/features/conversation/logic/bloc/conversation_bloc.dart';

import '../../../../core/widgets/app_text_form_field.dart';

class SendNewMessageInputField extends StatefulWidget {
  const SendNewMessageInputField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<SendNewMessageInputField> createState() =>
      _SendNewMessageInputFieldState();
}

class _SendNewMessageInputFieldState extends State<SendNewMessageInputField> {
  bool canSend = false;

  void sendMessage() {
    context.read<ConversationBloc>().add(
          const ConversationEvent.sendMessage(),
        );
    setState(() {
      canSend = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: widget.controller,
      hintText: 'Type a message...',
      onFieldSubmitted: canSend ? (_) => sendMessage() : null,
      suffixIcon: IconButton(
        onPressed: canSend ? sendMessage : null,
        icon: const Icon(Icons.send),
        color: ColorsManager.darkBlue,
      ),
      onChanged: (text) {
        if (text.trim().isNotEmpty) {
          setState(() {
            canSend = true;
          });
        } else {
          setState(() {
            canSend = false;
          });
        }
      },
    );
  }
}
