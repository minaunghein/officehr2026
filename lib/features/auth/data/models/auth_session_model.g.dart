// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_session_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthSessionModel _$AuthSessionModelFromJson(Map<String, dynamic> json) =>
    _AuthSessionModel(
      user: json['user'] == null
          ? const UserModel()
          : UserModel.fromJson(json['user'] as Map<String, dynamic>),
      activeCompany: json['active_company'] == null
          ? const CompanyModel()
          : CompanyModel.fromJson(
              json['active_company'] as Map<String, dynamic>,
            ),
      companies:
          (json['companies'] as List<dynamic>?)
              ?.map((e) => CompanyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CompanyModel>[],
      assignments:
          (json['assignments'] as List<dynamic>?)
              ?.map((e) => AssignmentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AssignmentModel>[],
      role: json['role'] == null
          ? const RoleModel()
          : RoleModel.fromJson(json['role'] as Map<String, dynamic>),
      permissions:
          (json['permissions'] as List<dynamic>?)
              ?.map((e) => PermissionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PermissionModel>[],
    );

Map<String, dynamic> _$AuthSessionModelToJson(_AuthSessionModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'active_company': instance.activeCompany,
      'companies': instance.companies,
      'assignments': instance.assignments,
      'role': instance.role,
      'permissions': instance.permissions,
    };
