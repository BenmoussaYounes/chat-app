import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app/features/chat/logic/bloc/chat_bloc.dart';

import '../../features/chat/ui/chat_screen.dart';

import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>
                ChatBloc()..add(const ChatEvent.getConversations()),
            child: const ChatScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
