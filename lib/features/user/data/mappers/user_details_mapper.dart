import 'package:office_hr/features/user/data/models/company_model.dart';
import 'package:office_hr/features/user/data/models/general_info_model.dart';
import 'package:office_hr/features/user/data/models/social_media_model.dart';
import 'package:office_hr/features/user/data/models/user_details_model.dart';
import 'package:office_hr/features/user/data/models/user_leave_model.dart';
import 'package:office_hr/features/user/data/models/branch_model.dart';
import 'package:office_hr/features/user/data/models/shift_model.dart';
import 'package:office_hr/features/user/data/models/working_day_model.dart';
import 'package:office_hr/features/user/data/models/basic_info_model.dart';
import 'package:office_hr/features/user/data/models/contact_info_model.dart';
import 'package:office_hr/features/user/data/models/family_info_model.dart';
import 'package:office_hr/features/user/data/models/position_model.dart';
import 'package:office_hr/features/user/data/models/department_model.dart';
import 'package:office_hr/features/user/data/models/supervisor_model.dart';
import 'package:office_hr/features/user/data/models/work_info_model.dart';
import 'package:office_hr/features/user/data/models/user_bio_model.dart';
import 'package:office_hr/features/user/domain/entities/company.dart';
import 'package:office_hr/features/user/domain/entities/general_info.dart';
import 'package:office_hr/features/user/domain/entities/social_media.dart';
import 'package:office_hr/features/user/domain/entities/user_details.dart';
import 'package:office_hr/features/user/domain/entities/user_leave.dart';
import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/user/domain/entities/working_day.dart';
import 'package:office_hr/features/user/domain/entities/basic_info.dart';
import 'package:office_hr/features/user/domain/entities/contact_info.dart';
import 'package:office_hr/features/user/domain/entities/family_info.dart';
import 'package:office_hr/features/user/domain/entities/position.dart';
import 'package:office_hr/features/user/domain/entities/department.dart';
import 'package:office_hr/features/user/domain/entities/supervisor.dart';
import 'package:office_hr/features/user/domain/entities/work_info.dart';
import 'package:office_hr/features/user/domain/entities/user_bio.dart';

