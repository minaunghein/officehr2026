import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';

part 'clock_request_model.freezed.dart';
part 'clock_request_model.g.dart';

@freezed
abstract class ClockRequestModel with _$ClockRequestModel {
  const ClockRequestModel._();

  const factory ClockRequestModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(name: 'user_id') @Default('') String userId,
    @JsonKey(name: 'branch_id') @Default('') String branchId,
    @JsonKey(name: 'date_id') @Default('') String dateId,
    @JsonKey(name: 'punch_time') @Default('') String punchTime,
    @JsonKey(name: 'punch_type') @Default('CLOCK_IN') String punchType,
    double? latitude,
    double? longitude,
    double? accuracy,
    @JsonKey(name: 'location_label') String? locationLabel,
    @JsonKey(name: 'distance_km') double? distanceKm,
    @JsonKey(name: 'branch_radius_km') double? branchRadiusKm,
    @JsonKey(name: 'auto_flagged') @Default(false) bool autoFlagged,
    @Default('') String reason,
    @Default('PENDING') String status,
    @JsonKey(name: 'decision_note') String? decisionNote,
    @JsonKey(name: 'decided_at', fromJson: parseLocalDateTime)
    DateTime? decidedAt,
    @JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,
    ClockRequestUserModel? user,
    ClockRequestBranchModel? branch,
    ClockRequestUserModel? decider,
  }) = _ClockRequestModel;

  factory ClockRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ClockRequestModelFromJson(json);

  ClockRequest toEntity() => ClockRequest(
    id: id,
    userId: userId,
    userName: user?.username ?? '',
    branchId: branchId,
    branchTitle: branch?.title ?? '',
    dateId: dateId,
    punchTime: punchTime,
    punchType: ClockPunchType.fromValue(punchType),
    latitude: latitude,
    longitude: longitude,
    accuracy: accuracy,
    locationLabel: locationLabel,
    distanceKm: distanceKm,
    branchRadiusKm: branchRadiusKm,
    autoFlagged: autoFlagged,
    reason: reason,
    status: ClockRequestStatus.fromValue(status),
    decisionNote: decisionNote,
    deciderName: decider?.username ?? '',
    decidedAt: decidedAt,
    createdAt: createdAt,
  );
}

@freezed
abstract class ClockRequestUserModel with _$ClockRequestUserModel {
  const factory ClockRequestUserModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String username,
    @Default('') String email,
  }) = _ClockRequestUserModel;

  factory ClockRequestUserModel.fromJson(Map<String, dynamic> json) =>
      _$ClockRequestUserModelFromJson(json);
}

@freezed
abstract class ClockRequestBranchModel with _$ClockRequestBranchModel {
  const factory ClockRequestBranchModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String title,
    @Default('') String code,
  }) = _ClockRequestBranchModel;

  factory ClockRequestBranchModel.fromJson(Map<String, dynamic> json) =>
      _$ClockRequestBranchModelFromJson(json);
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
