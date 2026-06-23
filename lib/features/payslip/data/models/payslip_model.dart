import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/data/models/user_details_model.dart';

part 'payslip_model.freezed.dart';
part 'payslip_model.g.dart';

/// Model for salary payslip
@freezed
abstract class PayslipModel with _$PayslipModel {
  const factory PayslipModel({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'userid') required UserDetailsModel user,
    required String company,
    String? salary,
    @Default(0) num salaryperday,
    @Default(0) num salarylate,
    @Default(0) num salaryunder,
    @Default(0) num salaryot1,
    @Default(0) num salaryot2,
    @Default(0) num salaryot3,
    @Default(0) num salaryot,
    @Default(0) num salaryssb,
    @Default(0) num unpaidleave,
    @Default(0) num unpaiddeduction,
    @Default(0) num salarybenefit,
    @Default(0) num loan,
    @Default(0) num bonus,
    @Default(0) num salarydeduction,
    @Default(0) num salaryattendance,
    @Default(0) num salaryintime,
    @Default(0) num finalsalary,
    String? salarystartdate,
    String? salaryenddate,
    @Default([]) List<dynamic> tags,
    @Default(false) bool deleted,
    @Default(false) bool isackg,
    dynamic deletedAt,
    @Default([]) List<dynamic> deductiontypes,
    @Default([]) List<dynamic> benefittypes,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _PayslipModel;

  factory PayslipModel.fromJson(Map<String, dynamic> json) =>
      _$PayslipModelFromJson(json);
}
