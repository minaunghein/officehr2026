// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordResponseModel _$ChangePasswordResponseModelFromJson(
  Map<String, dynamic> json,
) => _ChangePasswordResponseModel(
  message: _readMessage(json, 'message') as String? ?? '',
  accessToken: _readAccessToken(json, 'accessToken') as String? ?? '',
  refreshToken: _readRefreshToken(json, 'refreshToken') as String? ?? '',
  session: _readSession(json, 'session') == null
      ? null
      : AuthSessionModel.fromJson(
          _readSession(json, 'session') as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$ChangePasswordResponseModelToJson(
  _ChangePasswordResponseModel instance,
) => <String, dynamic>{
  'message': instance.message,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
  'session': instance.session,
};
