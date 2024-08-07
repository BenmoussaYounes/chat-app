//? we do not have a specific setup for production environment yet :(

import 'package:flutter/material.dart';

import 'chat_app.dart';
import 'core/routing/app_router.dart';

void main() {
  runApp(ChatApp(appRouter: AppRouter()));
}
