import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/address/address.dart';

part 'contact_info.freezed.dart';

@freezed
abstract class ContactInfo with _$ContactInfo {
  const factory ContactInfo({
    dynamic emergencyContact,
    required String phone,
    required String email,
    Address? currentAddress,
    Address? permanentAddress,
  }) = _ContactInfo;
}
