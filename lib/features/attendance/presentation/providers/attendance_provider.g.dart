// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(attendanceDatasource)
final attendanceDatasourceProvider = AttendanceDatasourceProvider._();

final class AttendanceDatasourceProvider
    extends
        $FunctionalProvider<
          AttendanceDatasource,
          AttendanceDatasource,
          AttendanceDatasource
        >
    with $Provider<AttendanceDatasource> {
  AttendanceDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceDatasourceHash();

  @$internal
  @override
  $ProviderElement<AttendanceDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AttendanceDatasource create(Ref ref) {
    return attendanceDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AttendanceDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AttendanceDatasource>(value),
    );
  }
}

String _$attendanceDatasourceHash() =>
    r'd7537b353da917c6bfd69ea378829c1f55d809e5';

@ProviderFor(attendanceRepository)
final attendanceRepositoryProvider = AttendanceRepositoryProvider._();

final class AttendanceRepositoryProvider
    extends
        $FunctionalProvider<
          AttendanceRepository,
          AttendanceRepository,
          AttendanceRepository
        >
    with $Provider<AttendanceRepository> {
  AttendanceRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceRepositoryHash();

  @$internal
  @override
  $ProviderElement<AttendanceRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AttendanceRepository create(Ref ref) {
    return attendanceRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AttendanceRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AttendanceRepository>(value),
    );
  }
}

String _$attendanceRepositoryHash() =>
    r'97b9d35edbbebe6cd2068f9834f7760e15fdb6d0';

@ProviderFor(clockInUsecase)
final clockInUsecaseProvider = ClockInUsecaseProvider._();

final class ClockInUsecaseProvider
    extends $FunctionalProvider<ClockInUsecase, ClockInUsecase, ClockInUsecase>
    with $Provider<ClockInUsecase> {
  ClockInUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clockInUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clockInUsecaseHash();

  @$internal
  @override
  $ProviderElement<ClockInUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClockInUsecase create(Ref ref) {
    return clockInUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClockInUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClockInUsecase>(value),
    );
  }
}

String _$clockInUsecaseHash() => r'e2a26ce06af08a66a78c807038f4054fe0d97204';

@ProviderFor(getTodayClockInUsecase)
final getTodayClockInUsecaseProvider = GetTodayClockInUsecaseProvider._();

final class GetTodayClockInUsecaseProvider
    extends
        $FunctionalProvider<
          GetTodayClockInUsecase,
          GetTodayClockInUsecase,
          GetTodayClockInUsecase
        >
    with $Provider<GetTodayClockInUsecase> {
  GetTodayClockInUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTodayClockInUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTodayClockInUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetTodayClockInUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetTodayClockInUsecase create(Ref ref) {
    return getTodayClockInUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetTodayClockInUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetTodayClockInUsecase>(value),
    );
  }
}

String _$getTodayClockInUsecaseHash() =>
    r'8672e1b2dba8da51c663eaecf2f521d8720579df';

@ProviderFor(AttendanceNotifier)
final attendanceProvider = AttendanceNotifierProvider._();

final class AttendanceNotifierProvider
    extends $NotifierProvider<AttendanceNotifier, AttendanceState> {
  AttendanceNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'attendanceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$attendanceNotifierHash();

  @$internal
  @override
  AttendanceNotifier create() => AttendanceNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AttendanceState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AttendanceState>(value),
    );
  }
}

String _$attendanceNotifierHash() =>
    r'378d7f6261a7aca9813a6141607758ad2aa7de21';

abstract class _$AttendanceNotifier extends $Notifier<AttendanceState> {
  AttendanceState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AttendanceState, AttendanceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AttendanceState, AttendanceState>,
              AttendanceState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
