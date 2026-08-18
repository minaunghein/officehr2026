// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
  id: json['id'] as String? ?? '',
  username: json['username'] as String? ?? '',
  email: json['email'] as String? ?? '',
  employee: json['employee'] == null
      ? null
      : EmployeeModel.fromJson(json['employee'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'employee': instance.employee,
    };
