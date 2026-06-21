import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/domain/entities/working_day.dart';

part 'shift.freezed.dart';

@freezed
abstract class Shift with _$Shift {
  const factory Shift({
    required String id,
    required String companyId,
    required String shiftId,
    required String late1Symbol,
    required String late2Symbol,
    required String late3Symbol,
    required String absenceSymbol,
    required String halfDaySymbol,
    String? description,
    required String unpaidSymbol,
    required int intervalMinutes,
    required bool isNightShift,
    required bool isDefault,
    required bool otStartBase,
    required List<WorkingDay> workingDays,
    required List<String> tags,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Shift;
}
