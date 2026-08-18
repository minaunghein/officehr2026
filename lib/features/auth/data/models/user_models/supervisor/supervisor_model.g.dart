// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supervisor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SupervisorModel _$SupervisorModelFromJson(Map<String, dynamic> json) =>
    _SupervisorModel(
      id: _readId(json, 'id') as String? ?? '',
      userId: json['user_id'] as String? ?? '',
    );

Map<String, dynamic> _$SupervisorModelToJson(_SupervisorModel instance) =>
    <String, dynamic>{'id': instance.id, 'user_id': instance.userId};
