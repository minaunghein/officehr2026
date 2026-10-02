// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveRequestModel _$LeaveRequestModelFromJson(Map<String, dynamic> json) =>
    _LeaveRequestModel(
      id: readMongoId(json, 'id') as String? ?? '',
      employeeId: json['employee_id'] as String? ?? '',
      leaveTypeId: json['leave_type_id'] as String? ?? '',
      companyId: json['company_id'] as String? ?? '',
      startDate: json['start_date'] as String?,
      endDate: json['end_date'] as String?,
      isHalfDay: json['is_half_day'] as bool? ?? false,
      halfDayPeriod: json['half_day_period'] as String? ?? 'AM',
      totalDays: (json['total_days'] as num?)?.toDouble() ?? 0,
      reason: json['reason'] as String? ?? '',
      attachmentUrl: json['attachment_url'] as String? ?? '',
      status: json['status'] as String? ?? 'PENDING',
      approvedBy: json['approved_by'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      leaveType: json['leave_type'] == null
          ? null
          : LeaveTypeModel.fromJson(json['leave_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LeaveRequestModelToJson(_LeaveRequestModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_id': instance.employeeId,
      'leave_type_id': instance.leaveTypeId,
      'company_id': instance.companyId,
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'is_half_day': instance.isHalfDay,
      'half_day_period': instance.halfDayPeriod,
      'total_days': instance.totalDays,
      'reason': instance.reason,
      'attachment_url': instance.attachmentUrl,
      'status': instance.status,
      'approved_by': instance.approvedBy,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'leave_type': instance.leaveType,
    };
