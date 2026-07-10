import 'package:office_hr/features/payslip/data/models/payslip_model.dart';
import 'package:office_hr/features/payslip/data/models/salary_model.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/domain/entities/salary.dart';
import 'package:office_hr/features/user/data/mappers/user_details_mapper.dart';

extension OtRateMapper on OtRateModel {
  OtRate toEntity() {
    return OtRate(
      id: id,
      ot1Rate: ot1rate,
      ot2Rate: ot2rate,
      ot3Rate: ot3rate,
    );
  }
}

extension SalaryMapper on SalaryModel {
  Salary toEntity() {
    return Salary(
      id: id,
      userId: userid,
      companyId: company,
      salary: salary,
      ssb: ssb,
      otRate: otrate?.toEntity(),
      otAmount: otamount,
      isOtFlat: isotflat,
      tags: tags,
      isDeleted: deleted,
      deletedAt: deletedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
      paymentCode: paymentcode,
      paymentNum: paymentnum,
    );
  }
}

extension PayslipMapper on PayslipModel {
  Payslip toEntity() {
    return Payslip(
      id: id,
      user: user.toEntity(),
      companyId: company,
      salary: salary?.toEntity(),
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
