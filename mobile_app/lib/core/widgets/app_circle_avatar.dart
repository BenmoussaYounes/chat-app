import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCircleAvatar extends StatelessWidget {
  const AppCircleAvatar(
      {super.key, required this.radius, required this.avatar});
  final double radius;
  final Widget avatar;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius.r,
      backgroundColor: Colors.white,
      child: avatar,
    );
  }
}
