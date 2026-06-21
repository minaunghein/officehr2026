# Flutter Project Conventions

These conventions are mandatory for all code in this project.

## State Management & Dependency Injection
- ALWAYS use **Riverpod annotation** (`@riverpod` / `@Riverpod`) with code generation. Never hand-write `Provider`, `StateProvider`, `AsyncNotifierProvider`, etc.
- Each provider file must declare `part 'file_name.g.dart';` and import `package:riverpod_annotation/riverpod_annotation.dart`.
- Use `@riverpod` for functional and class-based notifiers. Use `@Riverpod(keepAlive: true)` for providers that must persist for the app lifetime.

## Models & Entities
- ALWAYS use **Freezed** + **json_serializable** for data models and domain entities.
- Each model/entity class MUST be declared as `abstract class` (Freezed requirement).
- Each model file must declare `part 'file_name.freezed.dart';` and (when JSON is needed) `part 'file_name.g.dart';`.
- Map non-Dart-friendly API keys with `@JsonKey(name: '...')`.

## UI Screens
- ALWAYS use the **hooks + Riverpod** pair. Screens extend `HookConsumerWidget` and use `flutter_hooks` (`useTextEditingController`, `useState`, etc.) together with `WidgetRef`.

## Code Generation
- After changing any annotated file, run:
  `dart run build_runner build --delete-conflicting-outputs`

## Architecture
- Follow clean architecture layering: `data/` (datasources, models, repositories) → `domain/` (entities, repositories, usecases) → `presentation/` (providers, screens).
