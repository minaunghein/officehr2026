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
          AttendanceRemoteDatasource,
          AttendanceRemoteDatasource,
          AttendanceRemoteDatasource
        >
    with $Provider<AttendanceRemoteDatasource> {
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
  $ProviderElement<AttendanceRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AttendanceRemoteDatasource create(Ref ref) {
    return attendanceDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AttendanceRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AttendanceRemoteDatasource>(value),
    );
  }
}

String _$attendanceDatasourceHash() =>
    r'177e44701b7e94f3211e6388341463e799f45e2e';

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
    extends $FunctionalProvider<ClockinUsecase, ClockinUsecase, ClockinUsecase>
    with $Provider<ClockinUsecase> {
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
  $ProviderElement<ClockinUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClockinUsecase create(Ref ref) {
    return clockInUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClockinUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClockinUsecase>(value),
    );
  }
}

String _$clockInUsecaseHash() => r'4d40671f5a55217afbf37f3a1d22d9080570da8c';

@ProviderFor(clockOutUsecase)
final clockOutUsecaseProvider = ClockOutUsecaseProvider._();

final class ClockOutUsecaseProvider
    extends
        $FunctionalProvider<ClockoutUsecase, ClockoutUsecase, ClockoutUsecase>
    with $Provider<ClockoutUsecase> {
  ClockOutUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clockOutUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clockOutUsecaseHash();

  @$internal
  @override
  $ProviderElement<ClockoutUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ClockoutUsecase create(Ref ref) {
    return clockOutUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClockoutUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClockoutUsecase>(value),
    );
  }
}

String _$clockOutUsecaseHash() => r'1e21e215a9c9f5958e34c813edd7a83f83377d8a';

@ProviderFor(getTodayAttendanceUsecase)
final getTodayAttendanceUsecaseProvider = GetTodayAttendanceUsecaseProvider._();

final class GetTodayAttendanceUsecaseProvider
    extends
        $FunctionalProvider<
          GetTodayAttendanceUsecase,
          GetTodayAttendanceUsecase,
          GetTodayAttendanceUsecase
        >
    with $Provider<GetTodayAttendanceUsecase> {
  GetTodayAttendanceUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getTodayAttendanceUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getTodayAttendanceUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetTodayAttendanceUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetTodayAttendanceUsecase create(Ref ref) {
    return getTodayAttendanceUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetTodayAttendanceUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetTodayAttendanceUsecase>(value),
    );
  }
}

String _$getTodayAttendanceUsecaseHash() =>
    r'8624120efe9790d978dc95c303ad304055cdf6c0';

@ProviderFor(getMyAttendanceUsecase)
final getMyAttendanceUsecaseProvider = GetMyAttendanceUsecaseProvider._();

final class GetMyAttendanceUsecaseProvider
    extends
        $FunctionalProvider<
          GetMyAttendanceUsecase,
          GetMyAttendanceUsecase,
          GetMyAttendanceUsecase
        >
    with $Provider<GetMyAttendanceUsecase> {
  GetMyAttendanceUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMyAttendanceUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMyAttendanceUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetMyAttendanceUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetMyAttendanceUsecase create(Ref ref) {
    return getMyAttendanceUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMyAttendanceUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMyAttendanceUsecase>(value),
    );
  }
}

String _$getMyAttendanceUsecaseHash() =>
    r'cde7de7468a858118567b0fdc40011523668d405';

@ProviderFor(attendanceHistory)
final attendanceHistoryProvider = AttendanceHistoryFamily._();

final class AttendanceHistoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<TodayAttendance>>,
          List<TodayAttendance>,
          FutureOr<List<TodayAttendance>>
        >
    with
        $FutureModifier<List<TodayAttendance>>,
        $FutureProvider<List<TodayAttendance>> {
  AttendanceHistoryProvider._({
    required AttendanceHistoryFamily super.from,
    required AttendanceHistoryQuery super.argument,
  }) : super(
         retry: null,
         name: r'attendanceHistoryProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$attendanceHistoryHash();

  @override
  String toString() {
    return r'attendanceHistoryProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<TodayAttendance>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<TodayAttendance>> create(Ref ref) {
    final argument = this.argument as AttendanceHistoryQuery;
    return attendanceHistory(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is AttendanceHistoryProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$attendanceHistoryHash() => r'78c9ecdcb584a2bf3cefe1f6267138d63847b657';

final class AttendanceHistoryFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<List<TodayAttendance>>,
          AttendanceHistoryQuery
        > {
  AttendanceHistoryFamily._()
    : super(
        retry: null,
        name: r'attendanceHistoryProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  AttendanceHistoryProvider call(AttendanceHistoryQuery query) =>
      AttendanceHistoryProvider._(argument: query, from: this);

  @override
  String toString() => r'attendanceHistoryProvider';
}

@ProviderFor(monthlyAttendanceStats)
final monthlyAttendanceStatsProvider = MonthlyAttendanceStatsProvider._();

final class MonthlyAttendanceStatsProvider
    extends
        $FunctionalProvider<
          AsyncValue<AttendanceStats>,
          AttendanceStats,
          FutureOr<AttendanceStats>
        >
    with $FutureModifier<AttendanceStats>, $FutureProvider<AttendanceStats> {
  MonthlyAttendanceStatsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'monthlyAttendanceStatsProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$monthlyAttendanceStatsHash();

  @$internal
  @override
  $FutureProviderElement<AttendanceStats> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AttendanceStats> create(Ref ref) {
    return monthlyAttendanceStats(ref);
  }
}

String _$monthlyAttendanceStatsHash() =>
    r'cf885a365461538351728a417bd62042f00fb3ac';

@ProviderFor(AttendanceNotifier)
final attendanceProvider = AttendanceNotifierProvider._();

final class AttendanceNotifierProvider
    extends $AsyncNotifierProvider<AttendanceNotifier, AttendanceState> {
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
}

String _$attendanceNotifierHash() =>
    r'6d3ea40fb2296dcb7a12da973d6d9a0cbd14699e';

abstract class _$AttendanceNotifier extends $AsyncNotifier<AttendanceState> {
  FutureOr<AttendanceState> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<AttendanceState>, AttendanceState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<AttendanceState>, AttendanceState>,
              AsyncValue<AttendanceState>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
