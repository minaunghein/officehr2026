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
    @JsonKey(name: '_id') @Default('') String id,
    @JsonKey(fromJson: _parseCompanyId) @Default('') String company,
    @Default('') String userid,
    BasicInfoModel? basicinfo,
    ContactInfoModel? contactinfo,
    FamilyInfoModel? familyinfo,
    WorkInfoModel? workinfo,
    @Default(false) bool isotenable,
    @Default(false) bool isot1enable,
    @Default(false) bool isot2enable,
    @Default(false) bool isot3enable,
    @Default(false) bool isautoammendenable,
    @Default(false) bool isdeductionenable,
    @Default(false) bool isunderenable,
    @Default([]) List<String> tags,
    @Default(false) bool deleted,
    dynamic deletedAt,
    @Default([]) List<dynamic> workexperience,
    @Default([]) List<dynamic> education,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _UserBioModel;

  factory UserBioModel.fromJson(Map<String, dynamic> json) =>
      _$UserBioModelFromJson(json);
}

String _parseCompanyId(dynamic json) {
  if (json == null) return '';
  if (json is String) return json;
  if (json is Map) return (json['_id'] ?? json['id'] ?? '').toString();
  return '';
}
