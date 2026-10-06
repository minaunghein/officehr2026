import 'package:flutter_test/flutter_test.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/shared/date_formatter.dart';

void main() {
  test('parses UTC timestamps as local DateTime values', () {
    const value = '2026-09-29T00:00:00.000Z';
    final parsed = parseLocalDateTime(value);

    expect(parsed, DateTime.parse(value).toLocal());
    expect(parsed?.isUtc, isFalse);
  });

  test('does not shift date-only or time-only local values', () {
    expect(normalizeLocalDateTimeString('2026-09-29'), '2026-09-29');
    expect(normalizeLocalDateTimeString('09:00'), '09:00');
  });

  test('formats date strings as DD-MM-YY', () {
    expect(formatDateString('2026-09-05'), '05-09-26');
    expect(formatDateString(null), '-');
    expect(formatDateString('not-a-date'), 'not-a-date');
  });
}
