import 'package:freezed_annotation/freezed_annotation.dart';

part 'overtime_request.freezed.dart';

enum OvertimeStatus {
  pending('PENDING', 'Pending'),
  approved('APPROVED', 'Approved'),
  rejected('REJECTED', 'Rejected'),
  cancelled('CANCELLED', 'Cancelled'),
  unknown('UNKNOWN', 'Unknown');

  const OvertimeStatus(this.value, this.label);

  final String value;
  final String label;

  static OvertimeStatus fromValue(String? value) {
    return OvertimeStatus.values.firstWhere(
      (status) => status.value == value?.trim().toUpperCase(),
      orElse: () => OvertimeStatus.unknown,
    );
  }
}

enum OvertimeType {
  ot1('OT1'),
  ot2('OT2'),
  ot3('OT3');

  const OvertimeType(this.value);

  final String value;

  static OvertimeType fromValue(String? value) {
    return OvertimeType.values.firstWhere(
      (type) => type.value == value?.trim().toUpperCase(),
      orElse: () => OvertimeType.ot1,
    );
  }
}

/// Decision a manager sends to the overtime status endpoint.
enum OvertimeDecision {
  approved('APPROVED'),
  rejected('REJECTED');

  const OvertimeDecision(this.value);

  final String value;
}

@freezed
abstract class OvertimeRequest with _$OvertimeRequest {
  const OvertimeRequest._();

  const factory OvertimeRequest({
    @Default('') String id,
    @Default('') String userId,
    @Default('') String companyId,
    @Default('') String requesterName,
    @Default('') String requesterEmail,
    DateTime? date,
    @Default('') String startTime,
    @Default('') String endTime,
    @Default(OvertimeType.ot1) OvertimeType otType,
    @Default('') String reason,
    double? approvedHours,
    @Default(OvertimeStatus.pending) OvertimeStatus status,
    String? approvedBy,
    DateTime? approvedAt,
    String? rejectionReason,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _OvertimeRequest;

  bool get isPending => status == OvertimeStatus.pending;

  /// Best available label for who submitted the request (falls back to the
  /// account email when the API does not return a name).
  String get requesterLabel {
    if (requesterName.trim().isNotEmpty) return requesterName;
    if (requesterEmail.trim().isNotEmpty) return requesterEmail;
    return 'Employee';
  }
}
