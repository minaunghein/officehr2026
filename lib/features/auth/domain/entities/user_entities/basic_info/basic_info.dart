import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/nrc/nrc.dart';

part 'basic_info.freezed.dart';

@freezed
abstract class BasicInfo with _$BasicInfo {
  const factory BasicInfo({
    required String firstName,
    required String lastName,
    Nrc? nrc,
    required String firstNameMm,
    required String lastNameMm,
    required String maritalStatus,
    required String gender,
    required String bloodType,
    required String nationality,
    String? dateOfBirth,
    int? height,
    int? weight,
    required String religion,
    required String ethnicity,
  }) = _BasicInfo;
}
