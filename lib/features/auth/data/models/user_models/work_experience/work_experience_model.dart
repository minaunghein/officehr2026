import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/work_experience/work_experience.dart';

part 'work_experience_model.freezed.dart';
part 'work_experience_model.g.dart';

@freezed
abstract class WorkExperienceModel with _$WorkExperienceModel {
  const WorkExperienceModel._();

  const factory WorkExperienceModel({
    @Default('') String company,
    @Default('') String position,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @Default('') String description,
  }) = _WorkExperienceModel;

  factory WorkExperienceModel.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceModelFromJson(json);

  WorkExperience toEntity() => WorkExperience(
    company: company,
    position: position,
    startDate: normalizeLocalDateTimeString(startDate),
    endDate: normalizeLocalDateTimeString(endDate),
    description: description,
  );
}
