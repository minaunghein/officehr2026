import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/data/models/attendance_device_model.dart';
import 'package:office_hr/features/home/data/models/attendance_location_model.dart';
import 'package:office_hr/features/home/domain/entities/attendance_punch.dart';

part 'attendance_punch_model.freezed.dart';
part 'attendance_punch_model.g.dart';

@freezed
abstract class AttendancePunchModel with _$AttendancePunchModel {
  const AttendancePunchModel._();

  const factory AttendancePunchModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(name: 'employee_id') @Default('') String employeeId,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    DateTime? date,
    @JsonKey(name: 'punch_time') @Default('') String punchTime,
    @JsonKey(name: 'punch_type') @Default('') String punchType,
    AttendanceLocationModel? location,
    AttendanceDeviceModel? device,
    @JsonKey(name: 'is_manual') @Default(false) bool isManual,
    @Default(false) bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _AttendancePunchModel;

  factory AttendancePunchModel.fromJson(Map<String, dynamic> json) =>
      _$AttendancePunchModelFromJson(json);

  AttendancePunch toEntity() => AttendancePunch(
    id: id,
    employeeId: employeeId,
    companyId: companyId,
    date: date,
    punchTime: punchTime,
    punchType: punchType,
    location: location?.toEntity(),
    device: device?.toEntity(),
    isManual: isManual,
    deleted: deleted,
    createdAt: createdAt,
    updatedAt: updatedAt,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
