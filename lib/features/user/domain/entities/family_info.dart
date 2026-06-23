import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_info.freezed.dart';

/// Entity for family information
@freezed
abstract class FamilyInfo with _$FamilyInfo {
  const factory FamilyInfo({
    required String id,
    required List<String> fatherNames,
    required List<String> motherNames,
    required int numberOfFamilyMembers,
  }) = _FamilyInfo;
}
