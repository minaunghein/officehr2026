import 'package:office_hr/features/home/data/datasources/attendance_datasource.dart';
import 'package:office_hr/features/home/data/mappers/attendance_mapper.dart';
import 'package:office_hr/features/home/domain/entities/attendance.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';

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
  Future<List<Attendance>> getTodayClockIn({
    required String date,
  }) async {
    final response = await datasource.getTodayClockIn(date: date);
    return response.map((model) => model.toEntity()).toList();
  }
}
