import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/home/data/datasources/attendance_amendment_remote_datasource.dart';
import 'package:office_hr/features/home/data/repositories/attendance_amendment_repository_impl.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/params/create_amendment_params.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_amendment_repository.dart';
import 'package:office_hr/features/home/domain/usecases/create_amendment_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/get_amendment_by_id_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/get_amendments_usecase.dart';
import 'package:office_hr/features/home/domain/usecases/update_amendment_status_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_amendment_provider.g.dart';

// ==================== Datasource ====================
@riverpod
AttendanceAmendmentRemoteDatasource attendanceAmendmentRemoteDatasource(
  Ref ref,
) {
  final apiService = ref.watch(apiServiceProvider);
  return AttendanceAmendmentRemoteDatasourceImpl(apiService);
}

// ==================== Repository ====================
@riverpod
AttendanceAmendmentRepository attendanceAmendmentRepository(Ref ref) {
  final datasource = ref.watch(attendanceAmendmentRemoteDatasourceProvider);
  return AttendanceAmendmentRepositoryImpl(datasource: datasource);
}

// ==================== Use Cases ====================
@riverpod
GetAmendmentsUsecase getAmendmentsUsecase(Ref ref) {
  final repository = ref.watch(attendanceAmendmentRepositoryProvider);
  return GetAmendmentsUsecase(repository: repository);
}

@riverpod
GetAmendmentByIdUsecase getAmendmentByIdUsecase(Ref ref) {
  final repository = ref.watch(attendanceAmendmentRepositoryProvider);
  return GetAmendmentByIdUsecase(repository: repository);
}

@riverpod
CreateAmendmentUsecase createAmendmentUsecase(Ref ref) {
  final repository = ref.watch(attendanceAmendmentRepositoryProvider);
  return CreateAmendmentUsecase(repository: repository);
}

@riverpod
UpdateAmendmentStatusUsecase updateAmendmentStatusUsecase(Ref ref) {
  final repository = ref.watch(attendanceAmendmentRepositoryProvider);
  return UpdateAmendmentStatusUsecase(repository: repository);
}

// ==================== State Management ====================
@riverpod
class AttendanceAmendments extends _$AttendanceAmendments {
  List<String> _statuses = const [];
  DateTime? _start;
  DateTime? _end;

  @override
  Future<List<AttendanceAmendment>> build() => _fetch();

  Future<List<AttendanceAmendment>> _fetch() {
    return ref.read(getAmendmentsUsecaseProvider)(
      start: _start,
      end: _end,
      statuses: _statuses,
    );
  }

  Future<void> setStatusFilter(List<String> statuses) async {
    _statuses = statuses;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }

  Future<void> setDateFilter({DateTime? start, DateTime? end}) async {
    _start = start;
    _end = end;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
  }

  Future<AttendanceAmendment> create(CreateAmendmentParams params) async {
    final created = await ref.read(createAmendmentUsecaseProvider)(params);
    await refresh();
    return created;
  }

  Future<AttendanceAmendment> updateStatus(
    String id, {
    required String status,
    String? rejectionReason,
  }) async {
    final updated = await ref.read(updateAmendmentStatusUsecaseProvider)(
      id,
      status: status,
      rejectionReason: rejectionReason,
    );
    await refresh();
    return updated;
  }
}

/// Pending amendment count awaiting a decision, excluding the current user's
/// own requests. Used for the team screen badge.
@riverpod
Future<int> pendingAmendmentsBadgeCount(Ref ref) async {
  final currentUserId = ref.watch(currentUserIdProvider) ?? '';
  final amendments = await ref
      .watch(getAmendmentsUsecaseProvider)
      .call(statuses: const ['PENDING']);
  return amendments
      .where((amendment) => amendment.userId != currentUserId)
      .length;
}

/// Reviewer-facing amendment list. The current user's own requests are hidden
/// (they can't approve/reject themselves) and pending items sort first so
/// they surface at the top of the list.
@riverpod
class AmendmentApprovals extends _$AmendmentApprovals {
  List<String> _statuses = const ['PENDING'];

  @override
  Future<List<AttendanceAmendment>> build() {
    // Rebuild when the signed-in user changes so own-request filtering and
    // per-user cache scoping stay correct.
    ref.watch(currentUserIdProvider);
    return _fetch();
  }

  Future<List<AttendanceAmendment>> _fetch() async {
    final currentUserId = ref.read(currentUserIdProvider) ?? '';
    final amendments = await ref.read(getAmendmentsUsecaseProvider)(
      statuses: _statuses,
    );
    final others = amendments
        .where((amendment) => amendment.userId != currentUserId)
        .toList();
    final sorted = [...others]
      ..sort((a, b) {
        final aPending = a.status.toUpperCase() == 'PENDING';
        final bPending = b.status.toUpperCase() == 'PENDING';
        if (aPending != bPending) return aPending ? -1 : 1;
        final aDate = a.createdAt;
        final bDate = b.createdAt;
        if (aDate == null || bDate == null) return 0;
        return bDate.compareTo(aDate);
      });
    return sorted;
  }

  Future<void> setStatusFilter(List<String> statuses) async {
    _statuses = statuses;
    await refresh();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetch);
    ref.invalidate(pendingAmendmentsBadgeCountProvider);
  }

  Future<AttendanceAmendment> decide(
    String id, {
    required String status,
    String? rejectionReason,
  }) async {
    final updated = await ref.read(updateAmendmentStatusUsecaseProvider)(
      id,
      status: status,
      rejectionReason: rejectionReason,
    );
    await refresh();
    return updated;
  }
}
