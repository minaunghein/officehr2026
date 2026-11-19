import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/announcement/domain/entities/announcement.dart';

part 'announcement_model.freezed.dart';
part 'announcement_model.g.dart';

@freezed
abstract class AnnouncementModel with _$AnnouncementModel {
  const AnnouncementModel._();

  const factory AnnouncementModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String title,
    @JsonKey(name: 'title_mm') @Default('') String titleMm,
    @Default('') String content,
    @JsonKey(name: 'image_file_id') String? imageFileId,
    @Default('PUBLISHED') String status,
    @JsonKey(name: 'published_at', fromJson: parseLocalDateTime)
    DateTime? publishedAt,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt,
    @Default([]) List<AnnouncementBranchModel> branches,
  }) = _AnnouncementModel;

  factory AnnouncementModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementModelFromJson(json);

  Announcement toEntity(String baseUrl) {
    final fileId = imageFileId?.trim() ?? '';
    return Announcement(
      id: id,
      title: title,
      titleMm: titleMm,
      content: content,
      imageFileId: fileId,
      imageUrl: fileId.isEmpty ? '' : '$baseUrl/api/v1/files/$fileId',
      status: AnnouncementStatus.fromValue(status),
      branchTitles: branches
          .map((branch) => branch.title)
          .where((title) => title.trim().isNotEmpty)
          .toList(),
      publishedAt: publishedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

@freezed
abstract class AnnouncementBranchModel with _$AnnouncementBranchModel {
  const factory AnnouncementBranchModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String title,
    @Default('') String code,
  }) = _AnnouncementBranchModel;

  factory AnnouncementBranchModel.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementBranchModelFromJson(json);
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
