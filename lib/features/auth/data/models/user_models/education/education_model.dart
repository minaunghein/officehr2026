import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/education/education.dart';

part 'education_model.freezed.dart';
part 'education_model.g.dart';

@freezed
abstract class EducationModel with _$EducationModel {
  const EducationModel._();

  const factory EducationModel({
    @Default('') String school,
    @Default('') String degree,
    @Default('') String field,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @Default('') String description,
  }) = _EducationModel;

  factory EducationModel.fromJson(Map<String, dynamic> json) =>
      _$EducationModelFromJson(json);

  Education toEntity() => Education(
    school: school,
    degree: degree,
    field: field,
    startDate: normalizeLocalDateTimeString(startDate),
    endDate: normalizeLocalDateTimeString(endDate),
    description: description,
  );
}
