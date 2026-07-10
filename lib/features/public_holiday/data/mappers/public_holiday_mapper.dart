import 'package:office_hr/features/public_holiday/data/models/public_holiday_model.dart';
import 'package:office_hr/features/public_holiday/domain/entities/public_holiday.dart';

extension PublicHolidayMapper on PublicHolidayModel {
  PublicHoliday toEntity() {
    return PublicHoliday(
      id: id,
      companyId: company,
      holidayDate: holidaydate,
      holidayName: holidayname,
      remarks: remarks,
      tags: tags,
    );
  }
}
