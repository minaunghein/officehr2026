import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/overtime/data/models/overtime_json.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';

part 'overtime_request_model.freezed.dart';
part 'overtime_request_model.g.dart';

@freezed
abstract class OvertimeRequestModel with _$OvertimeRequestModel {
  const OvertimeRequestModel._();

  const factory OvertimeRequestModel({
    @JsonKey(readValue: readMongoId) @Default('') String id,
    @JsonKey(name: 'user_id') @Default('') String userId,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? date,
    @JsonKey(name: 'start_time') @Default('') String startTime,
    @JsonKey(name: 'end_time') @Default('') String endTime,
    @JsonKey(name: 'ot_type') @Default('OT1') String otType,
    @Default('') String reason,
    @JsonKey(name: 'approved_hours') double? approvedHours,
    @Default('PENDING') String status,
    @JsonKey(name: 'approved_by') String? approvedBy,
    @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime)
    DateTime? approvedAt,
    @JsonKey(name: 'rejection_reason') String? rejectionReason,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt,
    OvertimeRequestUserModel? user,
  }) = _OvertimeRequestModel;

  factory OvertimeRequestModel.fromJson(Map<String, dynamic> json) =>
      _$OvertimeRequestModelFromJson(json);

  OvertimeRequest toEntity() => OvertimeRequest(
    id: id,
    userId: userId.isNotEmpty ? userId : (user?.id ?? ''),
    companyId: companyId,
    requesterName: user?.username ?? '',
    requesterEmail: user?.email ?? '',
    date: date,
    startTime: startTime,
    endTime: endTime,
    otType: OvertimeType.fromValue(otType),
    reason: reason,
    approvedHours: approvedHours,
    status: OvertimeStatus.fromValue(status),
    approvedBy: approvedBy,
    approvedAt: approvedAt,
    rejectionReason: rejectionReason,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}

/// The requester account that may be embedded in `/all` items.
@freezed
abstract class OvertimeRequestUserModel with _$OvertimeRequestUserModel {
  const factory OvertimeRequestUserModel({
    @JsonKey(readValue: readMongoId) @Default('') String id,
    @Default('') String username,
    @Default('') String email,
  }) = _OvertimeRequestUserModel;

  factory OvertimeRequestUserModel.fromJson(Map<String, dynamic> json) =>
      _$OvertimeRequestUserModelFromJson(json);
}
