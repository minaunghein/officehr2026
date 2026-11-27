// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Build and environment details for the settings footer and About screen.

@ProviderFor(appInfo)
final appInfoProvider = AppInfoProvider._();

/// Build and environment details for the settings footer and About screen.

final class AppInfoProvider
    extends $FunctionalProvider<AsyncValue<AppInfo>, AppInfo, FutureOr<AppInfo>>
    with $FutureModifier<AppInfo>, $FutureProvider<AppInfo> {
  /// Build and environment details for the settings footer and About screen.
  AppInfoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appInfoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appInfoHash();

  @$internal
  @override
  $FutureProviderElement<AppInfo> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<AppInfo> create(Ref ref) {
    return appInfo(ref);
  }
}

String _$appInfoHash() => r'6ba9ec4c232f0dfa39c0c61c89e2e096e6a5d4fb';
