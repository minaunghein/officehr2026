/// Filters the payslip list by an inclusive `[start]` / `[end]` period.
///
/// Dates are normalized to midnight so equal calendar days produce equal
/// queries, which keeps the Riverpod family provider stable.
class PayslipQuery {
  PayslipQuery({DateTime? start, DateTime? end})
    : start = _day(start),
      end = _day(end);

  final DateTime? start;
  final DateTime? end;

  static DateTime? _day(DateTime? value) =>
      value == null ? null : DateTime(value.year, value.month, value.day);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayslipQuery && start == other.start && end == other.end;

  @override
  int get hashCode => Object.hash(start, end);
}
