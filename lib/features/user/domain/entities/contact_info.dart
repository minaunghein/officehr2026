import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_info.freezed.dart';

/// Entity for contact information
@freezed
abstract class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    required String id,
    required String phone,
    required String officePhone,
    required String permanentState,
    required String permanentTownship,
    required String permanentCity,
    required List<String> permanentStreetAddresses,
    required String currentState,
    required String currentTownship,
    required String currentCity,
    required List<String> currentStreetAddresses,
  }) = _ContactInfo;
}
