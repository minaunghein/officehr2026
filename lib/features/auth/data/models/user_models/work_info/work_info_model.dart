import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/auth/data/models/user_models/branch/branch_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/department/department_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/position/position_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/shift/shift_model.dart';
import 'package:office_hr/features/auth/data/models/user_models/supervisor/supervisor_model.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/work_info/work_info.dart';

part 'work_info_model.freezed.dart';
part 'work_info_model.g.dart';

@freezed
abstract class WorkInfoModel with _$WorkInfoModel {
  const WorkInfoModel._();

  const factory WorkInfoModel({
    @JsonKey(name: 'employee_code') @Default('') String employeeCode,
    @JsonKey(name: 'department_id') @Default('') String departmentId,
    @JsonKey(name: 'position_id') @Default('') String positionId,
    @JsonKey(name: 'branch_id') @Default('') String branchId,
    @JsonKey(name: 'shift_id') @Default('') String shiftId,
    @JsonKey(name: 'supervisor_id') String? supervisorId,
    @JsonKey(name: 'employment_date') String? employmentDate,
    @JsonKey(name: 'probation_end_date') String? probationEndDate,
    @JsonKey(name: 'resignation_date') String? resignationDate,
    @JsonKey(name: 'employment_status') @Default('') String employmentStatus,
    @JsonKey(name: 'employment_type') @Default('') String employmentType,
    @JsonKey(name: 'work_mode') @Default('') String workMode,
    @JsonKey(name: 'card_id') @Default('') String cardId,
    @Default('') String grade,
    DepartmentModel? department,
    PositionModel? position,
    BranchModel? branch,
    ShiftModel? shift,
    SupervisorModel? supervisor,
  }) = _WorkInfoModel;

  factory WorkInfoModel.fromJson(Map<String, dynamic> json) =>
      _$WorkInfoModelFromJson(json);

  WorkInfo toEntity() => WorkInfo(
    employeeCode: employeeCode,
    departmentId: departmentId,
    positionId: positionId,
    branchId: branchId,
    shiftId: shiftId,
    supervisorId: supervisorId,
    employmentDate: normalizeLocalDateTimeString(employmentDate),
    probationEndDate: normalizeLocalDateTimeString(probationEndDate),
    resignationDate: normalizeLocalDateTimeString(resignationDate),
    employmentStatus: employmentStatus,
    employmentType: employmentType,
    workMode: workMode,
    cardId: cardId,
    grade: grade,
    department: department?.toEntity(),
    position: position?.toEntity(),
    branch: branch?.toEntity(),
    shift: shift?.toEntity(),
    supervisor: supervisor?.toEntity(),
  );
}
