import 'package:flutter/material.dart';

import '../../../../core/theming/colors_manager.dart';
import '../../../../core/widgets/app_circle_avatar.dart';

class LeadingCircleAvatar extends StatelessWidget {
  const LeadingCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppCircleAvatar(
        radius: 24,
        avatar: Icon(
          Icons.person,
          color: ColorsManager.mainGray,
        ));
  }
}
