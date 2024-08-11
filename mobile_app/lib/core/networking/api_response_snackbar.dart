import 'package:flutter/material.dart';

import '../theming/colors_manager.dart';

class ApiResponseSnackBar {
  static showFailureSnackBar(BuildContext context, String errorMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(errorMessage),
        backgroundColor: Colors.red,
      ),
    );
  }

  static showSuccessSnackBar(BuildContext context, String successMessage) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(successMessage),
        backgroundColor: ColorsManager.mainGreen,
      ),
    );
  }
}
