import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/public_holiday/data/models/public_holiday_model.dart';
import 'package:office_hr/features/public_holiday/domain/entities/public_holiday.dart';

extension PublicHolidayMapper on PublicHolidayModel {
  PublicHoliday toEntity() {
    return PublicHoliday(
      id: id,
      companyId: companyId,
      title: title,
      titleMm: titleMm,
      date: normalizeLocalDateTimeString(date),
      type: type,
      isActive: isActive,
      deleted: deleted,
    );
  }
}
