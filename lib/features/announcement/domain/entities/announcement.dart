import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';

enum AnnouncementStatus {
  draft('DRAFT'),
  published('PUBLISHED');

  const AnnouncementStatus(this.value);

  final String value;

  String get label => switch (this) {
    AnnouncementStatus.draft => 'Draft',
    AnnouncementStatus.published => 'Published',
  };

  static AnnouncementStatus fromValue(String? value) {
    return AnnouncementStatus.values.firstWhere(
      (status) => status.value == value?.trim().toUpperCase(),
      orElse: () => AnnouncementStatus.published,
    );
  }
}

@freezed
abstract class Announcement with _$Announcement {
  const Announcement._();

  const factory Announcement({
    @Default('') String id,
    @Default('') String title,
    @Default('') String titleMm,
    @Default('') String content,
    @Default('') String imageFileId,
    @Default('') String imageUrl,
    @Default(AnnouncementStatus.published) AnnouncementStatus status,
    @Default([]) List<String> branchTitles,
    DateTime? publishedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Announcement;

  bool get isDraft => status == AnnouncementStatus.draft;

  bool get hasImage => imageUrl.trim().isNotEmpty;

  DateTime? get displayDate => publishedAt ?? createdAt;
}
