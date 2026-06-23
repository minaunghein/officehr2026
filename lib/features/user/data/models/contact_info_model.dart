import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_info_model.freezed.dart';
part 'contact_info_model.g.dart';

/// Model for contact information in user bio
@freezed
abstract class ContactInfoModel with _$ContactInfoModel {
  const factory ContactInfoModel({
    @JsonKey(name: '_id') required String id,
    required String phone,
    required String officephone,
    required String perstate,
    required String pertownship,
    required String percity,
    required List<String> perstreetaddrs,
    required String currstate,
    required String currtownship,
    required String currcity,
    required List<String> currstreetaddrs,
  }) = _ContactInfoModel;

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoModelFromJson(json);
}
