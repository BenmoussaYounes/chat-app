import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/networking/api_error_model.dart';

class ErrorOccurred extends StatelessWidget {
  const ErrorOccurred(this.apiErrorModel, this.onRefetch, {super.key});
  final ApiErrorModel apiErrorModel;
  final void Function()? onRefetch;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            apiErrorModel.message,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          verticalSpace(12),
          TextButton(
            onPressed: onRefetch,
            child: Text('Retry',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
