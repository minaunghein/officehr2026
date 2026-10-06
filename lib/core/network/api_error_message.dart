import 'package:office_hr/core/network/api_exception.dart';

String getUserFriendlyError(Object error) {
  if (error is ApiException) return error.message;

  return 'Something went wrong. Please try again.';
}