extension CompanyMapper on CompanyModel {
  Company toEntity() {
    return Company(
      id: id,
      shortCode: shortCode,
      logo: logo,
      name: name,
      generalInfo: generalinfo?.toEntity(),
      socialMedia: socialmedia?.toEntity(),
      sequence: sequence,
      active: active,
      serial: serial,
      deleted: deleted,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension GeneralInfoMapper on GeneralInfoModel {
  GeneralInfo toEntity() {
    return GeneralInfo(
      id: id,
      street: street,
      street1: street1,
      city: city,
      state: state,
      country: country,
      zip: zip,
      createdAt: createdAt,
      updatedAt: updatedAt,
      email: email,
      phone: phone,
      registerId: registerid,
      website: website,
    );
  }
}

extension SocialMediaMapper on SocialMediaModel {
  SocialMedia toEntity() {
    return SocialMedia(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      facebookLink: fblk,
      linkedInLink: linkedinlk,
      twitterLink: twlk,
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
      email: email ?? '',
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
      userBio: userbio?.toEntity(),
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

extension BasicInfoMapper on BasicInfoModel {
  BasicInfo toEntity() {
    return BasicInfo(
      id: id ?? '',
      firstNames: firstnames ?? [],
      lastNames: lastnames ?? [],
      nrcRegionCodeId: nrcregioncodeid ?? 0,
      nrcType: nrctype ?? '',
      nrcTownship: nrctownship ?? '',
      nrcNumbers: nrcnumbers ?? [],
      genderId: genderid ?? 0,
      bloodTypeId: bloodtypeid ?? 0,
      maritalStatusId: maritalstatusid ?? 0,
      dateOfBirth: dob ?? '',
      placeOfBirths: pobs ?? [],
      notableMarks: nmarks ?? [],
      height: height ?? '',
      weight: weight ?? 0,
      hairColor: hc ?? '',
      eyeColor: ec ?? '',
      nationalityId: nationalityid ?? 0,
      religionId: religionid ?? '',
      ethnicId: ethnicid ?? '',
    );
  }
}

extension ContactInfoMapper on ContactInfoModel {
  ContactInfo toEntity() {
    return ContactInfo(
      id: id ?? '',
      phone: phone ?? '',
      officePhone: officephone ?? '',
      permanentState: perstate ?? '',
      permanentTownship: pertownship ?? '',
      permanentCity: percity ?? '',
      permanentStreetAddresses: perstreetaddrs ?? [],
      currentState: currstate ?? '',
      currentTownship: currtownship ?? '',
      currentCity: currcity ?? '',
      currentStreetAddresses: currstreetaddrs ?? [],
    );
  }
}

extension FamilyInfoMapper on FamilyInfoModel {
  FamilyInfo toEntity() {
    return FamilyInfo(
      id: id,
      fatherNames: fathernames,
      motherNames: mothernames,
      numberOfFamilyMembers: nofm,
    );
  }
}

extension PositionMapper on PositionModel {
  Position toEntity() {
    return Position(
      id: id,
      companyId: company,
      titles: titles,
      shortCode: sc,
      sortOrder: so,
      rank: rank,
      remarks: remarks,
      tags: tags,
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
    );
  }
}

extension DepartmentMapper on DepartmentModel {
  Department toEntity() {
    return Department(
      id: id,
      companyId: company,
      titles: titles,
      shortCode: sc,
      sortOrder: so,
      remarks: remarks,
      tags: tags,
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
    );
  }
}

extension SupervisorMapper on SupervisorModel {
  Supervisor toEntity() {
    return Supervisor(
      id: id,
      companyId: company,
      companiesPermitted: compspermitted,
      username: username,
      email: email,
      phone: phone,
      profileUrl: profileurl,
      role: role,
      tags: tags,
      promotions: promotion,
      tasks: tasks,
      isDeleted: deleted,
      deletedAt: deletedAt,
      userLeaves: userLeaves.map((leave) => leave.toEntity()).toList(),
      createdAt: createdAt,
      updatedAt: updatedAt,
      userBioId: userbio,
    );
  }
}

extension WorkInfoMapper on WorkInfoModel {
  WorkInfo toEntity() {
    return WorkInfo(
      id: id ?? '',
      employeeCodePrefix: empcodeprefix ?? '',
      employeeCode: empcode ?? 0,
      cardId: cardid ?? 0,
      grade: grade ?? 0,
      employmentDate: employmentdate ?? '',
      probationEndDate: probationenddate ?? '',
      employmentStatus: empstatus ?? 0,
      isResigned: resigned ?? false,
      resignedDate: resigneddate ?? '',
      position:
          position?.toEntity() ??
          const Position(
            id: '',
            companyId: '',
            titles: [],
            shortCode: '',
            sortOrder: 0,
            rank: 0,
            remarks: '',
            tags: [],
            createdAt: '',
            updatedAt: '',
          ),
      department:
          department?.toEntity() ??
          const Department(
            id: '',
            companyId: '',
            titles: [],
            shortCode: '',
            sortOrder: 0,
            remarks: '',
            tags: [],
            createdAt: '',
            updatedAt: '',
          ),
      isActive: status ?? false,
      supervisor: supervisorid?.toEntity(),
      shift: shift?.toEntity(),
      branch:
          branch?.toEntity() ??
          const Branch(
            id: '',
            companyId: '',
            shortCode: '',
            name: '',
            active: false,
            latitude: 0.0,
            longitude: 0.0,
            deleted: false,
            tags: [],
          ),
    );
  }
}

extension UserBioMapper on UserBioModel {
  UserBio toEntity() {
    return UserBio(
      id: id,
      companyId: company,
      userId: userid,
      basicInfo: basicinfo?.toEntity() ?? const BasicInfo(
        id: '',
        firstNames: [],
        lastNames: [],
        nrcRegionCodeId: 0,
        nrcType: '',
        nrcTownship: '',
        nrcNumbers: [],
        genderId: 0,
        bloodTypeId: 0,
        maritalStatusId: 0,
        dateOfBirth: '',
        placeOfBirths: [],
        notableMarks: [],
        height: '',
        weight: 0,
        hairColor: '',
        eyeColor: '',
        nationalityId: 0,
        religionId: '',
        ethnicId: '',
      ),
      contactInfo: contactinfo?.toEntity() ?? const ContactInfo(
        id: '',
        phone: '',
        officePhone: '',
        permanentState: '',
        permanentTownship: '',
        permanentCity: '',
        permanentStreetAddresses: [],
        currentState: '',
        currentTownship: '',
        currentCity: '',
        currentStreetAddresses: [],
      ),
      familyInfo: familyinfo?.toEntity() ?? const FamilyInfo(
        id: '',
        fatherNames: [],
        motherNames: [],
        numberOfFamilyMembers: 0,
      ),
      workInfo: workinfo?.toEntity() ?? const WorkInfo(
        id: '',
        employeeCodePrefix: '',
        employeeCode: 0,
        cardId: 0,
        grade: 0,
        employmentDate: '',
        probationEndDate: '',
        employmentStatus: 0,
        isResigned: false,
        resignedDate: '',
        position: Position(
          id: '',
          companyId: '',
          titles: [],
          shortCode: '',
          sortOrder: 0,
          rank: 0,
          remarks: '',
          tags: [],
          createdAt: '',
          updatedAt: '',
        ),
        department: Department(
          id: '',
          companyId: '',
          titles: [],
          shortCode: '',
          sortOrder: 0,
          remarks: '',
          tags: [],
          createdAt: '',
          updatedAt: '',
        ),
        isActive: false,
        branch: Branch(
          id: '',
          companyId: '',
          shortCode: '',
          name: '',
          active: false,
          latitude: 0.0,
          longitude: 0.0,
          deleted: false,
          tags: [],
        ),
      ),
      isOvertimeEnabled: isotenable,
      isOvertime1Enabled: isot1enable,
      isOvertime2Enabled: isot2enable,
      isOvertime3Enabled: isot3enable,
      isAutoAmendEnabled: isautoammendenable,
      isDeductionEnabled: isdeductionenable,
      isUnderEnabled: isunderenable,
      tags: tags,
      isDeleted: deleted,
      deletedAt: deletedAt,
      workExperience: workexperience,
      education: education,
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
    );
  }
}
