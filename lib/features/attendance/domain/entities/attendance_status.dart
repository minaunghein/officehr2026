import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_status.freezed.dart';

@freezed
abstract class AttendanceStatus with _$AttendanceStatus {
  const factory AttendanceStatus({
    required String id,
    required String companyId,
    required int statusId,
    required List<String> titles,
    required String shortCode,
    @Default('') String remarks,
    @Default([]) List<String> tags,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? recordId,
  }) = _AttendanceStatus;
}
