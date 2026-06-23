// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SimpleOptionModel _$SimpleOptionModelFromJson(Map<String, dynamic> json) =>
    _SimpleOptionModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$SimpleOptionModelToJson(_SimpleOptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'unit': instance.unit,
    };
