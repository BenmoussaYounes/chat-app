import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/core/theming/colors_manager.dart';

class LeadingCircleAvatar extends StatelessWidget {
  const LeadingCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24.r,
      backgroundColor: Colors.white,
      child: const Icon(
        Icons.person,
        color: ColorsManager.gray,
      ),
    );
  }
}
