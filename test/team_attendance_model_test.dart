import 'package:flutter_test/flutter_test.dart';
import 'package:office_hr/features/home/data/models/team_attendance_model.dart';

void main() {
  test('maps department today attendance including nested employee', () {
    final model = TeamAttendanceModel.fromJson({
      '_id': '6ac3e005c32623a1ee514d56',
      'user_id': '6a704e2d20ef6d19958995bf',
      'date_id': '20261006',
      'scheduled': {'clock_in': '09:00', 'clock_out': '18:00'},
      'actual': {'clock_in': '00:04', 'clock_out': null},
      'work_duration': 0,
      'break_duration': 60,
      'status': 'ON_LEAVE',
      'is_half_day': false,
      'is_holiday': false,
      'leave_type': null,
      'notes': 'Full day leave',
      'user': {
        '_id': '6a704e2d20ef6d19958995bf',
        'employee': {
          '_id': '6a704e2f20ef6d19958995c0',
          'basic_info': {'first_name': 'Thu Htet', 'last_name': 'Naing'},
          'work_info': {
            'employee_code': 'EMP-1212',
            'department_id': '6a704db820ef6d19453485ba',
            'position_id': '6a704daa20ef6d19958995b9',
          },
        },
      },
      'id': '6ac3e005c32623a1ee514d56',
    }).toEntity();

    expect(model.id, '6ac3e005c32623a1ee514d56');
    expect(model.userId, '6a704e2d20ef6d19958995bf');
    expect(model.employeeId, '6a704e2f20ef6d19958995c0');
    expect(model.employeeCode, 'EMP-1212');
    expect(model.departmentId, '6a704db820ef6d19453485ba');
    expect(model.fullName, 'Thu Htet Naing');
    expect(model.status, 'ON_LEAVE');
    expect(model.breakDuration, 60);
    expect(model.scheduled?.clockIn, '09:00');
    expect(model.scheduled?.clockOut, '18:00');
    expect(model.actual?.clockIn, '00:04');
    expect(model.notes, 'Full day leave');
  });

  test('defaults missing nested fields instead of throwing', () {
    final model = TeamAttendanceModel.fromJson({
      '_id': 'abc',
      'status': 'ABSENT',
    }).toEntity();

    expect(model.id, 'abc');
    expect(model.fullName, 'Unknown');
    expect(model.employeeCode, '');
    expect(model.scheduled, isNull);
  });
}
