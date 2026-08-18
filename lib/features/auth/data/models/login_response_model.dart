import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/data/models/auth_session_model.dart';
import 'package:office_hr/features/auth/domain/entities/login_response.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
abstract class LoginResponseModel with _$LoginResponseModel {
  const LoginResponseModel._();

  const factory LoginResponseModel({
    @JsonKey(readValue: _readAccessToken) @Default('') String accessToken,
    @JsonKey(readValue: _readRefreshToken) @Default('') String refreshToken,
    @JsonKey(readValue: _readSession) required AuthSessionModel session,
  }) = _LoginResponseModel;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(_payload(json));

  LoginResponse toEntity() => LoginResponse(
    session: session.toEntity(),
    accessToken: accessToken,
    refreshToken: refreshToken,
  );
}

Object? _readAccessToken(Map<dynamic, dynamic> json, String key) =>
    json['accessToken'] ?? json['access_token'];

Object? _readRefreshToken(Map<dynamic, dynamic> json, String key) =>
    json['refreshToken'] ?? json['refresh_token'];

Object? _readSession(Map<dynamic, dynamic> json, String key) =>
    json['session'] ?? const <String, dynamic>{};

Map<String, dynamic> _payload(Map<String, dynamic> json) {
  final data = json['data'];
  return data is Map<String, dynamic> ? data : json;
}
