import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';

part 'payslip_model.freezed.dart';
part 'payslip_model.g.dart';

@freezed
abstract class PayslipModel with _$PayslipModel {
  const PayslipModel._();

  const factory PayslipModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(name: 'employee_name') @Default('') String employeeName,
    @JsonKey(name: 'employee_code') @Default('') String employeeCode,
    @JsonKey(name: 'department_title') @Default('') String departmentTitle,
    @JsonKey(name: 'position_title') @Default('') String positionTitle,
    @JsonKey(name: 'salary_start_date') String? startDate,
    @JsonKey(name: 'salary_end_date') String? endDate,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'basic_salary') @Default(0) double basicSalary,
    @JsonKey(name: 'salary_attendance') @Default(0) double attendanceAmount,
    @JsonKey(name: 'salary_in_time') @Default(0) double inTimeAmount,
    @JsonKey(name: 'salary_ot') @Default(0) double overtimeAmount,
    @JsonKey(name: 'salary_ot1') @Default(0) double overtime1Amount,
    @JsonKey(name: 'salary_ot2') @Default(0) double overtime2Amount,
    @JsonKey(name: 'salary_ot3') @Default(0) double overtime3Amount,
    @JsonKey(name: 'salary_off_day') @Default(0) double offDayAmount,
    @JsonKey(name: 'salary_meal') @Default(0) double mealAmount,
    @JsonKey(name: 'salary_phone_bill') @Default(0) double phoneBillAmount,
    @JsonKey(name: 'salary_travelling') @Default(0) double travellingAmount,
    @JsonKey(name: 'salary_benefit') @Default(0) double benefitAmount,
    @JsonKey(name: 'salary_bonus') @Default(0) double bonusAmount,
    @JsonKey(name: 'salary_tax') @Default(0) double taxAmount,
    @JsonKey(name: 'salary_ssb') @Default(0) double ssbAmount,
    @JsonKey(name: 'salary_late') @Default(0) double lateAmount,
    @JsonKey(name: 'salary_under') @Default(0) double underAmount,
    @JsonKey(name: 'unpaid_leave') @Default(0) double unpaidLeaveAmount,
    @JsonKey(name: 'unpaid_deduction') @Default(0) double unpaidDeductionAmount,
    @Default(0) double loanAmount,
    @JsonKey(name: 'taxable_income') @Default(0) double taxableIncome,
    @JsonKey(name: 'salary_deduction') @Default(0) double totalDeduction,
    @JsonKey(name: 'final_salary') @Default(0) double netSalary,
  }) = _PayslipModel;

  factory PayslipModel.fromJson(Map<String, dynamic> json) =>
      _$PayslipModelFromJson(json);

  Payslip toEntity() => Payslip(
    id: id,
    employeeName: employeeName,
    employeeCode: employeeCode,
    departmentTitle: departmentTitle,
    positionTitle: positionTitle,
    startDate: startDate,
    endDate: endDate,
    createdAt: createdAt,
    basicSalary: basicSalary,
    attendanceAmount: attendanceAmount,
    inTimeAmount: inTimeAmount,
    overtimeAmount: overtimeAmount,
    overtime1Amount: overtime1Amount,
    overtime2Amount: overtime2Amount,
    overtime3Amount: overtime3Amount,
    offDayAmount: offDayAmount,
    mealAmount: mealAmount,
    phoneBillAmount: phoneBillAmount,
    travellingAmount: travellingAmount,
    benefitAmount: benefitAmount,
    bonusAmount: bonusAmount,
    taxAmount: taxAmount,
    ssbAmount: ssbAmount,
    lateAmount: lateAmount,
    underAmount: underAmount,
    unpaidLeaveAmount: unpaidLeaveAmount,
    unpaidDeductionAmount: unpaidDeductionAmount,
    loanAmount: loanAmount,
    taxableIncome: taxableIncome,
    totalDeduction: totalDeduction,
    netSalary: netSalary,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
