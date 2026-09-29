import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/data/models/user_models/address/address_model.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/contact_info/contact_info.dart';

part 'contact_info_model.freezed.dart';
part 'contact_info_model.g.dart';

@freezed
abstract class ContactInfoModel with _$ContactInfoModel {
  const ContactInfoModel._();

  const factory ContactInfoModel({
    @JsonKey(name: 'emergency_contact') dynamic emergencyContact,
    @Default('') String phone,
    @Default('') String email,
    @JsonKey(name: 'current_address') AddressModel? currentAddress,
    @JsonKey(name: 'permanent_address') AddressModel? permanentAddress,
  }) = _ContactInfoModel;

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoModelFromJson(json);

  ContactInfo toEntity() => ContactInfo(
    emergencyContact: emergencyContact,
    phone: phone,
    email: email,
    currentAddress: currentAddress?.toEntity(),
    permanentAddress: permanentAddress?.toEntity(),
  );
}
