import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/general_data/domain/entities/company_info.dart';
import 'package:office_hr/features/general_data/domain/entities/default_working_day.dart';
import 'package:office_hr/features/general_data/domain/entities/localized_option.dart';
import 'package:office_hr/features/general_data/domain/entities/nrc_region.dart';
import 'package:office_hr/features/general_data/domain/entities/simple_option.dart';

part 'general_data.freezed.dart';

/// Entity for general data settings
@freezed
abstract class GeneralData with _$GeneralData {
  const factory GeneralData({
    required CompanyInfo company,
    required List<LocalizedOption> gender,
    required List<LocalizedOption> maritalStatus,
    required List<LocalizedOption> weightUnit,
    required List<LocalizedOption> height,
    required List<LocalizedOption> bloodType,
    required List<LocalizedOption> color,
    required List<LocalizedOption> nationality,
    required List<LocalizedOption> educationType,
    required List<LocalizedOption> nrcCodeRegions,
    required List<LocalizedOption> religion,
    required List<LocalizedOption> ethnic,
    required List<LocalizedOption> day,
    required List<String> nrcTypes,
    required List<NrcRegion> nrcRegions,
    required List<DefaultWorkingDay> defaultWorkingDays,
    required List<dynamic> nightShiftWorkingDays,
    required List<LocalizedOption> employeeStatus,
    required List<LocalizedOption> countries,
    required List<LocalizedOption> cities,
    required List<LocalizedOption> states,
    required List<LocalizedOption> townships,
    required List<SimpleOption> currencyUnits,
    required List<SimpleOption> benefitModes,
    required List<SimpleOption> attendanceModes,
    required List<SimpleOption> inboxCategories,
    required List<SimpleOption> statuses,
    required List<SimpleOption> overtimeTypes,
    required List<SimpleOption> actions,
  }) = _GeneralData;
}
