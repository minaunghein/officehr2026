// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_data_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(generalDataRemoteDataSource)
final generalDataRemoteDataSourceProvider =
    GeneralDataRemoteDataSourceProvider._();

final class GeneralDataRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          GeneralDataRemoteDataSource,
          GeneralDataRemoteDataSource,
          GeneralDataRemoteDataSource
        >
    with $Provider<GeneralDataRemoteDataSource> {
  GeneralDataRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generalDataRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generalDataRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<GeneralDataRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GeneralDataRemoteDataSource create(Ref ref) {
    return generalDataRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeneralDataRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeneralDataRemoteDataSource>(value),
    );
  }
}

String _$generalDataRemoteDataSourceHash() =>
    r'e682cbf998f44bb33e0fc742603b82a524d658fe';

@ProviderFor(generalDataLocalDataSource)
final generalDataLocalDataSourceProvider =
    GeneralDataLocalDataSourceProvider._();

final class GeneralDataLocalDataSourceProvider
    extends
        $FunctionalProvider<
          GeneralDataLocalDataSource,
          GeneralDataLocalDataSource,
          GeneralDataLocalDataSource
        >
    with $Provider<GeneralDataLocalDataSource> {
  GeneralDataLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generalDataLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generalDataLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<GeneralDataLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GeneralDataLocalDataSource create(Ref ref) {
    return generalDataLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeneralDataLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeneralDataLocalDataSource>(value),
    );
  }
}

String _$generalDataLocalDataSourceHash() =>
    r'634598a0d42dd26a10ecce945c8f25b8ee206551';

@ProviderFor(generalDataRepository)
final generalDataRepositoryProvider = GeneralDataRepositoryProvider._();

final class GeneralDataRepositoryProvider
    extends
        $FunctionalProvider<
          GeneralDataRepository,
          GeneralDataRepository,
          GeneralDataRepository
        >
    with $Provider<GeneralDataRepository> {
  GeneralDataRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generalDataRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generalDataRepositoryHash();

  @$internal
  @override
  $ProviderElement<GeneralDataRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GeneralDataRepository create(Ref ref) {
    return generalDataRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeneralDataRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeneralDataRepository>(value),
    );
  }
}

String _$generalDataRepositoryHash() =>
    r'775cd6561e1b445776cf5b72f6c78918cb7bb980';

@ProviderFor(getGeneralDataUsecase)
final getGeneralDataUsecaseProvider = GetGeneralDataUsecaseProvider._();

final class GetGeneralDataUsecaseProvider
    extends
        $FunctionalProvider<
          GetGeneralDataUsecase,
          GetGeneralDataUsecase,
          GetGeneralDataUsecase
        >
    with $Provider<GetGeneralDataUsecase> {
  GetGeneralDataUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getGeneralDataUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getGeneralDataUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetGeneralDataUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetGeneralDataUsecase create(Ref ref) {
    return getGeneralDataUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetGeneralDataUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetGeneralDataUsecase>(value),
    );
  }
}

String _$getGeneralDataUsecaseHash() =>
    r'b9805970fc6d1fbdaf7b7f8d4569b4383db385f7';

@ProviderFor(GeneralDataNotifier)
final generalDataProvider = GeneralDataNotifierProvider._();

final class GeneralDataNotifierProvider
    extends $AsyncNotifierProvider<GeneralDataNotifier, GeneralData?> {
  GeneralDataNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'generalDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$generalDataNotifierHash();

  @$internal
  @override
  GeneralDataNotifier create() => GeneralDataNotifier();
}

String _$generalDataNotifierHash() =>
    r'3f2b4fe2a32f262840e91ad175613965c3b2e614';

abstract class _$GeneralDataNotifier extends $AsyncNotifier<GeneralData?> {
  FutureOr<GeneralData?> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<GeneralData?>, GeneralData?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GeneralData?>, GeneralData?>,
              AsyncValue<GeneralData?>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
