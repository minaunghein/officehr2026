import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/overtime/data/datasources/overtime_remote_datasource.dart';
import 'package:office_hr/features/overtime/data/repositories/overtime_repository_impl.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/domain/repositories/overtime_repository.dart';
import 'package:office_hr/features/overtime/domain/usecases/create_overtime_request_usecase.dart';
import 'package:office_hr/features/overtime/domain/usecases/get_all_overtime_requests_usecase.dart';
import 'package:office_hr/features/overtime/domain/usecases/get_overtime_requests_usecase.dart';
import 'package:office_hr/features/overtime/domain/usecases/update_overtime_status_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'overtime_providers.g.dart';

// ==================== Data Source ====================
@riverpod
OvertimeRemoteDataSource overtimeRemoteDataSource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return OvertimeRemoteDataSourceImpl(apiService);
}

// ==================== Repository ====================
@riverpod
OvertimeRepository overtimeRepository(Ref ref) {
  return OvertimeRepositoryImpl(ref.watch(overtimeRemoteDataSourceProvider));
}

// ==================== Use Cases ====================
@riverpod
GetOvertimeRequestsUsecase getOvertimeRequestsUsecase(Ref ref) {
  return GetOvertimeRequestsUsecase(ref.watch(overtimeRepositoryProvider));
}

@riverpod
GetAllOvertimeRequestsUsecase getAllOvertimeRequestsUsecase(Ref ref) {
  return GetAllOvertimeRequestsUsecase(ref.watch(overtimeRepositoryProvider));
}

@riverpod
CreateOvertimeRequestUsecase createOvertimeRequestUsecase(Ref ref) {
  return CreateOvertimeRequestUsecase(ref.watch(overtimeRepositoryProvider));
}

@riverpod
UpdateOvertimeStatusUsecase updateOvertimeStatusUsecase(Ref ref) {
  return UpdateOvertimeStatusUsecase(ref.watch(overtimeRepositoryProvider));
}

String _currentUserId(Ref ref) {
  return ref.read(currentUserProvider).value?.userId ?? '';
}

// ==================== State ====================

/// The signed-in user's own overtime requests.
@Riverpod(keepAlive: true)
class OvertimeRequests extends _$OvertimeRequests {
  @override
  Future<List<OvertimeRequest>> build() async {
    ref.watch(currentUserIdProvider);
    return _fetch();
  }

  Future<List<OvertimeRequest>> _fetch() {
    return ref.read(getOvertimeRequestsUsecaseProvider)();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }
}

/// Every submitted overtime request, for the approver view.
@Riverpod(keepAlive: true)
class AllOvertimeRequests extends _$AllOvertimeRequests {
  @override
  Future<List<OvertimeRequest>> build() async {
    ref.watch(currentUserIdProvider);
    return _fetch();
  }

  Future<List<OvertimeRequest>> _fetch() {
    return ref.read(getAllOvertimeRequestsUsecaseProvider)();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }
}

@riverpod
class CreateOvertimeRequestNotifier extends _$CreateOvertimeRequestNotifier {
  @override
  FutureOr<void> build() {}

  Future<OvertimeRequest> submit({
    required DateTime date,
    required String startTime,
    required String endTime,
    required OvertimeType otType,
    String? reason,
  }) async {
    state = const AsyncValue.loading();
    final usecase = ref.read(createOvertimeRequestUsecaseProvider);
    final result = await AsyncValue.guard(
      () => usecase(
        userId: _currentUserId(ref),
        date: date,
        startTime: startTime,
        endTime: endTime,
        otType: otType,
        reason: reason,
      ),
    );

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
class UpdateOvertimeStatusNotifier extends _$UpdateOvertimeStatusNotifier {
  @override
  FutureOr<void> build() {}

  /// Approves or rejects [id] and returns the updated request. Throws on
  /// failure; the caller refreshes the overtime lists.
  Future<OvertimeRequest> act(
    String id, {
    required OvertimeDecision decision,
    double? approvedHours,
    String? reason,
  }) async {
    if (ref.mounted) state = const AsyncValue.loading();
    final usecase = ref.read(updateOvertimeStatusUsecaseProvider);
    final result = await AsyncValue.guard(
      () => usecase(
        id,
        decision: decision,
        approvedHours: approvedHours,
        reason: reason,
      ),
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

/// Number of pending overtime requests awaiting the current user's approval,
/// for badges. Own requests are excluded because they can't be approved or
/// rejected by the requester. Derived from the keep-alive approvals list.
@riverpod
int pendingOvertimeRequestsCount(Ref ref) {
  final requests = ref.watch(allOvertimeRequestsProvider).value;
  if (requests == null) return 0;
  final currentUserId = ref.watch(currentUserProvider).value?.userId ?? '';
  if (currentUserId.isEmpty) return 0;
  return requests
      .where((request) => request.isPending && request.userId != currentUserId)
      .length;
}
