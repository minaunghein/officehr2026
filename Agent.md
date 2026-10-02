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
