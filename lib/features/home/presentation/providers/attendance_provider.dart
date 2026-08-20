import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/home/data/datasources/attendance_remote_datasource.dart';
import 'package:office_hr/features/home/data/repositories/attendance_repository_impl.dart';
import 'package:office_hr/features/home/domain/entities/attendance_stats.dart';
import 'package:office_hr/features/home/domain/entities/clock_attendance_response.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';
import 'package:office_hr/features/home/domain/params/clock_attendance_params.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_repository.dart';
import 'package:office_hr/features/home/domain/usecases/clockin_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/clockout_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/get_today_attendance_usecase.dart';
import 'package:office_hr/features/home/presentation/state/attendance_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_provider.g.dart';

// ==================== Datasource ====================
@riverpod
AttendanceRemoteDatasource attendanceDatasource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return AttendanceRemoteDatasourceImpl(apiService: apiService);
}

// ==================== Repository ====================
@riverpod
AttendanceRepository attendanceRepository(Ref ref) {
  final datasource = ref.watch(attendanceDatasourceProvider);
  return AttendanceRepositoryImpl(datasource: datasource);
}

// ==================== Use Cases ====================
@riverpod
ClockinUsecase clockInUsecase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return ClockinUsecase(attendanceRepository: repository);
}

@riverpod
ClockoutUsecase clockOutUsecase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return ClockoutUsecase(attendanceRepository: repository);
}

@riverpod
GetTodayAttendanceUsecase getTodayAttendanceUsecase(Ref ref) {
  final repository = ref.watch(attendanceRepositoryProvider);
  return GetTodayAttendanceUsecase(attendanceRepository: repository);
}

// ==================== Function Providers ====================

@riverpod
Future<AttendanceStats> monthlyAttendanceStats(Ref ref) {
  final now = DateTime.now();
  final start = DateTime.utc(now.year, now.month);
  final end = DateTime.utc(now.year, now.month, now.day);

  return ref
      .read(attendanceRepositoryProvider)
      .getAttendanceStats(start: start, end: end);
}

// ==================== State Management ====================
@riverpod
class AttendanceNotifier extends _$AttendanceNotifier {
  @override
  Future<AttendanceState> build() async {
    final todayAttendance = await _fetchTodayAttendance();
    return AttendanceState(todayAttendance: todayAttendance);
  }

  Future<void> refresh() async {
    final previousState = state.value ?? const AttendanceState();
    state = AsyncData(
      previousState.copyWith(isRefreshing: true, clearError: true),
    );
    try {
      final todayAttendance = await _fetchTodayAttendance();
      state = AsyncData(
        previousState.copyWith(
          todayAttendance: todayAttendance,
          isRefreshing: false,
          clearError: true,
        ),
      );
    } catch (error, stackTrace) {
      state = AsyncData(
        previousState.copyWith(
          isRefreshing: false,
          error: getUserFriendlyError(error),
        ),
      );
      Error.throwWithStackTrace(error, stackTrace);
    }
  }

  Future<TodayAttendance> getTodayAttendance() async {
    await refresh();
    final todayAttendance = state.value?.todayAttendance;
    if (todayAttendance == null) {
      throw StateError('Today attendance is not available.');
    }
    return todayAttendance;
  }

  Future<ClockAttendanceResponse> clockIn([
    ClockAttendanceParams? params,
  ]) async {
    return _clockAction(
      loading: (state) =>
          state.copyWith(isClockInLoading: true, clearError: true),
      complete: (state, todayAttendance) => state.copyWith(
        todayAttendance: todayAttendance,
        isClockInLoading: false,
        clearError: true,
      ),
      fail: (state, error) => state.copyWith(
        isClockInLoading: false,
        error: getUserFriendlyError(error),
      ),
      action: () => ref.read(
        clockInUsecaseProvider,
      )(), // TODO: Add params in the clockInUsecaseProvider read after backend ready
    );
  }

  Future<ClockAttendanceResponse> clockOut([
    ClockAttendanceParams? params,
  ]) async {
    return _clockAction(
      loading: (state) =>
          state.copyWith(isClockOutLoading: true, clearError: true),
      complete: (state, todayAttendance) => state.copyWith(
        todayAttendance: todayAttendance,
        isClockOutLoading: false,
        clearError: true,
      ),
      fail: (state, error) => state.copyWith(
        isClockOutLoading: false,
        error: getUserFriendlyError(error),
      ),
      action: () => ref.read(
        clockOutUsecaseProvider,
      )(), // TODO: Add params in the clockInUsecaseProvider read after backend ready
    );
  }

  Future<ClockAttendanceResponse> breakStart([
    ClockAttendanceParams? params,
  ]) async {
    return _clockAction(
      loading: (state) =>
          state.copyWith(isBreakStartLoading: true, clearError: true),
      complete: (state, todayAttendance) => state.copyWith(
        todayAttendance: todayAttendance,
        isBreakStartLoading: false,
        clearError: true,
      ),
      fail: (state, error) => state.copyWith(
        isBreakStartLoading: false,
        error: getUserFriendlyError(error),
      ),
      action: () => ref.read(attendanceRepositoryProvider).breakStart(params),
    );
  }

  Future<ClockAttendanceResponse> breakEnd([
    ClockAttendanceParams? params,
  ]) async {
    return _clockAction(
      loading: (state) =>
          state.copyWith(isBreakEndLoading: true, clearError: true),
      complete: (state, todayAttendance) => state.copyWith(
        todayAttendance: todayAttendance,
        isBreakEndLoading: false,
        clearError: true,
      ),
      fail: (state, error) => state.copyWith(
        isBreakEndLoading: false,
        error: getUserFriendlyError(error),
      ),
      action: () => ref.read(attendanceRepositoryProvider).breakEnd(params),
    );
  }

  Future<TodayAttendance> _fetchTodayAttendance() {
    return ref.read(getTodayAttendanceUsecaseProvider)();
  }

  Future<ClockAttendanceResponse> _clockAction({
    required AttendanceState Function(AttendanceState state) loading,
    required AttendanceState Function(
      AttendanceState state,
      TodayAttendance todayAttendance,
    )
    complete,
    required AttendanceState Function(AttendanceState state, Object error) fail,
    required Future<ClockAttendanceResponse> Function() action,
  }) async {
    final previousState = state.value ?? const AttendanceState();
    state = AsyncData(loading(previousState));

    try {
      final response = await action();
      final todayAttendance = await _fetchTodayAttendance();
      state = AsyncData(complete(previousState, todayAttendance));
      return response;
    } catch (error) {
      state = AsyncData(fail(previousState, error));
      rethrow;
    }
  }
}
