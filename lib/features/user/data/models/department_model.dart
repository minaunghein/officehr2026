import 'package:freezed_annotation/freezed_annotation.dart';

part 'department_model.freezed.dart';
part 'department_model.g.dart';

@freezed
abstract class DepartmentModel with _$DepartmentModel {
  const factory DepartmentModel({
    @JsonKey(name: '_id') @Default('') String id,
    @Default('') String company,
    @Default([]) List<String> titles,
    @Default('') String sc,
    @Default(0) int so,
    @JsonKey(fromJson: _parseRemarks) @Default('') String remarks,
    @Default([]) List<String> tags,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _DepartmentModel;

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      _$DepartmentModelFromJson(json);
}

String _parseRemarks(dynamic json) {
  if (json == null) return '';
  return json.toString();
}
