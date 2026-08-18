import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';

part 'login_response.freezed.dart';

@freezed
abstract class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required AuthSession session,
    required String accessToken,
    required String refreshToken,
  }) = _LoginResponse;
}
