import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

@freezed
abstract class AuthUser with _$AuthUser {
  const AuthUser._();

  const factory AuthUser({
    required String userId,
    required String accessToken,
    @Default('') String refreshToken,
    required String tokenType,
    required DateTime expiresAt,
  }) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);

  bool get isTokenExpired => DateTime.now().isAfter(expiresAt);

  bool get isTokenValid => !isTokenExpired;

  bool get hasRefreshToken => refreshToken.isNotEmpty;
}
