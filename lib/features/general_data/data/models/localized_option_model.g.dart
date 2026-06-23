// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localized_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocalizedOptionModel _$LocalizedOptionModelFromJson(
  Map<String, dynamic> json,
) => _LocalizedOptionModel(
  id: json['id'],
  titles: (json['titles'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$LocalizedOptionModelToJson(
  _LocalizedOptionModel instance,
) => <String, dynamic>{'id': instance.id, 'titles': instance.titles};
