import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/contact_info/contact_info.dart';

part 'contact_info_model.freezed.dart';
part 'contact_info_model.g.dart';

@freezed
abstract class ContactInfoModel with _$ContactInfoModel {
  const ContactInfoModel._();

  const factory ContactInfoModel({
    @JsonKey(name: 'emergency_contact') dynamic emergencyContact,
  }) = _ContactInfoModel;

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoModelFromJson(json);

  ContactInfo toEntity() => ContactInfo(emergencyContact: emergencyContact);
}
