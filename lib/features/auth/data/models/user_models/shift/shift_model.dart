import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/data/models/user_models/shift_day/shift_day_model.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift/shift.dart';

part 'shift_model.freezed.dart';
part 'shift_model.g.dart';

@freezed
abstract class ShiftModel with _$ShiftModel {
  const ShiftModel._();

  const factory ShiftModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @Default('') String title,
    @Default('') String code,
    @Default('') String type,
    String? description,
    @JsonKey(name: 'default_start') @Default('') String defaultStart,
    @JsonKey(name: 'default_end') @Default('') String defaultEnd,
    @Default(<ShiftDayModel>[]) List<ShiftDayModel> days,
    @JsonKey(name: 'core_hours_start') String? coreHoursStart,
    @JsonKey(name: 'core_hours_end') String? coreHoursEnd,
    @JsonKey(name: 'is_default') @Default(false) bool isDefault,
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'is_active') @Default(false) bool isActive,
    @Default(false) bool deleted,
    String? deletedAt,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);

  Shift toEntity() => Shift(
    id: id,
    title: title,
    code: code,
    type: type,
    description: description,
    defaultStart: defaultStart,
    defaultEnd: defaultEnd,
    days: days.map((day) => day.toEntity()).toList(),
    coreHoursStart: coreHoursStart,
    coreHoursEnd: coreHoursEnd,
    isDefault: isDefault,
    companyId: companyId,
    isActive: isActive,
    deleted: deleted,
    deletedAt: deletedAt,
  );
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
