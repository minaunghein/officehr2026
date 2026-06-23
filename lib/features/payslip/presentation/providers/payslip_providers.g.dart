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
    r'db30757d7ffe0f0da1287d014a0c44e3c7c2a6a2';

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

String _$payslipRepositoryHash() => r'f679ce5d13362c0b5e047c418c0afb0490f712bc';

@ProviderFor(getPayslipUsecase)
final getPayslipUsecaseProvider = GetPayslipUsecaseProvider._();

final class GetPayslipUsecaseProvider
    extends
        $FunctionalProvider<
          GetPayslipUsecase,
          GetPayslipUsecase,
          GetPayslipUsecase
        >
    with $Provider<GetPayslipUsecase> {
  GetPayslipUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPayslipUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPayslipUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetPayslipUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetPayslipUsecase create(Ref ref) {
    return getPayslipUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPayslipUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPayslipUsecase>(value),
    );
  }
}

String _$getPayslipUsecaseHash() => r'c687a6d178b27f90319ad53768008823ef9f9892';

@ProviderFor(PayslipNotifier)
final payslipProvider = PayslipNotifierProvider._();

final class PayslipNotifierProvider
    extends $AsyncNotifierProvider<PayslipNotifier, Payslip?> {
  PayslipNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'payslipProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$payslipNotifierHash();

  @$internal
  @override
  PayslipNotifier create() => PayslipNotifier();
}

String _$payslipNotifierHash() => r'42a3db3409bab18be61b2ab0f862f7b4a9b6c891';

abstract class _$PayslipNotifier extends $AsyncNotifier<Payslip?> {
  FutureOr<Payslip?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Payslip?>, Payslip?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Payslip?>, Payslip?>,
              AsyncValue<Payslip?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
