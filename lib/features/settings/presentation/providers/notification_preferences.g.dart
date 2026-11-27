// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preferences.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Sound and vibration switches. Updating them re-applies the saved
/// schedules so the next reminder honours the new delivery options.

@ProviderFor(NotificationPreferences)
final notificationPreferencesProvider = NotificationPreferencesProvider._();

/// Sound and vibration switches. Updating them re-applies the saved
/// schedules so the next reminder honours the new delivery options.
final class NotificationPreferencesProvider
    extends $NotifierProvider<NotificationPreferences, NotificationPreference> {
  /// Sound and vibration switches. Updating them re-applies the saved
  /// schedules so the next reminder honours the new delivery options.
  NotificationPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationPreferencesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationPreferencesHash();

  @$internal
  @override
  NotificationPreferences create() => NotificationPreferences();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(NotificationPreference value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<NotificationPreference>(value),
    );
  }
}

String _$notificationPreferencesHash() =>
    r'6770ab1185dbef00241ed11ba8de4a896ed0ee8c';

/// Sound and vibration switches. Updating them re-applies the saved
/// schedules so the next reminder honours the new delivery options.

abstract class _$NotificationPreferences
    extends $Notifier<NotificationPreference> {
  NotificationPreference build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<NotificationPreference, NotificationPreference>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<NotificationPreference, NotificationPreference>,
              NotificationPreference,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
