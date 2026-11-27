// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AnnouncementModel _$AnnouncementModelFromJson(Map<String, dynamic> json) =>
    _AnnouncementModel(
      id: _readId(json, 'id') as String? ?? '',
      title: json['title'] as String? ?? '',
      titleMm: json['title_mm'] as String? ?? '',
      content: json['content'] as String? ?? '',
      imageFileId: json['image_file_id'] as String?,
      status: json['status'] as String? ?? 'PUBLISHED',
      publishedAt: parseLocalDateTime(json['published_at'] as String?),
      createdAt: parseLocalDateTime(json['createdAt'] as String?),
      updatedAt: parseLocalDateTime(json['updatedAt'] as String?),
      branches:
          (json['branches'] as List<dynamic>?)
              ?.map(
                (e) =>
                    AnnouncementBranchModel.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AnnouncementModelToJson(_AnnouncementModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title_mm': instance.titleMm,
      'content': instance.content,
      'image_file_id': instance.imageFileId,
      'status': instance.status,
      'published_at': instance.publishedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'branches': instance.branches,
    };

_AnnouncementBranchModel _$AnnouncementBranchModelFromJson(
  Map<String, dynamic> json,
) => _AnnouncementBranchModel(
  id: _readId(json, 'id') as String? ?? '',
  title: json['title'] as String? ?? '',
  code: json['code'] as String? ?? '',
);

Map<String, dynamic> _$AnnouncementBranchModelToJson(
  _AnnouncementBranchModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'code': instance.code,
};
