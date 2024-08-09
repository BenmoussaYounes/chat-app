import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'chat_app.dart';
import 'core/routing/app_router.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(ChatApp(appRouter: AppRouter()));
}
