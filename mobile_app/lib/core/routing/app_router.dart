import 'package:flutter/material.dart';
import 'package:mobile_app/features/chat/ui/chat_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.chatScreen:
        return MaterialPageRoute(
          builder: (_) => const ChatScreen(),
        );

      default:
        return null;
    }
  }
}
