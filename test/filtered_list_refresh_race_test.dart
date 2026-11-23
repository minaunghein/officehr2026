import 'dart:async';

// Guards the filtered list reloads: tapping status chips quickly must never
// paint data for a filter the user already left.
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/params/create_amendment_params.dart';
import 'package:office_hr/features/home/domain/repositories/attendance_amendment_repository.dart';
import 'package:office_hr/features/home/domain/usecases/get_amendments_usecase.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_amendment_provider.dart';

class _SlowRepository implements AttendanceAmendmentRepository {
  final Map<String, Completer<void>> gates = {};

  AttendanceAmendment _item(String status) => AttendanceAmendment(
    id: status,
    userId: 'u1',
    companyId: 'c1',
    dateId: 'd1',
    amendmentType: 'MISSED_IN',
    reason: 'r',
    status: status,
    deleted: false,
  );

  @override
  Future<List<AttendanceAmendment>> getAmendments({
    DateTime? start,
    DateTime? end,
    List<String> statuses = const [],
  }) async {
    final status = statuses.isEmpty ? 'ALL' : statuses.first;
    final gate = Completer<void>();
    gates[status] = gate;
    await gate.future;
    return [_item(status)];
  }

  void release(String status) => gates[status]!.complete();

  @override
  Future<AttendanceAmendment> getAmendmentById(String id) =>
      throw UnimplementedError();

  @override
  Future<AttendanceAmendment> createAmendment(CreateAmendmentParams params) =>
      throw UnimplementedError();

  @override
  Future<AttendanceAmendment> updateAmendmentStatus(
    String id, {
    required String status,
    String? rejectionReason,
  }) {
    throw UnimplementedError();
  }
}

void main() {
  test('newest filter wins even when responses land out of order', () async {
    final repository = _SlowRepository();
    final container = ProviderContainer(
      overrides: [
        getAmendmentsUsecaseProvider.overrideWithValue(
          GetAmendmentsUsecase(repository: repository),
        ),
      ],
    );
    addTearDown(container.dispose);

    final sub = container.listen(attendanceAmendmentsProvider, (_, _) {});
    repository.release('ALL');
    await container.read(attendanceAmendmentsProvider.future);

    final pending = container
        .read(attendanceAmendmentsProvider.notifier)
        .setStatusFilter(const ['PENDING']);
    await Future<void>.delayed(Duration.zero);
    final approved = container
        .read(attendanceAmendmentsProvider.notifier)
        .setStatusFilter(const ['APPROVED']);
    await Future<void>.delayed(Duration.zero);

    String visibleState() => container
        .read(attendanceAmendmentsProvider)
        .when(
          data: (items) => items.single.status,
          loading: () => 'loading',
          error: (_, _) => 'error',
        );

    expect(visibleState(), 'loading');

    // Newest response lands first, the stale one lands last.
    repository.release('APPROVED');
    await Future<void>.delayed(Duration.zero);
    repository.release('PENDING');
    await Future.wait([pending, approved]);
    await Future<void>.delayed(Duration.zero);

    expect(sub.read().value!.single.status, 'APPROVED');
    expect(visibleState(), 'APPROVED');

    final refresh = container
        .read(attendanceAmendmentsProvider.notifier)
        .refresh();
    await Future<void>.delayed(Duration.zero);
    expect(visibleState(), 'APPROVED');
    repository.release('APPROVED');
    await refresh;
  });
}
