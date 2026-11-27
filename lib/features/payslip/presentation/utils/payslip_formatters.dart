import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/shared/date_formatter.dart';

/// Formats an amount with thousands separators, e.g. `1250000` -> `1,250,000`.
/// Keeps up to two decimals only when the value is fractional.
String formatMoney(num amount) {
  final negative = amount < 0;
  final absolute = amount.abs();
  final isWhole = absolute == absolute.roundToDouble();
  final text = isWhole
      ? absolute.toStringAsFixed(0)
      : absolute.toStringAsFixed(2);

  final dotIndex = text.indexOf('.');
  final intPart = dotIndex == -1 ? text : text.substring(0, dotIndex);
  final decPart = dotIndex == -1 ? '' : text.substring(dotIndex);

  final buffer = StringBuffer();
  for (int i = 0; i < intPart.length; i++) {
    if (i > 0 && (intPart.length - i) % 3 == 0) buffer.write(',');
    buffer.write(intPart[i]);
  }

  return '${negative ? '-' : ''}$buffer$decPart';
}

/// `12 Jan 2027` for a single date string.
String formatPayslipDate(String? iso) {
  final date = parseLocalDateTime(iso);
  if (date == null) return '-';
  return displayDate(date);
}

/// Short month label `Jan`, derived from a date string.
String formatPayslipMonthShort(String? iso) {
  final date = parseLocalDateTime(iso);
  if (date == null) return '--';
  return monthLabel(date.month);
}

/// Four-digit year label derived from a date string.
String formatPayslipYear(String? iso) {
  final date = parseLocalDateTime(iso);
  if (date == null) return '';
  return date.year.toString();
}

/// `03 Jan - 15 Jan 2027`, collapsing the year/month when equal.
String formatPayslipPeriod(String? startIso, String? endIso) {
  final start = parseLocalDateTime(startIso);
  final end = parseLocalDateTime(endIso);
  if (start == null && end == null) return '-';
  if (start == null) return formatPayslipDate(endIso);
  if (end == null) return formatPayslipDate(startIso);

  if (start.year == end.year && start.month == end.month) {
    return '${start.day}-${end.day} ${monthLabel(start.month)} ${start.year}';
  }
  if (start.year == end.year) {
    return '${start.day} ${monthLabel(start.month)} - '
        '${end.day} ${monthLabel(end.month)} ${start.year}';
  }
  return '${formatPayslipDate(startIso)} - ${formatPayslipDate(endIso)}';
}

/// `January 2027`, derived from the payslip's start date.
String formatPayslipMonth(String? startIso) {
  final date = parseLocalDateTime(startIso);
  if (date == null) return '-';
  return formatMonthYear(date);
}
