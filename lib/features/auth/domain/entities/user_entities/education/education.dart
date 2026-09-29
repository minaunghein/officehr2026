import 'package:freezed_annotation/freezed_annotation.dart';

part 'education.freezed.dart';

@freezed
abstract class Education with _$Education {
  const factory Education({
    required String school,
    required String degree,
    required String field,
    String? startDate,
    String? endDate,
    required String description,
  }) = _Education;
}
