import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../logic/bloc/chat_bloc.dart';

import 'widgets/app_navigation_bar.dart';
import 'widgets/chat_list_tile.dart';
import 'widgets/chat_screen_loading_shimmer.dart';
import 'widgets/empty_chat_list.dart';
import 'widgets/error_occured.dart';

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
                    const ChatScreenLoadingShimmer(),
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
                orElse: () => const ChatScreenLoadingShimmer(),
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
