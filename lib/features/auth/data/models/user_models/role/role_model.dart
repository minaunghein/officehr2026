import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/role/role.dart';

part 'role_model.freezed.dart';
part 'role_model.g.dart';

@freezed
abstract class RoleModel with _$RoleModel {
  const RoleModel._();

  const factory RoleModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String name,
    @JsonKey(name: 'name_mm') String? nameMm,
    @Default(0) int rank,
    @JsonKey(name: 'is_platform') @Default(false) bool isPlatform,
  }) = _RoleModel;

  factory RoleModel.fromJson(Map<String, dynamic> json) =>
      _$RoleModelFromJson(json);

  Role toEntity() => Role(
    id: id,
    name: name,
    nameMm: nameMm,
    rank: rank,
    isPlatform: isPlatform,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
