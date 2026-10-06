# Engineering Conventions

Use Riverpod annotation, Freezed, and JSON serialization code generation as the default approach for new providers and serializable models.

Prefer professional, reusable implementation:

- Keep screen files focused on composition.
- Extract UI into `presentation/widgets/` when it is non-trivial or reusable.
- Use existing global services, network helpers, formatters, constants, and widgets before adding new utilities.
- Keep API response parsing in `data/models` and `data/datasources`.
- Keep provider state and app flow in `presentation/providers`.
- Run `dart run build_runner build --delete-conflicting-outputs` after annotation/model changes.
- Run `dart format` and `flutter analyze` before completion.
