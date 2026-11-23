import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/core/utils/async_reload.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/home/data/datasources/clock_request_remote_datasource.dart';
import 'package:office_hr/features/home/data/repositories/clock_request_repository_impl.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/params/create_clock_request_params.dart';
import 'package:office_hr/features/home/domain/repositories/clock_request_repository.dart';
import 'package:office_hr/features/home/domain/usecases/cancel_clock_request_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/create_clock_request_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/decide_clock_request_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/get_clock_requests_review_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/get_my_clock_requests_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'clock_request_provider.g.dart';

// ==================== Datasource ====================
@riverpod
ClockRequestRemoteDatasource clockRequestRemoteDatasource(Ref ref) {
  final apiService = ref.watch(apiServiceProvider);
  return ClockRequestRemoteDatasourceImpl(apiService);
}

// ==================== Repository ====================
@riverpod
ClockRequestRepository clockRequestRepository(Ref ref) {
  final datasource = ref.watch(clockRequestRemoteDatasourceProvider);
  return ClockRequestRepositoryImpl(datasource: datasource);
}

// ==================== Use Cases ====================
@riverpod
CreateClockRequestUsecase createClockRequestUsecase(Ref ref) {
  final repository = ref.watch(clockRequestRepositoryProvider);
  return CreateClockRequestUsecase(repository: repository);
}

@riverpod
GetClockRequestsReviewUsecase getClockRequestsReviewUsecase(Ref ref) {
  final repository = ref.watch(clockRequestRepositoryProvider);
  return GetClockRequestsReviewUsecase(repository: repository);
}

@riverpod
GetMyClockRequestsUsecase getMyClockRequestsUsecase(Ref ref) {
  final repository = ref.watch(clockRequestRepositoryProvider);
  return GetMyClockRequestsUsecase(repository: repository);
}

@riverpod
CancelClockRequestUsecase cancelClockRequestUsecase(Ref ref) {
  final repository = ref.watch(clockRequestRepositoryProvider);
  return CancelClockRequestUsecase(repository: repository);
}

@riverpod
DecideClockRequestUsecase decideClockRequestUsecase(Ref ref) {
  final repository = ref.watch(clockRequestRepositoryProvider);
  return DecideClockRequestUsecase(repository: repository);
}

// ==================== State Management ====================

/// Pending review count for the bell and tab badges. Own requests are
/// excluded because they can't be approved/rejected by the requester, so the
/// rows are fetched (up to the API's 100 max) and filtered client-side.
@riverpod
Future<int> pendingClockRequestsBadgeCount(Ref ref) async {
  final currentUserId = ref.watch(currentUserIdProvider) ?? '';
  final requests = await ref
      .watch(clockRequestRepositoryProvider)
      .getReviewRequests(
        statuses: const [ClockRequestStatus.pending],
        limit: 100,
      );
  return requests.where((request) => request.userId != currentUserId).length;
}

/// Submits an out-of-range punch as a clock request awaiting approval.
@riverpod
class CreateClockRequestNotifier extends _$CreateClockRequestNotifier {
  @override
  FutureOr<void> build() {}

  Future<ClockRequest> submit(CreateClockRequestParams params) async {
    state = const AsyncValue.loading();
    final result = await AsyncValue.guard(
      () => ref.read(createClockRequestUsecaseProvider)(params),
    );

    if (ref.mounted) {
      state = result.hasError
          ? AsyncValue.error(
              result.error!,
              result.stackTrace ?? StackTrace.current,
            )
          : const AsyncValue.data(null);
    }

    if (result.hasError) {
      Error.throwWithStackTrace(
        result.error!,
        result.stackTrace ?? StackTrace.current,
      );
    }
    return result.value!;
  }
}

/// Approver-facing review list, defaulting to the current month. The current
/// user's own requests are hidden (they can't approve/reject themselves) and
/// pending requests sort first so they surface at the top of the list.
@riverpod
class ClockRequestsReview extends _$ClockRequestsReview {
  DateTime? _start;
  DateTime? _end;
  List<ClockRequestStatus> _statuses = const [];

