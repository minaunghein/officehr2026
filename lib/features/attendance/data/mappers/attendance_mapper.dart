import 'package:office_hr/features/attendance/data/models/attendance_model.dart';
import 'package:office_hr/features/attendance/data/models/attendance_status_model.dart';
import 'package:office_hr/features/attendance/data/models/department_attendances.dart';
import 'package:office_hr/features/attendance/domain/entities/attendance.dart';
import 'package:office_hr/features/attendance/domain/entities/attendance_status.dart';
import 'package:office_hr/features/attendance/domain/entities/department_attendances.dart';
import 'package:office_hr/features/user/data/mappers/user_details_mapper.dart';

extension AttendanceStatusMapper on AttendanceStatusModel {
  AttendanceStatus toEntity() {
    return AttendanceStatus(
      id: id,
      companyId: company,
      statusId: statusid,
      titles: titles,
      shortCode: shortCode,
      remarks: remarks,
      tags: tags,
      createdAt: createdAt,
      updatedAt: updatedAt,
      recordId: recordId,
    );
  }
}

extension AttendanceMapper on AttendanceModel {
  Attendance toEntity() {
    return Attendance(
      id: id,
      companyId: company,
      userId: userId,
      clockIn: clockIn,
      dateId: dateId,
      timeId: timeId,
      clockInBy: clockInBy,
      needApproval: needApproval,
      status: status?.toEntity(),
      latitude: lat,
      longitude: long,
      description: description,
      isSod: isSod,
      isEod: isEod,
      terminalId: terminalId,
      deleted: deleted,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension DepartmentAttendanceMapper on DepartmentAttendanceModel {
  DepartmentAttendances toEntity() {
    return DepartmentAttendances(
      user: user.toEntity(),
      clockins: clockins.map((model) => model.toEntity()).toList(),
      sod: sod?.toEntity(),
      eod: eod?.toEntity(),
    );
  }
}
