// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponseModel _$LoginResponseModelFromJson(Map<String, dynamic> json) =>
    _LoginResponseModel(
      accessToken: _readAccessToken(json, 'accessToken') as String? ?? '',
      refreshToken: _readRefreshToken(json, 'refreshToken') as String? ?? '',
      session: AuthSessionModel.fromJson(
        _readSession(json, 'session') as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$LoginResponseModelToJson(_LoginResponseModel instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'session': instance.session,
    };
