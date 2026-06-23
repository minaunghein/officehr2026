import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/general_data/data/models/company_info_model.dart';
import 'package:office_hr/features/general_data/data/models/default_working_day_model.dart';
import 'package:office_hr/features/general_data/data/models/localized_option_model.dart';
import 'package:office_hr/features/general_data/data/models/nrc_township_model.dart';
import 'package:office_hr/features/general_data/data/models/simple_option_model.dart';

part 'general_data_model.freezed.dart';
part 'general_data_model.g.dart';

/// Main model for general data settings
@freezed
abstract class GeneralDataModel with _$GeneralDataModel {
  const factory GeneralDataModel({
    required CompanyInfoModel company,
    required List<LocalizedOptionModel> gender,
    @JsonKey(name: 'maritalStatus')
    required List<LocalizedOptionModel> maritalStatus,
    required List<LocalizedOptionModel> weightunit,
    required List<LocalizedOptionModel> height,
    @JsonKey(name: 'bloodType') required List<LocalizedOptionModel> bloodType,
    required List<LocalizedOptionModel> color,
    required List<LocalizedOptionModel> nationality,
    @JsonKey(name: 'educationType')
    required List<LocalizedOptionModel> educationType,
    required List<LocalizedOptionModel> nrccoderegions,
    required List<LocalizedOptionModel> religion,
    required List<LocalizedOptionModel> ethnic,
    required List<LocalizedOptionModel> day,
    @JsonKey(name: 'nrcTypes') required List<String> nrcTypes,
    @JsonKey(name: 'nrcRegion') required List<NrcRegionModel> nrcRegion,
    required List<DefaultWorkingDayModel> defaultworkingdays,
    required List<dynamic> nightshiftworkingdays,
    required List<LocalizedOptionModel> empstatus,
    required List<LocalizedOptionModel> country,
    required List<LocalizedOptionModel> city,
    required List<LocalizedOptionModel> state,
    required List<LocalizedOptionModel> township,
    required List<SimpleOptionModel> currencyunit,
    required List<SimpleOptionModel> benefitmode,
    required List<SimpleOptionModel> attendancemode,
    required List<SimpleOptionModel> inboxcategory,
    required List<SimpleOptionModel> status,
    required List<SimpleOptionModel> ottype,
    required List<SimpleOptionModel> actions,
  }) = _GeneralDataModel;

  factory GeneralDataModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralDataModelFromJson(json);
}
