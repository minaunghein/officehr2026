import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/leave/data/models/leave_json.dart';
import 'package:office_hr/features/leave/data/models/leave_type_model.dart';
import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';
import 'package:office_hr/features/leave/domain/entities/leave_type.dart';

part 'leave_balance_model.freezed.dart';
part 'leave_balance_model.g.dart';

@freezed
abstract class LeaveBalanceModel with _$LeaveBalanceModel {
  const LeaveBalanceModel._();

  const factory LeaveBalanceModel({
    @JsonKey(readValue: readMongoId) @Default('') String id,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'employee_id') @Default('') String employeeId,
    @JsonKey(name: 'leave_type_id') @Default('') String leaveTypeId,
    @Default(0) int year,
    @Default(0) double adjusted,
    @Default(0) double allocated,
    @JsonKey(name: 'carried_forward') @Default(0) double carriedForward,
    @Default(0) double pending,
    @Default(0) double used,
    @JsonKey(name: 'leave_type') LeaveTypeModel? leaveType,
  }) = _LeaveBalanceModel;

  factory LeaveBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveBalanceModelFromJson(json);

  LeaveBalance toEntity() => LeaveBalance(
    id: id,
    companyId: companyId,
    employeeId: employeeId,
    leaveTypeId: leaveTypeId,
    year: year,
    adjusted: adjusted,
    allocated: allocated,
    carriedForward: carriedForward,
    pending: pending,
    used: used,
    leaveType: leaveType?.toEntity() ?? const LeaveType(id: ''),
  );
}
