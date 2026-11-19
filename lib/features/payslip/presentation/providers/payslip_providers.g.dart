// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payslip_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(payslipRemoteDataSource)
final payslipRemoteDataSourceProvider = PayslipRemoteDataSourceProvider._();

final class PayslipRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PayslipRemoteDataSource,
          PayslipRemoteDataSource,
          PayslipRemoteDataSource
        >
    with $Provider<PayslipRemoteDataSource> {
  PayslipRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payslipRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payslipRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PayslipRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PayslipRemoteDataSource create(Ref ref) {
    return payslipRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PayslipRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PayslipRemoteDataSource>(value),
    );
  }
}

String _$payslipRemoteDataSourceHash() =>
    r'e78a72adb256bcf36dee3bc676cb0149f734f5cb';

@ProviderFor(payslipRepository)
final payslipRepositoryProvider = PayslipRepositoryProvider._();

final class PayslipRepositoryProvider
    extends
        $FunctionalProvider<
          PayslipRepository,
          PayslipRepository,
          PayslipRepository
        >
    with $Provider<PayslipRepository> {
  PayslipRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payslipRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payslipRepositoryHash();

  @$internal
  @override
  $ProviderElement<PayslipRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PayslipRepository create(Ref ref) {
    return payslipRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PayslipRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PayslipRepository>(value),
    );
  }
}

String _$payslipRepositoryHash() => r'0f0371a25d0c54370c7474e32a7a119ded6a0434';

@ProviderFor(getPayslipsUsecase)
final getPayslipsUsecaseProvider = GetPayslipsUsecaseProvider._();

final class GetPayslipsUsecaseProvider
    extends
        $FunctionalProvider<
          GetPayslipsUsecase,
          GetPayslipsUsecase,
          GetPayslipsUsecase
        >
    with $Provider<GetPayslipsUsecase> {
  GetPayslipsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPayslipsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPayslipsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetPayslipsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetPayslipsUsecase create(Ref ref) {
    return getPayslipsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPayslipsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPayslipsUsecase>(value),
    );
  }
}

String _$getPayslipsUsecaseHash() =>
    r'8f350d7e63014b2b4741300189e8985012e141b4';

/// Payslips for the given [query] period. Re-fetches whenever the range or
/// pull-to-refresh invalidates the provider.

@ProviderFor(payslips)
final payslipsProvider = PayslipsFamily._();

/// Payslips for the given [query] period. Re-fetches whenever the range or
/// pull-to-refresh invalidates the provider.

final class PayslipsProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Payslip>>,
          List<Payslip>,
          FutureOr<List<Payslip>>
        >
    with $FutureModifier<List<Payslip>>, $FutureProvider<List<Payslip>> {
  /// Payslips for the given [query] period. Re-fetches whenever the range or
  /// pull-to-refresh invalidates the provider.
  PayslipsProvider._({
    required PayslipsFamily super.from,
    required PayslipQuery super.argument,
  }) : super(
         retry: null,
         name: r'payslipsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$payslipsHash();

  @override
  String toString() {
    return r'payslipsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Payslip>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Payslip>> create(Ref ref) {
    final argument = this.argument as PayslipQuery;
    return payslips(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PayslipsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$payslipsHash() => r'f9514eb36011bb15efc6430377939311e2eb54e6';

/// Payslips for the given [query] period. Re-fetches whenever the range or
/// pull-to-refresh invalidates the provider.

final class PayslipsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Payslip>>, PayslipQuery> {
  PayslipsFamily._()
    : super(
        retry: null,
        name: r'payslipsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Payslips for the given [query] period. Re-fetches whenever the range or
  /// pull-to-refresh invalidates the provider.

  PayslipsProvider call(PayslipQuery query) =>
      PayslipsProvider._(argument: query, from: this);

  @override
  String toString() => r'payslipsProvider';
}
