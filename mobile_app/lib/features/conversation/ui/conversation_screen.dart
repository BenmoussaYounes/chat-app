import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/enums/user_enums.dart';
import '../../../core/helpers/extensions.dart';
import '../../../core/widgets/page_loading_indicator.dart';
import '../../../core/widgets/error_occurred.dart';
import '../logic/bloc/conversation_bloc.dart';

import 'widgets/widgets.dart';

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
          widget.user.value.toUpperCaseFirstLetter(),
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
                error: (error) => ErrorOccurred(
                    error,
                    () => context
                        .read<ConversationBloc>()
                        .add(const ConversationEvent.refetchMessages())),
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
