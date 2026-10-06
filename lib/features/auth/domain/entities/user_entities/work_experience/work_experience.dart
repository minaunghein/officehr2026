import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_experience.freezed.dart';

@freezed
abstract class WorkExperience with _$WorkExperience {
  const factory WorkExperience({
    required String company,
    required String position,
    String? startDate,
    String? endDate,
    required String description,
  }) = _WorkExperience;
}
