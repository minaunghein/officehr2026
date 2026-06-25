import 'package:office_hr/features/attendance/data/datasources/attendance_datasource.dart';
import 'package:office_hr/features/attendance/data/mappers/attendance_mapper.dart';
import 'package:office_hr/features/attendance/domain/entities/attendance.dart';
import 'package:office_hr/features/attendance/domain/entities/department_attendances.dart';
import 'package:office_hr/features/attendance/domain/repositories/attendance_repository.dart';

class AttendanceRepositoryImpl implements AttendanceRepository {
  AttendanceRepositoryImpl({required this.datasource});

  final AttendanceDatasource datasource;

  @override
  Future<Attendance> clockIn({
    required double lat,
    required double long,
    bool needApproval = true,
    String? desc,
  }) async {
    final response = await datasource.clockIn(
      lat: lat,
      long: long,
      needApproval: needApproval,
      desc: desc ?? '',
    );
    return response.toEntity();
  }

  @override
  Future<List<Attendance>> getTodayClockIn() async {
    final response = await datasource.getTodayClockIn();
    return response.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<DepartmentAttendances>> getDepartmentAttendances() async {
    final response = await datasource.getDepartmentAttendances();
    return response.map((model) => model.toEntity()).toList();
  }
}
