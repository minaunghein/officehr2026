// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_balance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LeaveBalanceModel _$LeaveBalanceModelFromJson(Map<String, dynamic> json) =>
    _LeaveBalanceModel(
      id: readMongoId(json, 'id') as String? ?? '',
      companyId: json['company_id'] as String? ?? '',
      employeeId: json['employee_id'] as String? ?? '',
      leaveTypeId: json['leave_type_id'] as String? ?? '',
      year: (json['year'] as num?)?.toInt() ?? 0,
      adjusted: (json['adjusted'] as num?)?.toDouble() ?? 0,
      allocated: (json['allocated'] as num?)?.toDouble() ?? 0,
      carriedForward: (json['carried_forward'] as num?)?.toDouble() ?? 0,
      pending: (json['pending'] as num?)?.toDouble() ?? 0,
      used: (json['used'] as num?)?.toDouble() ?? 0,
      leaveType: json['leave_type'] == null
          ? null
          : LeaveTypeModel.fromJson(json['leave_type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LeaveBalanceModelToJson(_LeaveBalanceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company_id': instance.companyId,
      'employee_id': instance.employeeId,
      'leave_type_id': instance.leaveTypeId,
      'year': instance.year,
      'adjusted': instance.adjusted,
      'allocated': instance.allocated,
      'carried_forward': instance.carriedForward,
      'pending': instance.pending,
      'used': instance.used,
      'leave_type': instance.leaveType,
    };
