import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/home/data/repositories/attendance_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_provider.g.dart';

class AttendanceState {
  final bool isClockedIn;
  final DateTime? clockTime;
  final bool isLoading;
  final String? error;

  AttendanceState({
    this.isClockedIn = false,
    this.clockTime,
    this.isLoading = false,
    this.error,
  });

  AttendanceState copyWith({
    bool? isClockedIn,
    DateTime? clockTime,
    bool? isLoading,
    String? error,
  }) {
    return AttendanceState(
      isClockedIn: isClockedIn ?? this.isClockedIn,
      clockTime: clockTime ?? this.clockTime,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

@riverpod
AttendanceRepository attendanceRepository(Ref ref) {
  return AttendanceRepository(ref.watch(apiServiceProvider));
}

@riverpod
class AttendanceNotifier extends _$AttendanceNotifier {
  @override
  AttendanceState build() {
    return AttendanceState();
  }

  Future<void> toggleClockIn({
    required double lat,
    required double long,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final repo = ref.read(attendanceRepositoryProvider);

      await repo.clockIn(lat: lat, long: long);

      final newClockedInState = !state.isClockedIn;

      state = state.copyWith(
        isClockedIn: newClockedInState,
        clockTime: DateTime.now(),
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
