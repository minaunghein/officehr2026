import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/leave/data/datasources/leave_remote_datasource.dart';
import 'package:office_hr/features/leave/data/repositories/leave_repository_impl.dart';
import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/domain/entities/leave_type.dart';
import 'package:office_hr/features/leave/domain/entities/uploaded_file.dart';
import 'package:office_hr/features/leave/domain/repositories/leave_repository.dart';
import 'package:office_hr/features/leave/domain/usecases/create_leave_request_usecase.dart';
import 'package:office_hr/features/leave/domain/usecases/get_all_leave_requests_usecase.dart';
import 'package:office_hr/features/leave/domain/usecases/get_leave_balances_usecase.dart';
import 'package:office_hr/features/leave/domain/usecases/get_leave_requests_usecase.dart';
import 'package:office_hr/features/leave/domain/usecases/get_leave_types_usecase.dart';
import 'package:office_hr/features/leave/domain/usecases/update_leave_request_status_usecase.dart';
import 'package:office_hr/features/leave/domain/usecases/upload_file_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'leave_providers.g.dart';

// ==================== Data Source ====================
@riverpod
LeaveRemoteDataSource leaveRemoteDataSource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  final config = ref.watch(apiConfigProvider);
  return LeaveRemoteDataSourceImpl(apiService, config.baseUrl);
}

// ==================== Repository ====================
@riverpod
LeaveRepository leaveRepository(Ref ref) {
  return LeaveRepositoryImpl(ref.watch(leaveRemoteDataSourceProvider));
}

// ==================== Use Cases ====================
@riverpod
GetLeaveBalancesUsecase getLeaveBalancesUsecase(Ref ref) {
  return GetLeaveBalancesUsecase(ref.watch(leaveRepositoryProvider));
}

@riverpod
GetLeaveRequestsUsecase getLeaveRequestsUsecase(Ref ref) {
  return GetLeaveRequestsUsecase(ref.watch(leaveRepositoryProvider));
}

@riverpod
GetAllLeaveRequestsUsecase getAllLeaveRequestsUsecase(Ref ref) {
  return GetAllLeaveRequestsUsecase(ref.watch(leaveRepositoryProvider));
}

@riverpod
UpdateLeaveRequestStatusUsecase updateLeaveRequestStatusUsecase(Ref ref) {
  return UpdateLeaveRequestStatusUsecase(ref.watch(leaveRepositoryProvider));
}

@riverpod
GetLeaveTypesUsecase getLeaveTypesUsecase(Ref ref) {
  return GetLeaveTypesUsecase(ref.watch(leaveRepositoryProvider));
}

@riverpod
CreateLeaveRequestUsecase createLeaveRequestUsecase(Ref ref) {
  return CreateLeaveRequestUsecase(ref.watch(leaveRepositoryProvider));
}

@riverpod
UploadFileUsecase uploadFileUsecase(Ref ref) {
  return UploadFileUsecase(ref.watch(leaveRepositoryProvider));
}

String _currentEmployeeId(Ref ref) {
  final session = ref.read(currentUserProvider).value;
  return session?.employee?.id ?? '';
}

// ==================== State ====================

@Riverpod(keepAlive: true)
class LeaveBalancesNotifier extends _$LeaveBalancesNotifier {
  @override
  Future<List<LeaveBalance>> build() async {
    ref.watch(currentUserIdProvider);
    return _fetch();
  }

  Future<List<LeaveBalance>> _fetch() async {
    final usecase = ref.read(getLeaveBalancesUsecaseProvider);
    return usecase();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }
}

@Riverpod(keepAlive: true)
class LeaveRequestsNotifier extends _$LeaveRequestsNotifier {
  @override
  Future<List<LeaveRequest>> build() async {
    ref.watch(currentUserIdProvider);
    return _fetch();
  }

  Future<List<LeaveRequest>> _fetch() async {
    final usecase = ref.read(getLeaveRequestsUsecaseProvider);
    return usecase();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }
}

