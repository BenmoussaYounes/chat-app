import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/core/theming/colors_manager.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onFieldSubmitted,
    this.onChanged,
    this.suffixIcon,
  });
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: ColorsManager.lighterGray,
        contentPadding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 16.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        suffixIcon: suffixIcon,
      ),
      textInputAction: TextInputAction.send,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: onChanged,
    );
  }
}
