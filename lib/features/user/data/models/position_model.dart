import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

@freezed
abstract class PositionModel with _$PositionModel {
  const factory PositionModel({
    @JsonKey(name: '_id') @Default('') String id,
    @Default('') String company,
    @Default([]) List<String> titles,
    @Default('') String sc,
    @Default(0) int so,
    @Default(0) int rank,
    @JsonKey(fromJson: _parsePositionRemarks) @Default('') String remarks,
    @Default([]) List<String> tags,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _PositionModel;

  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);
}

String _parsePositionRemarks(dynamic json) {
  if (json == null) return '';
  return json.toString();
}
