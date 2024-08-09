import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/core/theming/colors_manager.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class ChatApp extends StatelessWidget {
  final AppRouter appRouter;
  const ChatApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: MaterialApp(
          title: 'Chat App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: ColorsManager.mainGray,
                dynamicSchemeVariant: DynamicSchemeVariant.fidelity),
            scaffoldBackgroundColor: Colors.white,
            textTheme: GoogleFonts.poppinsTextTheme(),
          ),
          debugShowCheckedModeBanner: true,
          initialRoute: Routes.chatScreen,
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
