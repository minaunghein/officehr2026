import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/branch/branch.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/department/department.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/position/position.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift/shift.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/supervisor/supervisor.dart';

part 'work_info.freezed.dart';

@freezed
abstract class WorkInfo with _$WorkInfo {
  const factory WorkInfo({
    required String employeeCode,
    required String departmentId,
    required String positionId,
    required String branchId,
    required String shiftId,
    String? supervisorId,
    String? employmentDate,
    String? probationEndDate,
    String? resignationDate,
    required String employmentStatus,
    required String employmentType,
    required String workMode,
    required String cardId,
    required String grade,
    Department? department,
    Position? position,
    Branch? branch,
    Shift? shift,
    Supervisor? supervisor,
  }) = _WorkInfo;
}
