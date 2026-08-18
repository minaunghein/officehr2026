import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift_day/shift_day.dart';

part 'shift.freezed.dart';

@freezed
abstract class Shift with _$Shift {
  const factory Shift({
    required String id,
    required String title,
    required String code,
    required String type,
    String? description,
    required String defaultStart,
    required String defaultEnd,
    required List<ShiftDay> days,
    String? coreHoursStart,
    String? coreHoursEnd,
    required bool isDefault,
    required String companyId,
    required bool isActive,
    required bool deleted,
    String? deletedAt,
  }) = _Shift;
}
