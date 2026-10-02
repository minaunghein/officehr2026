// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uploaded_file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UploadedFileModel _$UploadedFileModelFromJson(Map<String, dynamic> json) =>
    _UploadedFileModel(
      id: readMongoId(json, 'id') as String? ?? '',
      fileName: json['file_name'] as String? ?? '',
      fileSize: (json['file_size'] as num?)?.toInt() ?? 0,
      fileType: json['file_type'] as String? ?? '',
      mimeType: json['mime_type'] as String? ?? '',
      originalName: json['original_name'] as String? ?? '',
    );

Map<String, dynamic> _$UploadedFileModelToJson(_UploadedFileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'file_name': instance.fileName,
      'file_size': instance.fileSize,
      'file_type': instance.fileType,
      'mime_type': instance.mimeType,
      'original_name': instance.originalName,
    };
