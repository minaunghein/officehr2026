import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_amendment.freezed.dart';

/// Backend `amendment_type` values supported by the request form.
const List<String> kAmendmentTypes = [
  'MISSED_IN',
  'MISSED_OUT',
  'WRONG_TIME',
  'SYSTEM_ERROR',
  'ON_DUTY',
  'TRAINING',
];

/// Amendment types that do not require requested clock in/out times.
const Set<String> kAmendmentTypesWithoutTime = {'ON_DUTY', 'TRAINING'};

@freezed
abstract class AttendanceAmendment with _$AttendanceAmendment {
  const factory AttendanceAmendment({
    required String id,
    required String userId,
    required String companyId,
    required String dateId,
    required String amendmentType,
    String? requestedClockIn,
    String? requestedClockOut,
    required String reason,
    required String status,
    String? approvedBy,
    required bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? approvedAt,
  }) = _AttendanceAmendment;
}
