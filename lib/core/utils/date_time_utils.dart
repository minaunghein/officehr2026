DateTime? parseLocalDateTime(String? value) {
  if (value == null || value.trim().isEmpty) return null;

  final parsed = DateTime.tryParse(value);
  return parsed?.toLocal();
}

/// Formats [date] as the `YYYY-MM-DD` string used by attendance APIs.
String formatApiDate(DateTime date) {
  final local = date.toLocal();
  final month = local.month.toString().padLeft(2, '0');
  final day = local.day.toString().padLeft(2, '0');
  return '${local.year}-$month-$day';
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
