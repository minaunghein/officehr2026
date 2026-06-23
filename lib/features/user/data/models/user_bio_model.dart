import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/data/models/basic_info_model.dart';
import 'package:office_hr/features/user/data/models/contact_info_model.dart';
import 'package:office_hr/features/user/data/models/family_info_model.dart';
import 'package:office_hr/features/user/data/models/work_info_model.dart';

part 'user_bio_model.freezed.dart';
part 'user_bio_model.g.dart';

/// Model for user bio
@freezed
abstract class UserBioModel with _$UserBioModel {
  const factory UserBioModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    required String userid,
    required BasicInfoModel basicinfo,
    required ContactInfoModel contactinfo,
    required FamilyInfoModel familyinfo,
    required WorkInfoModel workinfo,
    required bool isotenable,
    required bool isot1enable,
    required bool isot2enable,
    required bool isot3enable,
    required bool isautoammendenable,
    required bool isdeductionenable,
    required bool isunderenable,
    required List<String> tags,
    required bool deleted,
    required dynamic deletedAt,
    required List<dynamic> workexperience,
    required List<dynamic> education,
    required String createdAt,
    required String updatedAt,
    @JsonKey(name: '__v') required int version,
  }) = _UserBioModel;

  factory UserBioModel.fromJson(Map<String, dynamic> json) =>
      _$UserBioModelFromJson(json);
}
