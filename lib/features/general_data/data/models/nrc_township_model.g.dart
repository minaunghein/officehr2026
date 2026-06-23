// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nrc_township_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NrcRegionModel _$NrcRegionModelFromJson(Map<String, dynamic> json) =>
    _NrcRegionModel(
      nrcregioncodeid: (json['nrcregioncodeid'] as num).toInt(),
      nrcregioncodes: (json['nrcregioncodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      townships: (json['townships'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$NrcRegionModelToJson(_NrcRegionModel instance) =>
    <String, dynamic>{
      'nrcregioncodeid': instance.nrcregioncodeid,
      'nrcregioncodes': instance.nrcregioncodes,
      'townships': instance.townships,
    };
