import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_info_model.freezed.dart';
part 'contact_info_model.g.dart';

@freezed
abstract class ContactInfoModel with _$ContactInfoModel {
  const factory ContactInfoModel({
    @JsonKey(name: '_id') String? id,
    String? phone,
    String? officephone,
    String? perstate,
    String? pertownship,
    String? percity,
    List<String>? perstreetaddrs,
    String? currstate,
    String? currtownship,
    String? currcity,
    List<String>? currstreetaddrs,
  }) = _ContactInfoModel;

  factory ContactInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ContactInfoModelFromJson(json);
}
