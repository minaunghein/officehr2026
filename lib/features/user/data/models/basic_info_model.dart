import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info_model.freezed.dart';
part 'basic_info_model.g.dart';

/// Model for basic information in user bio
@freezed
abstract class BasicInfoModel with _$BasicInfoModel {
  const factory BasicInfoModel({
    @JsonKey(name: '_id') String? id,
    List<String?>? firstnames,
    List<String?>? lastnames,
    int? nrcregioncodeid,
    String? nrctype,
    String? nrctownship,
    List<String>? nrcnumbers,
    int? genderid,
    int? bloodtypeid,
    int? maritalstatusid,
    String? dob,
    List<String>? pobs,
    List<String>? nmarks,
    String? height,
    int? weight,
    String? hc,
    String? ec,
    int? nationalityid,
    String? religionid,
    String? ethnicid,
  }) = _BasicInfoModel;

  factory BasicInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoModelFromJson(json);
}
