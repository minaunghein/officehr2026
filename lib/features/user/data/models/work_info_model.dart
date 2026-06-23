import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/data/models/branch_model.dart';
import 'package:office_hr/features/user/data/models/department_model.dart';
import 'package:office_hr/features/user/data/models/position_model.dart';
import 'package:office_hr/features/user/data/models/shift_model.dart';
import 'package:office_hr/features/user/data/models/supervisor_model.dart';

part 'work_info_model.freezed.dart';
part 'work_info_model.g.dart';

/// Converter that handles `supervisorid` being either a full object
/// (user details endpoint) or an ID string (payslip endpoint).
/// Returns null when only an ID string is provided.
class SupervisorConverter implements JsonConverter<SupervisorModel?, Object?> {
  const SupervisorConverter();

  @override
  SupervisorModel? fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      return SupervisorModel.fromJson(json);
    }
    return null;
  }

  @override
  Object? toJson(SupervisorModel? object) => object?.toJson();
}

/// Converter that handles `shift` being either a full object
/// (user details endpoint) or an ID string (payslip endpoint).
/// Returns null when only an ID string is provided.
class ShiftConverter implements JsonConverter<ShiftModel?, Object?> {
  const ShiftConverter();

  @override
  ShiftModel? fromJson(Object? json) {
    if (json is Map<String, dynamic>) {
      return ShiftModel.fromJson(json);
    }
    return null;
  }

  @override
  Object? toJson(ShiftModel? object) => object?.toJson();
}

/// Model for work information in user bio
@freezed
abstract class WorkInfoModel with _$WorkInfoModel {
  const factory WorkInfoModel({
    @JsonKey(name: '_id') required String id,
    required String empcodeprefix,
    required int empcode,
    required int cardid,
    required int grade,
    required String employmentdate,
    required String probationenddate,
    required int empstatus,
    required bool resigned,
    required String resigneddate,
    required PositionModel position,
    required DepartmentModel department,
    required bool status,
    @SupervisorConverter() SupervisorModel? supervisorid,
    @ShiftConverter() ShiftModel? shift,
    required BranchModel branch,
  }) = _WorkInfoModel;

  factory WorkInfoModel.fromJson(Map<String, dynamic> json) =>
      _$WorkInfoModelFromJson(json);
}
