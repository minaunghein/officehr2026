import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_leave_model.freezed.dart';
part 'user_leave_model.g.dart';

@freezed
abstract class UserLeaveModel with _$UserLeaveModel {
  const factory UserLeaveModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    required String userid,
    required String settingleaveid,
    @Default([]) List<String> tags,
    @Default(false) bool ispaid,
    @Default(false) bool addtoall,
    required String leavetitle,
    @Default(0) int contday,
    @Default(0) int allowdaysyr,
    @Default(0) int allowdayssixmonth,
    @Default(0) int reqservicedays,
    @Default(0) int reqworkingdays,
    @Default(0) int leavetaken,
    @Default(0) int validdaynextyear,
    required int yearid,
    @Default(false) bool carrynextyear,
    @Default(false) bool defaultfornoclockinout,
    @Default(false) bool deleted,
    DateTime? deletedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _UserLeaveModel;

  factory UserLeaveModel.fromJson(Map<String, dynamic> json) =>
      _$UserLeaveModelFromJson(json);
}
