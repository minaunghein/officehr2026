import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/auth/data/models/user_models/geofence/geofence_model.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/branch/branch.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

@freezed
abstract class BranchModel with _$BranchModel {
  const BranchModel._();

  const factory BranchModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String title,
    @Default('') String code,
    required GeofenceModel geofence,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'is_active') @Default(false) bool isActive,
    @Default(false) bool deleted,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);

  Branch toEntity() => Branch(
    id: id,
    title: title,
    code: code,
    geofence: geofence.toEntity(),
    companyId: companyId,
    isActive: isActive,
    deleted: deleted,
    deletedAt: normalizeLocalDateTimeString(deletedAt),
    createdAt: normalizeLocalDateTimeString(createdAt),
    updatedAt: normalizeLocalDateTimeString(updatedAt),
    version: version,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
