// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DashboardIndex)
final dashboardIndexProvider = DashboardIndexProvider._();

final class DashboardIndexProvider
    extends $NotifierProvider<DashboardIndex, int> {
  DashboardIndexProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dashboardIndexProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dashboardIndexHash();

  @$internal
  @override
  DashboardIndex create() => DashboardIndex();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$dashboardIndexHash() => r'05459e3fe36f6ed499f5c5c75c508f4d89addeee';

abstract class _$DashboardIndex extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
