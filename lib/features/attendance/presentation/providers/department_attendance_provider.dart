import 'package:office_hr/features/attendance/domain/entities/department_attendances.dart';
import 'package:office_hr/features/attendance/presentation/providers/attendance_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'department_attendance_provider.g.dart';

@riverpod
Future<List<DepartmentAttendances>> departmentAttendances(Ref ref) async {
  final usecase = ref.watch(getDepartmentAttendanceProvider);
  final data = await usecase.call();
  return data;
}
