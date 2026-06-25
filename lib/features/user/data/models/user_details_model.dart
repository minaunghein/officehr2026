import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/data/models/company_model.dart';
import 'package:office_hr/features/user/data/models/user_bio_model.dart';
import 'package:office_hr/features/user/data/models/user_leave_model.dart';

part 'user_details_model.freezed.dart';
part 'user_details_model.g.dart';

@freezed
abstract class UserDetailsModel with _$UserDetailsModel {
  const factory UserDetailsModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(fromJson: _parseCompany) @Default(CompanyModel(id: '', name: '')) CompanyModel company,
    @Default([]) List<String> compspermitted,
    required String username,
    String? email,
    String? phone,
    @Default('') String profileurl,
    @Default('') String role,
    @Default([]) List<String> tags,
    @Default([]) List<dynamic> promotion,
    @Default([]) List<dynamic> tasks,
    @Default(false) bool deleted,
    DateTime? deletedAt,
    @Default([]) List<UserLeaveModel> userLeaves,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? version,
    UserBioModel? userbio,
    @Default(false) bool isbiocomplete,
  }) = _UserDetailsModel;

  factory UserDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsModelFromJson(json);
}

CompanyModel _parseCompany(dynamic json) {
  if (json == null) return const CompanyModel(id: '', name: '');
  if (json is String) {
    return CompanyModel(id: json, name: '');
  } else if (json is Map) {
    return CompanyModel.fromJson(Map<String, dynamic>.from(json));
  }
  return const CompanyModel(id: '', name: '');
}
