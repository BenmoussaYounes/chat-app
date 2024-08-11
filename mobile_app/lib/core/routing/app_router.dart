import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/chat/logic/bloc/chat_bloc.dart';
import '../../features/chat/ui/chat_screen.dart';
import '../../features/conversation/logic/bloc/conversation_bloc.dart';
import '../../features/conversation/ui/conversation_screen.dart';
import '../di/dependency_injection.dart';
import '../enums/user_enums.dart';

import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final args = settings.arguments as Map<String, dynamic>?;
    switch (settings.name) {
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                getIt<ChatBloc>()..add(ChatEvent.getConversations(context)),
            child: const ChatScreen(),
          ),
        );

      case Routes.conversationScreen:
        if (args == null) {
          return null;
        }
        final String conversationId = args['conversationId'];
        final String userName = args['userName'];
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ConversationBloc>()
              ..add(ConversationEvent.getMessages(
                  conversationId, User.fromString(userName))),
            child: ConversationScreen(user: User.fromString(userName)),
          ),
        );

      default:
        return null;
    }
  }
}
