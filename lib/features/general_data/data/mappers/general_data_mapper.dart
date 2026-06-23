import 'package:office_hr/features/general_data/data/models/company_info_model.dart';
import 'package:office_hr/features/general_data/data/models/default_working_day_model.dart';
import 'package:office_hr/features/general_data/data/models/general_data_model.dart';
import 'package:office_hr/features/general_data/data/models/localized_option_model.dart';
import 'package:office_hr/features/general_data/data/models/nrc_township_model.dart';
import 'package:office_hr/features/general_data/data/models/simple_option_model.dart';
import 'package:office_hr/features/general_data/domain/entities/company_info.dart';
import 'package:office_hr/features/general_data/domain/entities/default_working_day.dart';
import 'package:office_hr/features/general_data/domain/entities/general_data.dart';
import 'package:office_hr/features/general_data/domain/entities/localized_option.dart';
import 'package:office_hr/features/general_data/domain/entities/nrc_region.dart';
import 'package:office_hr/features/general_data/domain/entities/simple_option.dart';

extension LocalizedOptionModelX on LocalizedOptionModel {
  LocalizedOption toEntity() {
    return LocalizedOption(id: id, titles: titles);
  }
}

extension NrcRegionModelX on NrcRegionModel {
  NrcRegion toEntity() {
    return NrcRegion(
      regionCodeId: nrcregioncodeid,
      regionCodes: nrcregioncodes,
      townships: townships,
    );
  }
}

extension DefaultWorkingDayModelX on DefaultWorkingDayModel {
  DefaultWorkingDay toEntity() {
    return DefaultWorkingDay(
      dayId: dayid,
      day: day,
      workStart: workstart,
      workEnd: workend,
      restStart: reststart,
      restEnd: restend,
      otStart: otstart,
      late1Start: late1start,
      late2Start: late2start,
      late3Start: late3start,
      halfDayStart: halfdaystart,
      absStart: absstart,
      isOffDay: offday,
      isWorkingDay: workingday,
    );
  }
}

extension CompanyInfoModelX on CompanyInfoModel {
  CompanyInfo toEntity() {
    return CompanyInfo(
      shortCode: sc,
      logo: logo,
      name: name,
      street: street,
      street1: street1,
      cityId: city,
      stateId: state,
      countryId: country,
      zipCode: zip,
      sequence: sequence,
      isActive: active,
    );
  }
}

extension SimpleOptionModelX on SimpleOptionModel {
  SimpleOption toEntity() {
    return SimpleOption(id: id, title: title, unit: unit);
  }
}

extension GeneralDataModelX on GeneralDataModel {
  GeneralData toEntity() {
    return GeneralData(
      company: company.toEntity(),
      gender: gender.map((e) => e.toEntity()).toList(),
      maritalStatus: maritalStatus.map((e) => e.toEntity()).toList(),
      weightUnit: weightunit.map((e) => e.toEntity()).toList(),
      height: height.map((e) => e.toEntity()).toList(),
      bloodType: bloodType.map((e) => e.toEntity()).toList(),
      color: color.map((e) => e.toEntity()).toList(),
      nationality: nationality.map((e) => e.toEntity()).toList(),
      educationType: educationType.map((e) => e.toEntity()).toList(),
      nrcCodeRegions: nrccoderegions.map((e) => e.toEntity()).toList(),
      religion: religion.map((e) => e.toEntity()).toList(),
      ethnic: ethnic.map((e) => e.toEntity()).toList(),
      day: day.map((e) => e.toEntity()).toList(),
      nrcTypes: nrcTypes,
      nrcRegions: nrcRegion.map((e) => e.toEntity()).toList(),
      defaultWorkingDays: defaultworkingdays.map((e) => e.toEntity()).toList(),
      nightShiftWorkingDays: nightshiftworkingdays,
      employeeStatus: empstatus.map((e) => e.toEntity()).toList(),
      countries: country.map((e) => e.toEntity()).toList(),
      cities: city.map((e) => e.toEntity()).toList(),
      states: state.map((e) => e.toEntity()).toList(),
      townships: township.map((e) => e.toEntity()).toList(),
      currencyUnits: currencyunit.map((e) => e.toEntity()).toList(),
      benefitModes: benefitmode.map((e) => e.toEntity()).toList(),
      attendanceModes: attendancemode.map((e) => e.toEntity()).toList(),
      inboxCategories: inboxcategory.map((e) => e.toEntity()).toList(),
      statuses: status.map((e) => e.toEntity()).toList(),
      overtimeTypes: ottype.map((e) => e.toEntity()).toList(),
      actions: actions.map((e) => e.toEntity()).toList(),
    );
  }
}
