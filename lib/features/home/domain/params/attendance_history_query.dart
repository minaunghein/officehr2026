/// Identifies an attendance history request, either for a single day
/// ([date]) or an inclusive range ([start] to [end]).
///
/// Dates are normalized to midnight so equal calendar days produce equal
/// queries, which keeps Riverpod family providers stable.
class AttendanceHistoryQuery {
  AttendanceHistoryQuery({DateTime? date, DateTime? start, DateTime? end})
    : date = _day(date),
      start = _day(start),
      end = _day(end);

  final DateTime? date;
  final DateTime? start;
  final DateTime? end;

  static DateTime? _day(DateTime? value) =>
      value == null ? null : DateTime(value.year, value.month, value.day);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttendanceHistoryQuery &&
          date == other.date &&
          start == other.start &&
          end == other.end;

  @override
  int get hashCode => Object.hash(date, start, end);
}
