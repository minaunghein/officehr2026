import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_holiday.freezed.dart';

@freezed
abstract class PublicHoliday with _$PublicHoliday {
  const PublicHoliday._();

  const factory PublicHoliday({
    required String id,
    @Default('') String companyId,
    @Default('') String title,
    @Default('') String titleMm,
    String? date,
    @Default('') String type,
    @Default(true) bool isActive,
    @Default(false) bool deleted,
  }) = _PublicHoliday;

  String get displayTitle => title.isNotEmpty
      ? title
      : (titleMm.isNotEmpty ? titleMm : 'Public Holiday');

  bool get hasMyanmarTitle => titleMm.isNotEmpty && titleMm != title;
}
