import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/basic_info/basic_info.dart';
import 'package:office_hr/features/auth/data/models/user_models/nrc/nrc_model.dart';

part 'basic_info_model.freezed.dart';
part 'basic_info_model.g.dart';

@freezed
abstract class BasicInfoModel with _$BasicInfoModel {
  const BasicInfoModel._();

  const factory BasicInfoModel({
    @JsonKey(name: 'first_name') @Default('') String firstName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    NrcModel? nrc,
    @JsonKey(name: 'first_name_mm') @Default('') String firstNameMm,
    @JsonKey(name: 'last_name_mm') @Default('') String lastNameMm,
    @JsonKey(name: 'marital_status') @Default('') String maritalStatus,
    @Default('') String gender,
    @JsonKey(name: 'blood_type') @Default('') String bloodType,
    @Default('') String nationality,
    @JsonKey(name: 'date_of_birth') String? dateOfBirth,
    int? height,
    int? weight,
    @Default('') String religion,
    @Default('') String ethnicity,
  }) = _BasicInfoModel;

  factory BasicInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoModelFromJson(json);

  BasicInfo toEntity() => BasicInfo(
    firstName: firstName,
    lastName: lastName,
    nrc: nrc?.toEntity(),
    firstNameMm: firstNameMm,
    lastNameMm: lastNameMm,
    maritalStatus: maritalStatus,
    gender: gender,
    bloodType: bloodType,
    nationality: nationality,
    dateOfBirth: normalizeLocalDateTimeString(dateOfBirth),
    height: height,
    weight: weight,
    religion: religion,
    ethnicity: ethnicity,
  );
}
