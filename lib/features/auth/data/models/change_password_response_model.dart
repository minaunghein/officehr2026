import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/data/models/auth_session_model.dart';
import 'package:office_hr/features/auth/domain/entities/change_password_result.dart';

part 'change_password_response_model.freezed.dart';
part 'change_password_response_model.g.dart';

@freezed
abstract class ChangePasswordResponseModel with _$ChangePasswordResponseModel {
  const ChangePasswordResponseModel._();

  const factory ChangePasswordResponseModel({
    @JsonKey(readValue: _readMessage) @Default('') String message,
    @JsonKey(readValue: _readAccessToken) @Default('') String accessToken,
    @JsonKey(readValue: _readRefreshToken) @Default('') String refreshToken,
    @JsonKey(readValue: _readSession) AuthSessionModel? session,
  }) = _ChangePasswordResponseModel;

  factory ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordResponseModelFromJson(_payload(json));

  ChangePasswordResult toEntity() => ChangePasswordResult(
    message: message.trim().isEmpty
        ? 'Password changed successfully.'
        : message.trim(),
    accessToken: accessToken,
    refreshToken: refreshToken,
    session: session?.toEntity(),
  );
}

Object? _readMessage(Map<dynamic, dynamic> json, String key) {
  final value = json['message'];
  if (value is List && value.isNotEmpty) return value.first.toString();
  return value;
}

Object? _readAccessToken(Map<dynamic, dynamic> json, String key) =>
    json['accessToken'] ?? json['access_token'];

Object? _readRefreshToken(Map<dynamic, dynamic> json, String key) =>
    json['refreshToken'] ?? json['refresh_token'];

Object? _readSession(Map<dynamic, dynamic> json, String key) => json['session'];

Map<String, dynamic> _payload(Map<String, dynamic> json) {
  final data = json['data'];
  return data is Map<String, dynamic>
      ? <String, dynamic>{...json, ...data}
      : json;
}
