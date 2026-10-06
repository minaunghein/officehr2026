// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactInfoModel _$ContactInfoModelFromJson(Map<String, dynamic> json) =>
    _ContactInfoModel(
      emergencyContact: json['emergency_contact'],
      phone: json['phone'] as String? ?? '',
      email: json['email'] as String? ?? '',
      currentAddress: json['current_address'] == null
          ? null
          : AddressModel.fromJson(
              json['current_address'] as Map<String, dynamic>,
            ),
      permanentAddress: json['permanent_address'] == null
          ? null
          : AddressModel.fromJson(
              json['permanent_address'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ContactInfoModelToJson(_ContactInfoModel instance) =>
    <String, dynamic>{
      'emergency_contact': instance.emergencyContact,
      'phone': instance.phone,
      'email': instance.email,
      'current_address': instance.currentAddress,
      'permanent_address': instance.permanentAddress,
    };