@Riverpod(keepAlive: true)
class AllLeaveRequestsNotifier extends _$AllLeaveRequestsNotifier {
  @override
  Future<List<LeaveRequest>> build() async {
    ref.watch(currentUserIdProvider);
    return _fetch();
  }

  Future<List<LeaveRequest>> _fetch() async {
    final usecase = ref.read(getAllLeaveRequestsUsecaseProvider);
    return usecase();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }
}

@riverpod
class UpdateLeaveRequestStatusNotifier
    extends _$UpdateLeaveRequestStatusNotifier {
  @override
  FutureOr<void> build() {}

  /// Approves or rejects [id] and returns the updated request. Throws on
  /// failure. The caller refreshes the leave lists (a transient autoDispose
  /// provider may dispose while awaiting, so it never touches provider state
  /// after the await).
  Future<LeaveRequest> act(
    String id, {
    required LeaveDecision decision,
    String? reason,
  }) async {
    if (ref.mounted) state = const AsyncValue.loading();
    final usecase = ref.read(updateLeaveRequestStatusUsecaseProvider);
    final result = await AsyncValue.guard(
      () => usecase(id, decision: decision, reason: reason),
    );

    if (result.hasError) {
      final trace = result.stackTrace ?? StackTrace.current;
      if (ref.mounted) state = AsyncValue.error(result.error!, trace);
      Error.throwWithStackTrace(result.error!, trace);
    }

    if (ref.mounted) state = const AsyncValue.data(null);
    return result.value!;
  }
}

@riverpod
Future<List<LeaveType>> leaveTypes(Ref ref) {
  return ref.read(getLeaveTypesUsecaseProvider)();
}

/// Number of pending leave requests awaiting the current user's approval,
/// for badges. Own requests are excluded because they can't be approved or
/// rejected by the requester. Derived from the keep-alive approvals list so
/// it stays in sync after decisions and refreshes without an extra endpoint
/// call.
@riverpod
int pendingLeaveRequestsCount(Ref ref) {
  final requests = ref.watch(allLeaveRequestsProvider).value;
  if (requests == null) return 0;
  final currentUserId = ref.watch(currentUserProvider).value?.userId ?? '';
  if (currentUserId.isEmpty) return 0;
  return requests
      .where(
        (request) => request.isPending && request.requesterId != currentUserId,
      )
      .length;
}

@riverpod
class CreateLeaveRequestNotifier extends _$CreateLeaveRequestNotifier {
  @override
  FutureOr<void> build() {}

  Future<LeaveRequest> submit({
    required String leaveTypeId,
    required DateTime startDate,
    required DateTime endDate,
    required bool isHalfDay,
    required HalfDayPeriod halfDayPeriod,
    required String reason,
    String? attachmentUrl,
  }) async {
    state = const AsyncValue.loading();
    final usecase = ref.read(createLeaveRequestUsecaseProvider);
    final result = await AsyncValue.guard(() async {
      return usecase(
        leaveTypeId: leaveTypeId,
        employeeId: _currentEmployeeId(ref),
        startDate: startDate,
        endDate: endDate,
        isHalfDay: isHalfDay,
        halfDayPeriod: halfDayPeriod,
        reason: reason,
        attachmentUrl: attachmentUrl,
      );
    });

    if (ref.mounted) {
      state = result.error == null
          ? const AsyncValue.data(null)
          : AsyncValue.error(result.error!, result.stackTrace!);
    }

    if (result.hasError) {
      Error.throwWithStackTrace(result.error!, result.stackTrace!);
    }
    return result.value!;
  }
}

@riverpod
class UploadFileNotifier extends _$UploadFileNotifier {
  @override
  FutureOr<void> build() {}

  Future<UploadedFile> upload({
    required String filePath,
    required String fileName,
  }) {
    final usecase = ref.read(uploadFileUsecaseProvider);
    return usecase(filePath: filePath, fileName: fileName);
  }
}
