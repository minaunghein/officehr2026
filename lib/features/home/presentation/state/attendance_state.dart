import 'package:easy_localization/easy_localization.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';

class AttendanceState {
  final TodayAttendance? todayAttendance;
  final bool isRefreshing;
  final bool isClockInLoading;
  final bool isClockOutLoading;
  final bool isBreakStartLoading;
  final bool isBreakEndLoading;
  final String? error;

  const AttendanceState({
    this.todayAttendance,
    this.isRefreshing = false,
    this.isClockInLoading = false,
    this.isClockOutLoading = false,
    this.isBreakStartLoading = false,
    this.isBreakEndLoading = false,
    this.error,
  });

  bool get isClockedIn => todayAttendance?.clockedIn ?? false;

  bool get isClockedOut => !isClockedIn;

  bool get isBreakInProgress => todayAttendance?.breakInProgress ?? false;

  bool get hasCompletedBreak =>
      breakStartTime != null &&
      breakStartTime!.isNotEmpty &&
      breakEndTime != null &&
      breakEndTime!.isNotEmpty;

  bool get canClockIn => !isClockedIn && !hasActionLoading;

  bool get canClockOut => isClockedIn && !hasActionLoading;

  bool get canBreakStart =>
      isClockedIn &&
      !isBreakInProgress &&
      !hasCompletedBreak &&
      !hasActionLoading;

  bool get canBreakEnd =>
      isClockedIn &&
      isBreakInProgress &&
      !hasCompletedBreak &&
      !hasActionLoading;

  bool get hasActionLoading =>
      isClockInLoading ||
      isClockOutLoading ||
      isBreakStartLoading ||
      isBreakEndLoading;

  String? get clockInTime => todayAttendance?.clockIn;

  String? get clockOutTime => todayAttendance?.clockOut;

  String? get breakStartTime => todayAttendance?.breakStart;

  String? get breakEndTime => todayAttendance?.breakEnd;

  String get statusText {
    if (isClockedIn) {
      return (clockInTime != null && clockInTime!.isNotEmpty)
          ? 'Currently Clocked In'.tr()
          : 'Today Not Clocked In'.tr();
    }

    if (clockOutTime != null && clockOutTime!.isNotEmpty) {
      return 'Clocked Out Today'.tr();
    }

    if (clockInTime != null && clockInTime!.isNotEmpty) {
      return 'Currently Clocked Out'.tr();
    }

    return 'Today Not Clocked In'.tr();
  }

  String get primaryClockButtonText =>
      isClockedIn ? 'Clock Out'.tr() : 'Clock In'.tr();

  bool get isPrimaryClockButtonLoading =>
      isClockedIn ? isClockOutLoading : isClockInLoading;

  String get primaryClockTimeText {
    if (isClockedIn) {
      if (clockInTime != null && clockInTime!.isNotEmpty) {
        return 'Clocked in at {time}'.tr(
          namedArgs: {'time': clockInTime ?? '--:--'},
        );
      }
      if (clockOutTime != null && clockOutTime!.isNotEmpty) {
        return 'Clocked out at {time}'.tr(
          namedArgs: {'time': clockOutTime ?? '--:--'},
        );
      }
    }
    return '--:--';
  }

  AttendanceState copyWith({
    TodayAttendance? todayAttendance,
    bool clearTodayAttendance = false,
    bool? isRefreshing,
    bool? isClockInLoading,
    bool? isClockOutLoading,
    bool? isBreakStartLoading,
    bool? isBreakEndLoading,
    String? error,
    bool clearError = false,
  }) {
    return AttendanceState(
      todayAttendance: clearTodayAttendance
          ? null
          : todayAttendance ?? this.todayAttendance,
      isRefreshing: isRefreshing ?? this.isRefreshing,
      isClockInLoading: isClockInLoading ?? this.isClockInLoading,
      isClockOutLoading: isClockOutLoading ?? this.isClockOutLoading,
      isBreakStartLoading: isBreakStartLoading ?? this.isBreakStartLoading,
      isBreakEndLoading: isBreakEndLoading ?? this.isBreakEndLoading,
      error: clearError ? null : error ?? this.error,
    );
  }
}
