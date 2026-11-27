import 'package:freezed_annotation/freezed_annotation.dart';

part 'payslip.freezed.dart';

/// A single salary payout for one attendance period.
///
/// Earnings and deductions are stored as raw amounts so the UI can format and
/// total them consistently. Monetary values come straight from the payroll
/// calculation returned by `/api/v1/salary/payslips`.
@freezed
abstract class Payslip with _$Payslip {
  const Payslip._();

  const factory Payslip({
    required String id,
    @Default('') String employeeName,
    @Default('') String employeeCode,
    @Default('') String departmentTitle,
    @Default('') String positionTitle,
    String? startDate,
    String? endDate,
    String? createdAt,

    // Earnings
    @Default(0) double basicSalary,
    @Default(0) double attendanceAmount,
    @Default(0) double inTimeAmount,
    @Default(0) double overtimeAmount,
    @Default(0) double overtime1Amount,
    @Default(0) double overtime2Amount,
    @Default(0) double overtime3Amount,
    @Default(0) double offDayAmount,
    @Default(0) double mealAmount,
    @Default(0) double phoneBillAmount,
    @Default(0) double travellingAmount,
    @Default(0) double benefitAmount,
    @Default(0) double bonusAmount,

    // Deductions
    @Default(0) double taxAmount,
    @Default(0) double ssbAmount,
    @Default(0) double lateAmount,
    @Default(0) double underAmount,
    @Default(0) double unpaidLeaveAmount,
    @Default(0) double unpaidDeductionAmount,
    @Default(0) double loanAmount,

    // Totals
    @Default(0) double taxableIncome,
    @Default(0) double totalDeduction,
    @Default(0) double netSalary,
  }) = _Payslip;

  double get overtimeTotal =>
      overtimeAmount + overtime1Amount + overtime2Amount + overtime3Amount;

  double get totalEarnings =>
      basicSalary +
      attendanceAmount +
      inTimeAmount +
      overtimeTotal +
      offDayAmount +
      mealAmount +
      phoneBillAmount +
      travellingAmount +
      benefitAmount +
      bonusAmount;

  double get totalDeductions =>
      taxAmount +
      ssbAmount +
      lateAmount +
      underAmount +
      unpaidLeaveAmount +
      unpaidDeductionAmount +
      loanAmount;
}
