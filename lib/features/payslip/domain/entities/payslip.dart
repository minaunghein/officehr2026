import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';

part 'payslip.freezed.dart';

@freezed
abstract class Payslip with _$Payslip {
  const factory Payslip({
    required String id,
    required UserDetails user,
    required String companyId,
    String? salaryId,
    required num salaryPerDay,
    required num salaryLate,
    required num salaryUnder,
    required num salaryOt1,
    required num salaryOt2,
    required num salaryOt3,
    required num salaryOt,
    required num salarySsb,
    required num unpaidLeave,
    required num unpaidDeduction,
    required num salaryBenefit,
    required num loan,
    required num bonus,
    required num salaryDeduction,
    required num salaryAttendance,
    required num salaryInTime,
    required num finalSalary,
    String? salaryStartDate,
    String? salaryEndDate,
    required bool isDeleted,
    required bool isAcknowledged,
    @Default([]) List<dynamic> deductionTypes,
    @Default([]) List<dynamic> benefitTypes,
    String? createdAt,
    String? updatedAt,
  }) = _Payslip;
}
