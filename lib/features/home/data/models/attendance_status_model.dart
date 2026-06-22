import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance_status_model.freezed.dart';
part 'attendance_status_model.g.dart';

@freezed
abstract class AttendanceStatusModel with _$AttendanceStatusModel {
  const factory AttendanceStatusModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    required int statusid,
    required List<String> titles,
    @JsonKey(name: 'sc') required String shortCode,
    @Default('') String remarks,
    @Default([]) List<String> tags,
    @JsonKey(name: 'crdAt') DateTime? createdAt,
    @JsonKey(name: 'updAt') DateTime? updatedAt,
    @JsonKey(name: 'id') int? recordId,
    @JsonKey(name: '__v') int? version,
  }) = _AttendanceStatusModel;

  factory AttendanceStatusModel.fromJson(Map<String, dynamic> json) =>
      _$AttendanceStatusModelFromJson(json);
}
