// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PayslipModel _$PayslipModelFromJson(Map<String, dynamic> json) =>
    _PayslipModel(
      id: _readId(json, 'id') as String? ?? '',
      employeeName: json['employee_name'] as String? ?? '',
      employeeCode: json['employee_code'] as String? ?? '',
      departmentTitle: json['department_title'] as String? ?? '',
      positionTitle: json['position_title'] as String? ?? '',
      startDate: json['salary_start_date'] as String?,
      endDate: json['salary_end_date'] as String?,
      createdAt: json['created_at'] as String?,
      basicSalary: (json['basic_salary'] as num?)?.toDouble() ?? 0,
      attendanceAmount: (json['salary_attendance'] as num?)?.toDouble() ?? 0,
      inTimeAmount: (json['salary_in_time'] as num?)?.toDouble() ?? 0,
      overtimeAmount: (json['salary_ot'] as num?)?.toDouble() ?? 0,
      overtime1Amount: (json['salary_ot1'] as num?)?.toDouble() ?? 0,
      overtime2Amount: (json['salary_ot2'] as num?)?.toDouble() ?? 0,
      overtime3Amount: (json['salary_ot3'] as num?)?.toDouble() ?? 0,
      offDayAmount: (json['salary_off_day'] as num?)?.toDouble() ?? 0,
      mealAmount: (json['salary_meal'] as num?)?.toDouble() ?? 0,
      phoneBillAmount: (json['salary_phone_bill'] as num?)?.toDouble() ?? 0,
      travellingAmount: (json['salary_travelling'] as num?)?.toDouble() ?? 0,
      benefitAmount: (json['salary_benefit'] as num?)?.toDouble() ?? 0,
      bonusAmount: (json['salary_bonus'] as num?)?.toDouble() ?? 0,
      taxAmount: (json['salary_tax'] as num?)?.toDouble() ?? 0,
      ssbAmount: (json['salary_ssb'] as num?)?.toDouble() ?? 0,
      lateAmount: (json['salary_late'] as num?)?.toDouble() ?? 0,
      underAmount: (json['salary_under'] as num?)?.toDouble() ?? 0,
      unpaidLeaveAmount: (json['unpaid_leave'] as num?)?.toDouble() ?? 0,
      unpaidDeductionAmount:
          (json['unpaid_deduction'] as num?)?.toDouble() ?? 0,
      loanAmount: (json['loanAmount'] as num?)?.toDouble() ?? 0,
      taxableIncome: (json['taxable_income'] as num?)?.toDouble() ?? 0,
      totalDeduction: (json['salary_deduction'] as num?)?.toDouble() ?? 0,
      netSalary: (json['final_salary'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$PayslipModelToJson(_PayslipModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'employee_name': instance.employeeName,
      'employee_code': instance.employeeCode,
      'department_title': instance.departmentTitle,
      'position_title': instance.positionTitle,
      'salary_start_date': instance.startDate,
      'salary_end_date': instance.endDate,
      'created_at': instance.createdAt,
      'basic_salary': instance.basicSalary,
      'salary_attendance': instance.attendanceAmount,
      'salary_in_time': instance.inTimeAmount,
      'salary_ot': instance.overtimeAmount,
      'salary_ot1': instance.overtime1Amount,
      'salary_ot2': instance.overtime2Amount,
      'salary_ot3': instance.overtime3Amount,
      'salary_off_day': instance.offDayAmount,
      'salary_meal': instance.mealAmount,
      'salary_phone_bill': instance.phoneBillAmount,
      'salary_travelling': instance.travellingAmount,
      'salary_benefit': instance.benefitAmount,
      'salary_bonus': instance.bonusAmount,
      'salary_tax': instance.taxAmount,
      'salary_ssb': instance.ssbAmount,
      'salary_late': instance.lateAmount,
      'salary_under': instance.underAmount,
      'unpaid_leave': instance.unpaidLeaveAmount,
      'unpaid_deduction': instance.unpaidDeductionAmount,
      'loanAmount': instance.loanAmount,
      'taxable_income': instance.taxableIncome,
      'salary_deduction': instance.totalDeduction,
      'final_salary': instance.netSalary,
    };
