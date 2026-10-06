// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nrc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NrcModel _$NrcModelFromJson(Map<String, dynamic> json) => _NrcModel(
  region: json['region'] as String? ?? '',
  township: json['township'] as String? ?? '',
  type: json['type'] as String? ?? '',
  numbers: json['numbers'] as String? ?? '',
);

Map<String, dynamic> _$NrcModelToJson(_NrcModel instance) => <String, dynamic>{
  'region': instance.region,
  'township': instance.township,
  'type': instance.type,
  'numbers': instance.numbers,
};
