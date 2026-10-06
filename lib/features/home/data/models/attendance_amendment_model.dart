import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';

part 'attendance_amendment_model.freezed.dart';
part 'attendance_amendment_model.g.dart';

@freezed
abstract class AttendanceAmendmentModel with _$AttendanceAmendmentModel {
  const AttendanceAmendmentModel._();

  const factory AttendanceAmendmentModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(name: 'user_id') @Default('') String userId,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'date_id') @Default('') String dateId,
    @JsonKey(name: 'amendment_type') @Default('') String amendmentType,
    @JsonKey(name: 'requested_clock_in') String? requestedClockIn,
    @JsonKey(name: 'requested_clock_out') String? requestedClockOut,
    @Default('') String reason,
    @Default('') String status,
    @JsonKey(name: 'approved_by') String? approvedBy,
    @Default(false) bool deleted,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt,
    @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime)
    DateTime? approvedAt,
  }) = _AttendanceAmendmentModel;

  factory AttendanceAmendmentModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceAmendmentModelFromJson(json);

  AttendanceAmendment toEntity() => AttendanceAmendment(
    id: id,
    userId: userId,
    companyId: companyId,
    dateId: dateId,
    amendmentType: amendmentType,
    requestedClockIn: requestedClockIn,
    requestedClockOut: requestedClockOut,
    reason: reason,
    status: status,
    approvedBy: approvedBy,
    deleted: deleted,
    createdAt: createdAt,
    updatedAt: updatedAt,
    approvedAt: approvedAt,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
