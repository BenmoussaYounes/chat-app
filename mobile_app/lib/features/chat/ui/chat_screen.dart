import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/features/chat/ui/widgets/app_navigation_bar.dart';
import 'package:mobile_app/features/chat/ui/widgets/empty_chat_list.dart';
import 'package:mobile_app/features/chat/ui/widgets/error_occured.dart';

import '../logic/bloc/chat_bloc.dart';
import 'widgets/chat_list_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: () async => context
            .read<ChatBloc>()
            .add(ChatEvent.refreshConversations(context)),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              return state.maybeWhen(
                changeSelectedPageIndex: (_) =>
                    const Center(child: CircularProgressIndicator()),
                loaded: (conversations) => conversations.isNotEmpty
                    ? ListView.builder(
                        itemCount: conversations.length,
                        itemBuilder: (context, index) => ChatListTile(
                          chatTile: conversations[index],
                        ),
                      )
                    : const EmptyChatList(),
                error: (error) => ErrorOccurred(
                    error,
                    () => context
                        .read<ChatBloc>()
                        .add(ChatEvent.refreshConversations(context))),
                orElse: () => const Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ),
      ),
      floatingActionButton: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const SizedBox.shrink(),
            loaded: (_) => FloatingActionButton(
              onPressed: () => context.read<ChatBloc>().add(
                    ChatEvent.startNewConversation(context),
                  ),
              child: const Icon(Icons.add),
            ),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<ChatBloc, ChatState>(
        buildWhen: (previous, current) => current is ChangeSelectedPageIndex,
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const AppNavigationBar(selectedIndex: 0),
            changeSelectedPageIndex: (selectedPageIndex) {
              return AppNavigationBar(
                selectedIndex: selectedPageIndex,
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