  @override
  Future<List<ClockRequest>> build() {
    // Rebuild when the signed-in user changes so own-request filtering and
    // per-user cache scoping stay correct.
    ref.watch(currentUserIdProvider);
    return _fetch();
  }

  Future<List<ClockRequest>> _fetch() async {
    final currentUserId = ref.read(currentUserIdProvider) ?? '';
    final now = DateTime.now();
    final start = _start ?? DateTime(now.year, now.month);
    final end = _end ?? DateTime(now.year, now.month, now.day);
    final requests = await ref.read(getClockRequestsReviewUsecaseProvider)(
      start: start,
      end: end,
      statuses: _statuses,
    );
    final others = requests
        .where((request) => request.userId != currentUserId)
        .toList();
    final sorted = [...others]
      ..sort((a, b) {
        if (a.isPending != b.isPending) return a.isPending ? -1 : 1;
        final aDate = a.createdAt;
        final bDate = b.createdAt;
        if (aDate == null || bDate == null) return 0;
        return bDate.compareTo(aDate);
      });
    return sorted;
  }

  Future<void> setStatusFilter(List<ClockRequestStatus> statuses) async {
    _statuses = statuses;
    await _reload(filterChanged: true);
  }

  Future<void> setDateFilter({DateTime? start, DateTime? end}) async {
    _start = start;
    _end = end;
    await _reload(filterChanged: true);
  }

  Future<void> refresh() => _reload();

  Future<void> _reload({bool filterChanged = false}) async {
    ref.invalidateSelf(asReload: filterChanged);
    await settleReload(future);
    if (ref.mounted) ref.invalidate(pendingClockRequestsBadgeCountProvider);
  }

  Future<ClockRequest> decide(
    String id, {
    required ClockRequestDecision decision,
    String? note,
  }) async {
    final decided = await ref.read(decideClockRequestUsecaseProvider)(
      id,
      decision: decision,
      note: note,
    );
    await refresh();
    return decided;
  }
}

/// The signed-in user's own clock requests (`/api/v1/clock-requests`),
/// supporting status and date-range filters plus owner cancellation.
@riverpod
class MyClockRequests extends _$MyClockRequests {
  DateTime? _start;
  DateTime? _end;
  List<ClockRequestStatus> _statuses = const [];

  @override
  Future<List<ClockRequest>> build() => _fetch();

  Future<List<ClockRequest>> _fetch() async {
    final requests = await ref.read(getMyClockRequestsUsecaseProvider)(
      start: _start,
      end: _end,
      statuses: _statuses,
    );
    final sorted = [...requests]
      ..sort((a, b) {
        if (a.isPending != b.isPending) return a.isPending ? -1 : 1;
        final aDate = a.createdAt;
        final bDate = b.createdAt;
        if (aDate == null || bDate == null) return 0;
        return bDate.compareTo(aDate);
      });
    return sorted;
  }

  Future<void> setStatusFilter(List<ClockRequestStatus> statuses) async {
    _statuses = statuses;
    await _reload(filterChanged: true);
  }

  Future<void> setDateFilter({DateTime? start, DateTime? end}) async {
    _start = start;
    _end = end;
    await _reload(filterChanged: true);
  }

  Future<void> refresh() => _reload();

  Future<void> _reload({bool filterChanged = false}) async {
    ref.invalidateSelf(asReload: filterChanged);
    await settleReload(future);
    if (ref.mounted) ref.invalidate(pendingClockRequestsBadgeCountProvider);
  }

  Future<ClockRequest> cancel(String id, {String? note}) async {
    final cancelled = await ref.read(cancelClockRequestUsecaseProvider)(
      id,
      note: note,
    );
    await refresh();
    return cancelled;
  }
}
