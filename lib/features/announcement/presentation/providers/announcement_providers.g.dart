// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(announcementRemoteDatasource)
final announcementRemoteDatasourceProvider =
    AnnouncementRemoteDatasourceProvider._();

final class AnnouncementRemoteDatasourceProvider
    extends
        $FunctionalProvider<
          AnnouncementRemoteDatasource,
          AnnouncementRemoteDatasource,
          AnnouncementRemoteDatasource
        >
    with $Provider<AnnouncementRemoteDatasource> {
  AnnouncementRemoteDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'announcementRemoteDatasourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$announcementRemoteDatasourceHash();

  @$internal
  @override
  $ProviderElement<AnnouncementRemoteDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnnouncementRemoteDatasource create(Ref ref) {
    return announcementRemoteDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnnouncementRemoteDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnnouncementRemoteDatasource>(value),
    );
  }
}

String _$announcementRemoteDatasourceHash() =>
    r'ddaf1bfd2cc7b37439f6a52946c4acd76961122d';

@ProviderFor(announcementRepository)
final announcementRepositoryProvider = AnnouncementRepositoryProvider._();

final class AnnouncementRepositoryProvider
    extends
        $FunctionalProvider<
          AnnouncementRepository,
          AnnouncementRepository,
          AnnouncementRepository
        >
    with $Provider<AnnouncementRepository> {
  AnnouncementRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'announcementRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$announcementRepositoryHash();

  @$internal
  @override
  $ProviderElement<AnnouncementRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AnnouncementRepository create(Ref ref) {
    return announcementRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AnnouncementRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AnnouncementRepository>(value),
    );
  }
}

String _$announcementRepositoryHash() =>
    r'18c2baefc72ef9aa8d9734cb80ff5538d9d90b14';

@ProviderFor(getAnnouncementsUsecase)
final getAnnouncementsUsecaseProvider = GetAnnouncementsUsecaseProvider._();

final class GetAnnouncementsUsecaseProvider
    extends
        $FunctionalProvider<
          GetAnnouncementsUsecase,
          GetAnnouncementsUsecase,
          GetAnnouncementsUsecase
        >
    with $Provider<GetAnnouncementsUsecase> {
  GetAnnouncementsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAnnouncementsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAnnouncementsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetAnnouncementsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAnnouncementsUsecase create(Ref ref) {
    return getAnnouncementsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAnnouncementsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAnnouncementsUsecase>(value),
    );
  }
}

String _$getAnnouncementsUsecaseHash() =>
    r'bee44d8ddeb2e36ebbe4a6e665c82492872b6954';

/// Total announcements count, used for the bell and tab badges. Lightweight
/// `limit=1` fetch reading the pagination `total` meta with the same default
/// status (`ALL`) as the feed.

@ProviderFor(announcementsBadgeCount)
final announcementsBadgeCountProvider = AnnouncementsBadgeCountProvider._();

/// Total announcements count, used for the bell and tab badges. Lightweight
/// `limit=1` fetch reading the pagination `total` meta with the same default
/// status (`ALL`) as the feed.

final class AnnouncementsBadgeCountProvider
    extends $FunctionalProvider<AsyncValue<int>, int, FutureOr<int>>
    with $FutureModifier<int>, $FutureProvider<int> {
  /// Total announcements count, used for the bell and tab badges. Lightweight
  /// `limit=1` fetch reading the pagination `total` meta with the same default
  /// status (`ALL`) as the feed.
  AnnouncementsBadgeCountProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'announcementsBadgeCountProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$announcementsBadgeCountHash();

  @$internal
  @override
  $FutureProviderElement<int> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<int> create(Ref ref) {
    return announcementsBadgeCount(ref);
  }
}

String _$announcementsBadgeCountHash() =>
    r'70d531f0dae5149520655353f7ce58ba8a6ac273';

@ProviderFor(Announcements)
final announcementsProvider = AnnouncementsProvider._();

final class AnnouncementsProvider
    extends $AsyncNotifierProvider<Announcements, List<Announcement>> {
  AnnouncementsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'announcementsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$announcementsHash();

  @$internal
  @override
  Announcements create() => Announcements();
}

String _$announcementsHash() => r'914b79effe25bd9ccee38b3031b3e3f6589f9e10';

abstract class _$Announcements extends $AsyncNotifier<List<Announcement>> {
  FutureOr<List<Announcement>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<Announcement>>, List<Announcement>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Announcement>>, List<Announcement>>,
              AsyncValue<List<Announcement>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
