class MasterAttendance {
  const MasterAttendance({
    required this.id,
    required this.dateId,
    required this.isPublicHoliday,
    required this.clockIn,
    required this.clockOut,
    required this.amin,
    required this.amout,
    required this.adjin,
    required this.adjout,
    required this.restStart,
    required this.restEnd,
    required this.workingHours,
    required this.ot1,
    required this.ot2,
    required this.ot3,
    required this.late,
    required this.under,
    required this.clockInBy,
    required this.remark,
    required this.leaveTitle,
  });

  final String id;
  final int dateId;
  final bool isPublicHoliday;
  final DateTime? clockIn;
  final DateTime? clockOut;
  final int amin;
  final int amout;
  final int adjin;
  final int adjout;
  final int restStart;
  final int restEnd;
  final num workingHours;
  final num ot1;
  final num ot2;
  final num ot3;
  final num late;
  final num under;
  final String? clockInBy;
  final String? remark;
  final String? leaveTitle;

  factory MasterAttendance.fromJson(Map<String, dynamic> json) {
    final leaveType = json['leavetype'];
    return MasterAttendance(
      id: json['_id']?.toString() ?? '',
      dateId: _asInt(json['dateid']),
      isPublicHoliday: json['isph'] == true,
      clockIn: _asDateTime(json['clockin']),
      clockOut: _asDateTime(json['clockout']),
      amin: _asInt(json['amin']),
      amout: _asInt(json['amout']),
      adjin: _asInt(json['adjin']),
      adjout: _asInt(json['adjout']),
      restStart: _asInt(json['reststart']),
      restEnd: _asInt(json['restend']),
      workingHours: _asNum(json['whr']),
      ot1: _asNum(json['ot1']),
      ot2: _asNum(json['ot2']),
      ot3: _asNum(json['ot3']),
      late: _asNum(json['late']),
      under: _asNum(json['under']),
      clockInBy: _asNullableString(json['clockinby']),
      remark: json['remark']?.toString(),
      leaveTitle: leaveType is Map ? leaveType['leavetitle']?.toString() : null,
    );
  }

  bool get hasClockIn => adjin > 0;
  bool get hasClockOut => adjout > 0;
  bool get hasAdminTime => amin > 0 || amout > 0;
  bool get isAbsent => !hasClockIn && !hasClockOut && leaveTitle != null;
  bool get isComplete => hasClockIn && hasClockOut;
  num get totalOt => ot1 + ot2 + ot3;
}

int _asInt(dynamic value) {
  if (value is int) return value;
  if (value is num) return value.toInt();
  return int.tryParse(value?.toString() ?? '') ?? 0;
}

num _asNum(dynamic value) {
  if (value is num) return value;
  return num.tryParse(value?.toString() ?? '') ?? 0;
}

DateTime? _asDateTime(dynamic value) {
  if (value == null) return null;
  return DateTime.tryParse(value.toString())?.toLocal();
}

String? _asNullableString(dynamic value) {
  final text = value?.toString().trim();
  if (text == null || text.isEmpty) return null;
  return text;
}
