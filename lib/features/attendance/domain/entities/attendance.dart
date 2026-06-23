import 'package:freezed_annotation/freezed_annotation.dart';
import 'attendance_status.dart';

part 'attendance.freezed.dart';

@freezed
abstract class Attendance with _$Attendance {
  const factory Attendance({
    required String id,
    required String companyId,
    required String userId,
    required DateTime clockIn,
    required int dateId,
    required int timeId,
    required String clockInBy,
    required bool needApproval,
    AttendanceStatus? status,
    required double latitude,
    required double longitude,
    required String description,
    required bool isSod,
    required bool isEod,
    String? terminalId,
    required bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Attendance;
}
