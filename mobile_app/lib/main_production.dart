//? we do not have a specific setup for production environment yet :(

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/core/di/dependency_injection.dart';
import 'package:mobile_app/firebase_options.dart';

import 'chat_app.dart';
import 'core/routing/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupGetIt();

  runApp(ChatApp(appRouter: AppRouter()));
}
