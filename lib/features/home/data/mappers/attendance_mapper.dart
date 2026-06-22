import 'package:office_hr/features/home/data/models/attendance_model.dart';
import 'package:office_hr/features/home/data/models/attendance_status_model.dart';
import 'package:office_hr/features/home/domain/entities/attendance.dart';
import 'package:office_hr/features/home/domain/entities/attendance_status.dart';

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
