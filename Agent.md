# AI Agent Guide

This Flutter project uses feature-first clean architecture. Keep changes small, typed, reusable, and consistent with existing folders.

## Core Rules

- Use `riverpod_annotation` for providers. Add `@riverpod` functions/classes and run code generation.
- Use `freezed` and `json_serializable` for data models/entities that need immutable copy/equality or JSON parsing.
- Always include generated part files when needed: `.freezed.dart`, `.g.dart`.
- Run `dart run build_runner build --delete-conflicting-outputs` after changing annotated providers, Freezed classes, or JSON models.
- Keep widgets separated. Do not grow long screen files with many private widgets; move reusable UI into `presentation/widgets/`.
- For stateful widgets, always use `HookConsumerWidget` with hooks (`useState`, `useTextEditingController`, `useEffect`, `useMemoized`, etc.) instead of `StatefulWidget`/`ConsumerStatefulWidget`. Do not create `ConsumerStatefulWidget` or manual `State` classes.
- Prefer global/shared services and utilities from `lib/core` and `lib/shared` before creating feature-local duplicates.
- Keep domain entities independent from networking/UI details.
- Keep API parsing in data models/datasources, business flow in repositories/usecases/providers, and rendering in widgets.

## Reuse Before Creating

Always search for and reuse existing code before adding new classes, models, helpers, or widgets. Duplicating models/entities/formatters is not acceptable.

- **Entities/models**: reuse `features/home/domain/entities/today_attendance.dart`, `attendance_record.dart`, `attendance_punch.dart`, `attendance_stats.dart` and their data models. Never define a parallel attendance model.
- **Date/time helpers**: reuse `lib/core/utils/date_time_utils.dart` (`parseLocalDateTime`, `normalizeLocalDateTimeString`, `formatApiDate`) and `lib/shared/date_formatter.dart` (`formatAttendanceTime`, `formatDurationText`, `formatDateString`, `formatMonthYear`, `formatTime`, shift helpers). Do not re-implement time parsing/formatting.
- **Network**: reuse `ApiService` via `apiServiceProvider` and the existing feature datasources/repositories/usecases/providers. Extend the existing attendance datasource/repository rather than adding a new stack for the same endpoint.
- **UI**: reuse shared widgets in `lib/core/widgets` (`ContainerShimmer`) and feature widgets (`features/home/presentation/widgets/`) such as `AttendancePunchTimeline`, `AttendancePunchTile`, `AttendanceStatusChip`, `AttendanceRecordStatusChip`, `attendanceStatusColor`, `AttendanceCalendar`, `AttendanceDayDetail`, `AttendanceRangeList`, `AttendanceAmendmentCard`, `AmendmentStatusChip`, `amendmentTypeIcon`, `amendmentTypeColor`, `AttendanceAmendmentDetailScreen`, and `showAttendanceAmendmentForm`. Extract reusable pieces into `presentation/widgets/` instead of duplicating.
- **Snackbars/errors**: use `SnackbarUtils` (`lib/core/utils/snackbar_utils.dart`) and `getUserFriendlyError` (`lib/core/network/api_error_message.dart`) instead of ad-hoc `ScaffoldMessenger`/`toString()` handling.
- **Theme/constants**: reuse `AppColors`, `AppSizes`, and `Theme.of(context)` tokens. Avoid hardcoded paddings/radii when an `AppSizes` constant exists.
- **Loading UI**: use `ContainerShimmer` (theme-aware) for content/skeleton loading placeholders. Do not use `ShimmerHelper` (hardcoded light-mode greys). Keep `CircularProgressIndicator` only for action feedback inside buttons/dialogs, not for full content sections.

If a suitable reusable abstraction is missing, create it in the most shared appropriate folder (`lib/core`, `lib/shared`, or the feature's `presentation/widgets`) and use it everywhere.

## Protecting Screens with Biometrics

Sensitive screens are protected with the reusable `BiometricGate` and the `BiometricService` abstraction. Do not import `local_auth` in UI code.

- Service: `lib/core/security/biometric_service.dart` (`BiometricService`, `LocalAuthBiometricService`, `BiometricAvailability`, `BiometricResult`).
- Provider: `biometricServiceProvider` in `lib/core/security/security_providers.dart`.
- Widget: `BiometricGate` in `lib/core/security/widgets/biometric_gate.dart`.

Usage:

```dart
Scaffold(
  appBar: AppBar(title: const Text('Payslip')),
  body: BiometricGate(
    reason: 'Authenticate to view your payslips',
    title: 'Payslips are protected',
    child: const ProtectedContent(),
  ),
)
```

`BiometricGate` auto-prompts on open, allows device-credential fallback by default (`biometricOnly: false`), re-locks on returning from background (`lockOnResume: true`), and can be bypassed with `enabled: false` (e.g. a user setting). Keep platform requirements intact:

- iOS: `NSFaceIDUsageDescription` in `ios/Runner/Info.plist`.
- Android: `USE_BIOMETRIC` permission; `MainActivity` must extend `FlutterFragmentActivity`; `LaunchTheme`/`NormalTheme` must be a `Theme.AppCompat` descendant.

## Feature Structure

- `data/datasources`: remote API calls only.
- `data/models`: API models with `fromJson`, `toJson`, and mapping to domain entities.
- `data/repositories`: repository implementations and model-to-entity conversion.
- `domain/entities`: domain objects.
- `domain/repositories`: repository contracts.
- `domain/usecases`: focused app actions when useful.
- `presentation/providers`: Riverpod annotated providers/notifiers.
- `presentation/widgets`: reusable widgets extracted from screens.
- `presentation/screens`: page composition only.

## Verification

- Format touched Dart files with `dart format`.
- Run `flutter analyze` before finishing.
- If generated code changes are expected, verify generated files are updated and included.
