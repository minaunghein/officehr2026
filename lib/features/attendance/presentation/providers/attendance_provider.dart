import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/features/attendance/data/datasources/attendance_datasource.dart';
import 'package:office_hr/features/attendance/data/repositories/attendance_repository.dart';
import 'package:office_hr/features/attendance/domain/entities/attendance.dart';
import 'package:office_hr/features/attendance/domain/repositories/attendance_repository.dart';
import 'package:office_hr/features/attendance/domain/usecases/clock_in_usecase.dart';
import 'package:office_hr/features/attendance/domain/usecases/get_today_clock_in_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_provider.g.dart';

class AttendanceState {
  final bool isClockedIn;
  final DateTime? clockTime;
  final bool isLoading;
  final String? error;
  final bool isSod;
  final bool isEod;
  final List<Attendance> todayAttendances;

  AttendanceState({
    this.isClockedIn = false,
    this.clockTime,
    this.isLoading = false,
    this.error,
    this.isSod = false,
    this.isEod = false,
    this.todayAttendances = const [],
  });

  AttendanceState copyWith({
    bool? isClockedIn,
    DateTime? clockTime,
    bool? isLoading,
    String? error,
    bool? isSod,
    bool? isEod,
    List<Attendance>? todayAttendances,
  }) {
    return AttendanceState(
      isClockedIn: isClockedIn ?? this.isClockedIn,
      clockTime: clockTime ?? this.clockTime,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      isSod: isSod ?? this.isSod,
      isEod: isEod ?? this.isEod,
      todayAttendances: todayAttendances ?? this.todayAttendances,
    );
  }
}

// ==================== Datasource ====================
@riverpod
AttendanceDatasource attendanceDatasource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return AttendanceDatasourceImpl(apiService);
}

// ==================== Repository ====================
@riverpod
AttendanceRepository attendanceRepository(Ref ref) {
  final datasource = ref.watch(attendanceDatasourceProvider);
  return AttendanceRepositoryImpl(datasource: datasource);
}

// ==================== Use Cases ====================
@riverpod
ClockInUsecase clockInUsecase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return ClockInUsecase(repository: repository);
}

@riverpod
GetTodayClockInUsecase getTodayClockInUsecase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return GetTodayClockInUsecase(repository: repository);
}

// ==================== State Management ====================
@riverpod
class AttendanceNotifier extends _$AttendanceNotifier {
  @override
  AttendanceState build() {
    Future.microtask(() => checkTodayAttendance());
    return AttendanceState(isLoading: true);
  }

  Future<void> checkTodayAttendance() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final usecase = ref.read(getTodayClockInUsecaseProvider);
      final now = DateTime.now();
      final dateStr = now.toUtc().toIso8601String();

      final List<Attendance> fetched = await usecase(date: dateStr);
      final List<Attendance> attendances = fetched
          .where((a) => a.isSod || a.isEod)
          .toList();

      if (attendances.isEmpty) {
        state = state.copyWith(
          isClockedIn: false,
          clockTime: null,
          isSod: false,
          isEod: false,
          todayAttendances: [],
          isLoading: false,
        );
        return;
      }

      final sorted = List<Attendance>.from(attendances)
        ..sort((a, b) => b.clockIn.compareTo(a.clockIn));

      final latest = sorted.first;

      state = state.copyWith(
        isClockedIn: latest.isSod,
        clockTime: latest.clockIn,
        isSod: latest.isSod,
        isEod: latest.isEod,
        todayAttendances: sorted,
        isLoading: false,
      );
    } catch (e, stack) {
      AppLogger.e('checkTodayAttendance failed', error: e, stack: stack);
      state = state.copyWith(
        isLoading: false,
        isClockedIn: false,
        todayAttendances: [],
      );
    }
  }

  Future<void> toggleClockIn({
    required double lat,
    required double long,
    bool needApproval = false,
    String? desc,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final usecase = ref.read(clockInUsecaseProvider);

      final Attendance attendance = await usecase(
        lat: lat,
        long: long,
        needApproval: needApproval,
        desc: desc,
      );

      final newClockedInState = attendance.isSod;

      final updated = state.todayAttendances.length < 2
          ? [attendance, ...state.todayAttendances]
          : [attendance, ...state.todayAttendances.sublist(1)];

      state = state.copyWith(
        isClockedIn: newClockedInState,
        clockTime: attendance.clockIn,
        isSod: attendance.isSod,
        isEod: attendance.isEod,
        todayAttendances: updated,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
