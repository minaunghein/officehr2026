import 'package:freezed_annotation/freezed_annotation.dart';

part 'clock_request.freezed.dart';

enum ClockPunchType {
  clockIn('CLOCK_IN', 'Clock In'),
  clockOut('CLOCK_OUT', 'Clock Out');

  const ClockPunchType(this.value, this.label);

  final String value;
  final String label;

  static ClockPunchType fromValue(String? value) {
    return ClockPunchType.values.firstWhere(
      (type) => type.value == value?.trim().toUpperCase(),
      orElse: () => ClockPunchType.clockIn,
    );
  }
}

enum ClockRequestStatus {
  pending('PENDING'),
  approved('APPROVED'),
  rejected('REJECTED'),
  cancelled('CANCELLED');

  const ClockRequestStatus(this.value);

  final String value;

  String get label => switch (this) {
    ClockRequestStatus.pending => 'Pending',
    ClockRequestStatus.approved => 'Approved',
    ClockRequestStatus.rejected => 'Rejected',
    ClockRequestStatus.cancelled => 'Cancelled',
  };

  static ClockRequestStatus fromValue(String? value) {
    return ClockRequestStatus.values.firstWhere(
      (status) => status.value == value?.trim().toUpperCase(),
      orElse: () => ClockRequestStatus.pending,
    );
  }
}

enum ClockRequestDecision {
  approved('APPROVED'),
  rejected('REJECTED'),
  cancelled('CANCELLED');

  const ClockRequestDecision(this.value);

  final String value;
}

@freezed
abstract class ClockRequest with _$ClockRequest {
  const ClockRequest._();

  const factory ClockRequest({
    @Default('') String id,
    @Default('') String userId,
    @Default('') String userName,
    @Default('') String branchId,
    @Default('') String branchTitle,
    @Default('') String dateId,
    @Default('') String punchTime,
    @Default(ClockPunchType.clockIn) ClockPunchType punchType,
    double? latitude,
    double? longitude,
    double? accuracy,
    String? locationLabel,
    double? distanceKm,
    double? branchRadiusKm,
    @Default(false) bool autoFlagged,
    @Default('') String reason,
    @Default(ClockRequestStatus.pending) ClockRequestStatus status,
    String? decisionNote,
    @Default('') String deciderName,
    DateTime? decidedAt,
    DateTime? createdAt,
  }) = _ClockRequest;

  bool get isPending => status == ClockRequestStatus.pending;

  bool get isClockIn => punchType == ClockPunchType.clockIn;
}

/// Navigation payload for the clock request details screen. [canDecide]
/// enables the approver actions; the owner's own list passes `false` and
/// gets the cancel action instead.
class ClockRequestRouteArgs {
  const ClockRequestRouteArgs({required this.request, this.canDecide = true});

  final ClockRequest request;
  final bool canDecide;
}
