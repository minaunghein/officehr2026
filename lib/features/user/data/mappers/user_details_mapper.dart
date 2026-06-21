import 'package:office_hr/features/user/data/models/company_model.dart';
import 'package:office_hr/features/user/data/models/user_details_model.dart';
import 'package:office_hr/features/user/data/models/user_leave_model.dart';
import 'package:office_hr/features/user/data/models/branch_model.dart';
import 'package:office_hr/features/user/data/models/shift_model.dart';
import 'package:office_hr/features/user/data/models/working_day_model.dart';
import 'package:office_hr/features/user/domain/entities/company.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';
import 'package:office_hr/features/user/domain/entities/user_leave.dart';
import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/user/domain/entities/working_day.dart';

extension CompanyMapper on CompanyModel {
  Company toEntity() {
    return Company(
      id: id,
      shortCode: shortCode,
      logo: logo,
      name: name,
      generalInfo: generalinfo,
      socialMedia: socialmedia,
      sequence: sequence,
      active: active,
      serial: serial,
      deleted: deleted,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension UserLeaveMapper on UserLeaveModel {
  UserLeave toEntity() {
    return UserLeave(
      id: id,
      companyId: company,
      userId: userid,
      settingLeaveId: settingleaveid,
      tags: tags,
      isPaid: ispaid,
      addToAll: addtoall,
      leaveTitle: leavetitle,
      consecutiveDays: contday,
      allowedDaysPerYear: allowdaysyr,
      allowedDaysSixMonth: allowdayssixmonth,
      requiredServiceDays: reqservicedays,
      requiredWorkingDays: reqworkingdays,
      leaveTaken: leavetaken,
      validDaysNextYear: validdaynextyear,
      yearId: yearid,
      carryNextYear: carrynextyear,
      defaultForNoClockInOut: defaultfornoclockinout,
      deleted: deleted,
      deletedAt: deletedAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension UserDetailsMapper on UserDetailsModel {
  UserDetails toEntity() {
    return UserDetails(
      id: id,
      company: company.toEntity(),
      companiesPermitted: compspermitted,
      username: username,
      email: email,
      phone: phone,
      profileUrl: profileurl,
      role: role,
      tags: tags,
      promotions: promotion,
      tasks: tasks,
      deleted: deleted,
      deletedAt: deletedAt,
      userLeaves: userLeaves.map((leave) => leave.toEntity()).toList(),
      createdAt: createdAt,
      updatedAt: updatedAt,
      userBio: userbio,
      isBioComplete: isbiocomplete,
    );
  }
}

extension BranchMapper on BranchModel {
  Branch toEntity() {
    return Branch(
      id: id,
      companyId: company,
      shortCode: shortCode,
      name: name,
      active: active,
      latitude: lat,
      longitude: long,
      deleted: deleted,
      tags: tags,
      deletedAt: deletedAt,
      branchId: branchid,
    );
  }
}

extension WorkingDayMapper on WorkingDayModel {
  WorkingDay toEntity() {
    return WorkingDay(
      dayId: dayid,
      day: day,
      workStart: workstart,
      workEnd: workend,
      restStart: reststart,
      restEnd: restend,
      otStart: otstart,
      late1Start: late1start,
      late2Start: late2start,
      late3Start: late3start,
      absStart: absstart,
      halfDayStart: halfdaystart,
      isWorkingDay: workingday,
      isOffDay: offday,
      includeRestHours: incresthr,
      isHalfDay: halfday,
      id: id,
    );
  }
}

extension ShiftMapper on ShiftModel {
  Shift toEntity() {
    return Shift(
      id: id,
      companyId: company,
      shiftId: shiftid,
      late1Symbol: late1symbol,
      late2Symbol: late2symbol,
      late3Symbol: late3symbol,
      absenceSymbol: abssymbol,
      halfDaySymbol: hdsymbol,
      description: desc,
      unpaidSymbol: unpaidsymbol,
      intervalMinutes: intervalmin,
      isNightShift: nightshift,
      isDefault: isdefault,
      otStartBase: otstartbase,
      workingDays: workingdays.map((wd) => wd.toEntity()).toList(),
      tags: tags,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
