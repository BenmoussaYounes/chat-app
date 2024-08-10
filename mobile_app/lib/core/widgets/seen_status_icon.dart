import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors_manager.dart';

class SeenStatusIcon extends StatelessWidget {
  const SeenStatusIcon({super.key, required this.isSeen});

  final bool isSeen;

  @override
  Widget build(BuildContext context) {
    return Icon(
      isSeen ? Icons.done_all : Icons.check,
      size: 16.sp,
      color: isSeen ? ColorsManager.mainGreen : Colors.grey,
    );
  }
}
