import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

/// Model for position in work info
@freezed
abstract class PositionModel with _$PositionModel {
  const factory PositionModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    required List<String> titles,
    required String sc,
    required int so,
    required int rank,
    required String remarks,
    required List<String> tags,
    required String createdAt,
    required String updatedAt,
    @JsonKey(name: '__v') required int version,
  }) = _PositionModel;

  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);
}
