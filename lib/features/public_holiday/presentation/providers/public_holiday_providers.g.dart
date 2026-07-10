// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_holiday_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(publicHolidayRemoteDataSource)
final publicHolidayRemoteDataSourceProvider =
    PublicHolidayRemoteDataSourceProvider._();

final class PublicHolidayRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          PublicHolidayRemoteDataSource,
          PublicHolidayRemoteDataSource,
          PublicHolidayRemoteDataSource
        >
    with $Provider<PublicHolidayRemoteDataSource> {
  PublicHolidayRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicHolidayRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicHolidayRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<PublicHolidayRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PublicHolidayRemoteDataSource create(Ref ref) {
    return publicHolidayRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PublicHolidayRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PublicHolidayRemoteDataSource>(
        value,
      ),
    );
  }
}

String _$publicHolidayRemoteDataSourceHash() =>
    r'1f6e22d81a1564a4a1a6c73e5978125ff6aee823';

@ProviderFor(publicHolidayRepository)
final publicHolidayRepositoryProvider = PublicHolidayRepositoryProvider._();

final class PublicHolidayRepositoryProvider
    extends
        $FunctionalProvider<
          PublicHolidayRepository,
          PublicHolidayRepository,
          PublicHolidayRepository
        >
    with $Provider<PublicHolidayRepository> {
  PublicHolidayRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicHolidayRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicHolidayRepositoryHash();

  @$internal
  @override
  $ProviderElement<PublicHolidayRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PublicHolidayRepository create(Ref ref) {
    return publicHolidayRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PublicHolidayRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PublicHolidayRepository>(value),
    );
  }
}

String _$publicHolidayRepositoryHash() =>
    r'6addcda85900f7de91f528c752e80479f47c5d87';

@ProviderFor(getPublicHolidaysUsecase)
final getPublicHolidaysUsecaseProvider = GetPublicHolidaysUsecaseProvider._();

final class GetPublicHolidaysUsecaseProvider
    extends
        $FunctionalProvider<
          GetPublicHolidaysUsecase,
          GetPublicHolidaysUsecase,
          GetPublicHolidaysUsecase
        >
    with $Provider<GetPublicHolidaysUsecase> {
  GetPublicHolidaysUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPublicHolidaysUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPublicHolidaysUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetPublicHolidaysUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetPublicHolidaysUsecase create(Ref ref) {
    return getPublicHolidaysUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPublicHolidaysUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPublicHolidaysUsecase>(value),
    );
  }
}

String _$getPublicHolidaysUsecaseHash() =>
    r'e0c7535c4feb61adfb4e9c1a4f7b11a7263891f1';

@ProviderFor(PublicHolidayNotifier)
final publicHolidayProvider = PublicHolidayNotifierProvider._();

final class PublicHolidayNotifierProvider
    extends $AsyncNotifierProvider<PublicHolidayNotifier, List<PublicHoliday>> {
  PublicHolidayNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'publicHolidayProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$publicHolidayNotifierHash();

  @$internal
  @override
  PublicHolidayNotifier create() => PublicHolidayNotifier();
}

String _$publicHolidayNotifierHash() =>
    r'27abf6a680d61066b0b2a0686ae8a9f100ddd8a0';

abstract class _$PublicHolidayNotifier
    extends $AsyncNotifier<List<PublicHoliday>> {
  FutureOr<List<PublicHoliday>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<PublicHoliday>>, List<PublicHoliday>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<PublicHoliday>>, List<PublicHoliday>>,
              AsyncValue<List<PublicHoliday>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
