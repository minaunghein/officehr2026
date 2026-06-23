import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/domain/entities/branch.dart';
import 'package:office_hr/features/user/domain/entities/department.dart';
import 'package:office_hr/features/user/domain/entities/position.dart';
import 'package:office_hr/features/user/domain/entities/shift.dart';
import 'package:office_hr/features/user/domain/entities/supervisor.dart';

part 'work_info.freezed.dart';

/// Entity for work information
@freezed
abstract class WorkInfo with _$WorkInfo {
  const factory WorkInfo({
    required String id,
    required String employeeCodePrefix,
    required int employeeCode,
    required int cardId,
    required int grade,
    required String employmentDate,
    required String probationEndDate,
    required int employmentStatus,
    required bool isResigned,
    required String resignedDate,
    required Position position,
    required Department department,
    required bool isActive,
    Supervisor? supervisor,
    Shift? shift,
    required Branch branch,
  }) = _WorkInfo;
}
