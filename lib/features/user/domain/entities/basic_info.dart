import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info.freezed.dart';

/// Entity for basic information
@freezed
abstract class BasicInfo with _$BasicInfo {
  const factory BasicInfo({
    required String id,
    required List<String?> firstNames,
    required List<String?> lastNames,
    required int nrcRegionCodeId,
    required String nrcType,
    required String nrcTownship,
    required List<String> nrcNumbers,
    required int genderId,
    required int bloodTypeId,
    required int maritalStatusId,
    required String dateOfBirth,
    required List<String> placeOfBirths,
    required List<String> notableMarks,
    required String height,
    required int weight,
    required String hairColor,
    required String eyeColor,
    required int nationalityId,
    required String religionId,
    required String ethnicId,
  }) = _BasicInfo;
}
