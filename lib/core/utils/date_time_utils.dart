DateTime? parseLocalDateTime(String? value) {
  if (value == null || value.trim().isEmpty) return null;

  final parsed = DateTime.tryParse(value);
  return parsed?.toLocal();
}

String? normalizeLocalDateTimeString(String? value) {
  if (value == null || value.trim().isEmpty) return value;

  final parsed = parseLocalDateTime(value);
  if (parsed == null) return value;

  // Date-only values and schedule times are local wall-clock values already.
  final isDateOnly = !value.contains('T') && !value.contains(' ');
  if (isDateOnly) return value;

  return parsed.toIso8601String();
}
