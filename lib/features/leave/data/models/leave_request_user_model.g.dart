// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveRequestUserModel _$LeaveRequestUserModelFromJson(
  Map<String, dynamic> json,
) => _LeaveRequestUserModel(
  id: readMongoId(json, 'id') as String? ?? '',
  username: json['username'] as String? ?? '',
  email: json['email'] as String? ?? '',
);

Map<String, dynamic> _$LeaveRequestUserModelToJson(
  _LeaveRequestUserModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'email': instance.email,
};
