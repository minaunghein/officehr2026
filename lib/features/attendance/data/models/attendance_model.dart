import 'package:freezed_annotation/freezed_annotation.dart';
import 'attendance_status_model.dart';

part 'attendance_model.freezed.dart';
part 'attendance_model.g.dart';

@freezed
abstract class AttendanceModel with _$AttendanceModel {
  const factory AttendanceModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    @JsonKey(name: 'userid') required String userId,
    @JsonKey(name: 'clockin') required DateTime clockIn,
    @JsonKey(name: 'dateid') required int dateId,
    @JsonKey(name: 'timeid') required int timeId,
    @JsonKey(name: 'clockinby') required String clockInBy,
    @JsonKey(name: 'needapproval') required bool needApproval,
    AttendanceStatusModel? status,
    required double lat,
    required double long,
    @JsonKey(name: 'desc') required String description,
    @JsonKey(name: 'issod') required bool isSod,
    @JsonKey(name: 'iseod') required bool isEod,
    @JsonKey(name: 'terminalid') String? terminalId,
    @Default(false) bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _AttendanceModel;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceModelFromJson(json);
}
