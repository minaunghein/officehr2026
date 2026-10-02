import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';

part 'change_password_result.freezed.dart';

@freezed
abstract class ChangePasswordResult with _$ChangePasswordResult {
  const ChangePasswordResult._();

  const factory ChangePasswordResult({
    required String message,
    @Default('') String accessToken,
    @Default('') String refreshToken,
    AuthSession? session,
  }) = _ChangePasswordResult;

  bool get hasAccessToken => accessToken.isNotEmpty;

  bool get hasRefreshToken => refreshToken.isNotEmpty;

  bool get hasSession => session != null;
}
