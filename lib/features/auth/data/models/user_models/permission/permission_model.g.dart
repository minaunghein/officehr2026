// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permission_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PermissionModel _$PermissionModelFromJson(Map<String, dynamic> json) =>
    _PermissionModel(
      resource: json['resource'] as String? ?? '',
      action: json['action'] as String? ?? '',
      scope: json['scope'] as String? ?? '',
    );

Map<String, dynamic> _$PermissionModelToJson(_PermissionModel instance) =>
    <String, dynamic>{
      'resource': instance.resource,
      'action': instance.action,
      'scope': instance.scope,
    };
