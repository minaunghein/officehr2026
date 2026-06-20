import 'package:office_hr/features/user/data/models/company_model.dart';
import 'package:office_hr/features/user/data/models/user_details_model.dart';
import 'package:office_hr/features/user/data/models/user_leave_model.dart';
import 'package:office_hr/features/user/domain/entities/company.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';
import 'package:office_hr/features/user/domain/entities/user_leave.dart';

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
