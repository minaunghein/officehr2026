import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_holiday.freezed.dart';

@freezed
abstract class PublicHoliday with _$PublicHoliday {
  const factory PublicHoliday({
    required String id,
    required String companyId,
    String? holidayDate,
    @Default([]) List<String> holidayName,
    String? remarks,
    @Default([]) List<dynamic> tags,
  }) = _PublicHoliday;
}
