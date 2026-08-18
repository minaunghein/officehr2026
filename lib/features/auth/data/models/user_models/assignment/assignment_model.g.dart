// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssignmentModel _$AssignmentModelFromJson(Map<String, dynamic> json) =>
    _AssignmentModel(
      companyId: json['company_id'] as String? ?? '',
      roleId: json['role_id'] as String? ?? '',
    );

Map<String, dynamic> _$AssignmentModelToJson(_AssignmentModel instance) =>
    <String, dynamic>{
      'company_id': instance.companyId,
      'role_id': instance.roleId,
    };
