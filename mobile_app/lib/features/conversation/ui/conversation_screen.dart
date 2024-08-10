import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/core/enums/user_enums.dart';

import 'package:mobile_app/core/widgets/page_loading_indicator.dart';
import 'package:mobile_app/features/conversation/ui/widgets/empty_conversation_list.dart';

import 'package:mobile_app/features/conversation/ui/widgets/message_bubble.dart';

import '../logic/bloc/conversation_bloc.dart';
import 'widgets/send_new_message_input_field.dart';

class ConversationScreen extends StatefulWidget {
  const ConversationScreen({super.key, required this.user});

  final User user;

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  late TextEditingController newMessageController;

  @override
  void initState() {
    newMessageController =
        context.read<ConversationBloc>().newMessageController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.user.value,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w),
          child: BlocBuilder<ConversationBloc, ConversationState>(
            builder: (context, state) {
              return state.maybeWhen(
                initial: () => const PageLoadingIndicator(),
                loaded: (messages) => messages.isNotEmpty
                    ? ListView.builder(
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          return MessageBubble(
                            messageBubble: messages[index],
                          );
                        },
                      )
                    : const EmptyConversationList(),
                orElse: () => const SizedBox.shrink(),
              );
            },
          )),
      bottomNavigationBar: BlocBuilder<ConversationBloc, ConversationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox.shrink(),
            loaded: (_) => Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  child: SendNewMessageInputField(
                      controller: newMessageController)),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    newMessageController.dispose();
    super.dispose();
  }
}
