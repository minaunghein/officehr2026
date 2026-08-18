import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/position/position.dart';

part 'position_model.freezed.dart';
part 'position_model.g.dart';

@freezed
abstract class PositionModel with _$PositionModel {
  const PositionModel._();

  const factory PositionModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String title,
    @JsonKey(name: 'title_mm') @Default('') String titleMm,
    @Default('') String code,
    @Default(0) int level,
    @Default('') String description,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'is_active') @Default(false) bool isActive,
    @Default(false) bool deleted,
    String? deletedAt,
  }) = _PositionModel;

  factory PositionModel.fromJson(Map<String, dynamic> json) =>
      _$PositionModelFromJson(json);

  Position toEntity() => Position(
    id: id,
    title: title,
    titleMm: titleMm,
    code: code,
    level: level,
    description: description,
    companyId: companyId,
    isActive: isActive,
    deleted: deleted,
    deletedAt: deletedAt,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
