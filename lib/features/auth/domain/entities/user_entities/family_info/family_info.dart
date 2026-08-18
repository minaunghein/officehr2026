import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_info.freezed.dart';

@freezed
abstract class FamilyInfo with _$FamilyInfo {
  const factory FamilyInfo({required List<dynamic> members}) = _FamilyInfo;
}
