import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

/// Model for department in work info
@freezed
abstract class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    required List<String> titles,
    required String sc,
    required int so,
    required String remarks,
    required List<String> tags,
    required String createdAt,
    required String updatedAt,
    @JsonKey(name: '__v') required int version,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);
}
