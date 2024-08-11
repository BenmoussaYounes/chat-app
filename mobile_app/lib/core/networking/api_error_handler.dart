import 'package:cloud_firestore/cloud_firestore.dart';

import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is FirebaseException) {
      switch (error.code) {
        case 'permission-denied':
          return ApiErrorModel(message: 'Permission Denied', statusCode: 403);
        case 'not-found':
          return ApiErrorModel(message: 'Not Found', statusCode: 404);
        case 'unavailable':
          return ApiErrorModel(message: 'Service Unavailable', statusCode: 503);
        default:
          return ApiErrorModel(
              message: 'Something went wrong', statusCode: 500);
      }
    } else {
      return ApiErrorModel(message: 'Something went wrong', statusCode: 500);
    }
  }
}
