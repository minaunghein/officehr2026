import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info_model.freezed.dart';
part 'basic_info_model.g.dart';

/// Model for basic information in user bio
@freezed
abstract class BasicInfoModel with _$BasicInfoModel {
  const factory BasicInfoModel({
    @JsonKey(name: '_id') required String id,
    required List<String?> firstnames,
    required List<String?> lastnames,
    required int nrcregioncodeid,
    required String nrctype,
    required String nrctownship,
    required List<String> nrcnumbers,
    required int genderid,
    required int bloodtypeid,
    required int maritalstatusid,
    required String dob,
    required List<String> pobs,
    required List<String> nmarks,
    required String height,
    required int weight,
    required String hc,
    required String ec,
    required int nationalityid,
    required String religionid,
    required String ethnicid,
  }) = _BasicInfoModel;

  factory BasicInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoModelFromJson(json);
}
