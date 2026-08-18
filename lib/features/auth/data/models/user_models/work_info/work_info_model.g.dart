// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkInfoModel _$WorkInfoModelFromJson(
  Map<String, dynamic> json,
) => _WorkInfoModel(
  employeeCode: json['employee_code'] as String? ?? '',
  departmentId: json['department_id'] as String? ?? '',
  positionId: json['position_id'] as String? ?? '',
  branchId: json['branch_id'] as String? ?? '',
  shiftId: json['shift_id'] as String? ?? '',
  supervisorId: json['supervisor_id'] as String?,
  employmentDate: json['employment_date'] as String?,
  probationEndDate: json['probation_end_date'] as String?,
  resignationDate: json['resignation_date'] as String?,
  employmentStatus: json['employment_status'] as String? ?? '',
  employmentType: json['employment_type'] as String? ?? '',
  workMode: json['work_mode'] as String? ?? '',
  cardId: json['card_id'] as String? ?? '',
  grade: json['grade'] as String? ?? '',
  department: json['department'] == null
      ? null
      : DepartmentModel.fromJson(json['department'] as Map<String, dynamic>),
  position: json['position'] == null
      ? null
      : PositionModel.fromJson(json['position'] as Map<String, dynamic>),
  branch: json['branch'] == null
      ? null
      : BranchModel.fromJson(json['branch'] as Map<String, dynamic>),
  shift: json['shift'] == null
      ? null
      : ShiftModel.fromJson(json['shift'] as Map<String, dynamic>),
  supervisor: json['supervisor'] == null
      ? null
      : SupervisorModel.fromJson(json['supervisor'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WorkInfoModelToJson(_WorkInfoModel instance) =>
    <String, dynamic>{
      'employee_code': instance.employeeCode,
      'department_id': instance.departmentId,
      'position_id': instance.positionId,
      'branch_id': instance.branchId,
      'shift_id': instance.shiftId,
      'supervisor_id': instance.supervisorId,
      'employment_date': instance.employmentDate,
      'probation_end_date': instance.probationEndDate,
      'resignation_date': instance.resignationDate,
      'employment_status': instance.employmentStatus,
      'employment_type': instance.employmentType,
      'work_mode': instance.workMode,
      'card_id': instance.cardId,
      'grade': instance.grade,
      'department': instance.department,
      'position': instance.position,
      'branch': instance.branch,
      'shift': instance.shift,
      'supervisor': instance.supervisor,
    };
