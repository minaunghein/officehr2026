import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/data/models/user_leave_model.dart';

part 'supervisor_model.freezed.dart';
part 'supervisor_model.g.dart';

/// Model for supervisor in work info
@freezed
abstract class SupervisorModel with _$SupervisorModel {
  const factory SupervisorModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    required List<String> compspermitted,
    required String username,
    required String email,
    required String phone,
    required String profileurl,
    required String role,
    required List<String> tags,
    required List<dynamic> promotion,
    required List<dynamic> tasks,
    required bool deleted,
    required dynamic deletedAt,
    required List<UserLeaveModel> userLeaves,
    required String createdAt,
    required String updatedAt,
    @JsonKey(name: '__v') required int version,
    required String userbio,
  }) = _SupervisorModel;

  factory SupervisorModel.fromJson(Map<String, dynamic> json) =>
      _$SupervisorModelFromJson(json);
}
