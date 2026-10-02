import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/leave/data/models/leave_json.dart';
import 'package:office_hr/features/leave/data/models/leave_type_model.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';

part 'leave_request_model.freezed.dart';
part 'leave_request_model.g.dart';

@freezed
abstract class LeaveRequestModel with _$LeaveRequestModel {
  const LeaveRequestModel._();

  const factory LeaveRequestModel({
    @JsonKey(readValue: readMongoId) @Default('') String id,
    @JsonKey(name: 'employee_id') @Default('') String employeeId,
    @JsonKey(name: 'leave_type_id') @Default('') String leaveTypeId,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'end_date') String? endDate,
    @JsonKey(name: 'is_half_day') @Default(false) bool isHalfDay,
    @JsonKey(name: 'half_day_period') @Default('AM') String halfDayPeriod,
    @JsonKey(name: 'total_days') @Default(0) double totalDays,
    @Default('') String reason,
    @JsonKey(name: 'attachment_url') @Default('') String attachmentUrl,
    @Default('PENDING') String status,
    @JsonKey(name: 'approved_by') String? approvedBy,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: 'leave_type') LeaveTypeModel? leaveType,
  }) = _LeaveRequestModel;

  factory LeaveRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestModelFromJson(json);

  LeaveRequest toEntity() => LeaveRequest(
    id: id,
    employeeId: employeeId,
    leaveTypeId: leaveTypeId,
    companyId: companyId,
    startDate: startDate,
    endDate: endDate,
    isHalfDay: isHalfDay,
    halfDayPeriod: HalfDayPeriod.fromValue(halfDayPeriod),
    totalDays: totalDays,
    reason: reason,
    attachmentUrl: attachmentUrl,
    status: LeaveStatus.fromValue(status),
    approvedBy: approvedBy,
    createdAt: createdAt,
    updatedAt: updatedAt,
    leaveType: leaveType?.toEntity(),
  );
}
