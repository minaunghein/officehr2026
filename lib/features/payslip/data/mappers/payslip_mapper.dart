import 'package:office_hr/features/payslip/data/models/payslip_model.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/user/data/mappers/user_details_mapper.dart';

extension PayslipMapper on PayslipModel {
  Payslip toEntity() {
    return Payslip(
      id: id,
      user: user.toEntity(),
      companyId: company,
      salaryId: salary,
      salaryPerDay: salaryperday,
      salaryLate: salarylate,
      salaryUnder: salaryunder,
      salaryOt1: salaryot1,
      salaryOt2: salaryot2,
      salaryOt3: salaryot3,
      salaryOt: salaryot,
      salarySsb: salaryssb,
      unpaidLeave: unpaidleave,
      unpaidDeduction: unpaiddeduction,
      salaryBenefit: salarybenefit,
      loan: loan,
      bonus: bonus,
      salaryDeduction: salarydeduction,
      salaryAttendance: salaryattendance,
      salaryInTime: salaryintime,
      finalSalary: finalsalary,
      salaryStartDate: salarystartdate,
      salaryEndDate: salaryenddate,
      isDeleted: deleted,
      isAcknowledged: isackg,
      deductionTypes: deductiontypes,
      benefitTypes: benefittypes,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
