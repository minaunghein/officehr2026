import 'package:flutter_test/flutter_test.dart';
import 'package:office_hr/features/auth/data/models/login_response_model.dart';

void main() {
  test('parses the session response and nested employee fields', () {
    final response = LoginResponseModel.fromJson({
      'success': true,
      'data': {
        'session': {
          'user': {
            'id': 'user-1',
            'username': 'thuhtetnaing',
            'email': 'thuhtet01.naing@gmail.com',
            'employee': {
              '_id': 'employee-1',
              'company_id': 'company-1',
              'user_id': 'user-1',
              'basic_info': {
                'first_name': 'Thu Htet',
                'last_name': 'Naing',
                'nrc': {
                  'region': '12',
                  'township': 'OUKATA',
                  'type': 'N',
                  'numbers': '12121211',
                },
                'first_name_mm': 'Thu Htet',
                'last_name_mm': 'Naing',
                'marital_status': 'SINGLE',
                'gender': 'MALE',
                'blood_type': 'A',
                'nationality': 'Myanmar',
                'date_of_birth': '2026-09-29T00:00:00.000Z',
                'height': 175,
                'weight': 120,
                'religion': 'Buddhism',
                'ethnicity': 'Bamar',
              },
              'contact_info': {
                'emergency_contact': null,
                'phone': '09767796445',
                'email': 'thuhtet01.naing@gmail.com',
                'current_address': {
                  'street': '4th block',
                  'city': 'Yangon',
                  'state': 'Yangon',
                  'country': 'Myanmar (Burma)',
                  'postal_code': '11041',
                },
                'permanent_address': null,
              },
              'family_info': {
                'members': [],
                'father_name': 'jane juliet',
                'father_name_mm': 'jane juliet',
                'mother_name': 'jane juliet',
                'mother_name_mm': 'jane juliet',
                'number_of_family_number': 3,
              },
              'work_info': {
                'employee_code': 'EMP-1212',
                'department_id': 'department-1',
                'position_id': 'position-1',
                'branch_id': 'branch-1',
                'shift_id': 'shift-1',
                'supervisor_id': null,
                'employment_date': '2026-09-21T00:00:00.000Z',
                'probation_end_date': '2026-09-21T00:00:00.000Z',
                'resignation_date': null,
                'employment_status': 'ACTIVE',
                'employment_type': 'FULL_TIME',
                'work_mode': 'ONSITE',
                'card_id': '1',
                'grade': '1',
                'department': {
                  '_id': 'department-1',
                  'title': 'IT',
                  'title_mm': 'IT',
                  'code': '1',
                  'description': 'IT',
                  'company_id': 'company-1',
                  'is_active': true,
                  'deleted': false,
                  'deletedAt': null,
                  'createdAt': '2026-08-03T08:13:44.483Z',
                  'updatedAt': '2026-08-03T08:13:44.483Z',
                  '__v': 0,
                },
                'position': {
                  '_id': 'position-1',
                  'title': 'Developer',
                  'title_mm': 'Developer',
                  'code': '1',
                  'level': 1,
                  'description': 'Developer',
                  'company_id': 'company-1',
                  'is_active': true,
                  'deleted': false,
                  'deletedAt': null,
                  'createdAt': '2026-08-03T08:13:30.973Z',
                  'updatedAt': '2026-08-03T08:13:30.973Z',
                  '__v': 0,
                },
                'branch': {
                  '_id': 'branch-1',
                  'title': 'Branch 1',
                  'code': 'Branch 1',
                  'geofence': {'latitude': 21.9588282, 'longitude': 96.0891032},
                  'company_id': 'company-1',
                  'is_active': true,
                  'deleted': false,
                  'deletedAt': null,
                  'createdAt': '2026-08-03T08:14:00.813Z',
                  'updatedAt': '2026-08-18T09:45:00.793Z',
                  '__v': 0,
                },
                'shift': {
                  '_id': 'shift-1',
                  'title': 'Shift 1',
                  'code': 'S1',
                  'type': 'REGULAR',
                  'default_start': '09:00',
                  'default_end': '18:00',
                  'days': [
                    {
                      'day': 'Mon',
                      'day_no': 2,
                      'is_working_day': true,
                      'is_off_day': false,
                      'is_half_day': false,
                      'work_start': '09:00',
                      'work_end': '18:00',
                      'rest_start': '12:00',
                      'rest_end': '13:00',
                      'ot_start': null,
                      'late1_minutes': 5,
                      'late2_minutes': 10,
                      'late3_minutes': 15,
                      'absent_minutes': 60,
                      'half_day_minutes': 30,
                      'include_rest_in_hours': false,
                      'overnight': false,
                    },
                  ],
                  'core_hours_start': null,
                  'core_hours_end': null,
                  'is_default': true,
                  'company_id': 'company-1',
                  'is_active': true,
                  'deleted': false,
                  'deletedAt': null,
                  'early_leave_grace_minutes': 0,
                  'late_grace_minutes': 0,
                  'merge_window_minutes': 5,
                  'rounding_interval': 15,
                  'rounding_mode': 'EMPLOYER',
                  'createdAt': '2026-08-03T08:14:17.803Z',
                  'updatedAt': '2026-08-17T15:58:18.159Z',
                  '__v': 0,
                },
              },
              'deleted': false,
              'deletedAt': null,
              'education': [
                {
                  'school': 'test',
                  'degree': 'Diploma',
                  'field': '',
                  'start_date': '2026-09-03T00:00:00.000Z',
                  'end_date': '2026-09-30T00:00:00.000Z',
                  'description': 'frontend/education_info.png',
                },
              ],
              'work_experience': [
                {
                  'company': 'Company 1',
                  'position': 'Job title 1',
                  'start_date': '2026-09-24T00:00:00.000Z',
                  'end_date': '2026-09-30T00:00:00.000Z',
                  'description': '{"responsibility":"Res[p"}',
                },
              ],
              'createdAt': '2026-08-03T08:15:43.806Z',
              'updatedAt': '2026-08-03T08:15:43.806Z',
            },
          },
          'active_company': {
            'id': 'company-1',
            'name': 'TPS',
            'name_mm': 'TPS MM',
            'sc': 'TPS',
            'logo': 'logo.png',
            'sequence': 1,
            'active': true,
            'serial': 'SER-1',
            'deleted': false,
            'createdAt': '2026-08-03T08:15:43.806Z',
            'updatedAt': '2026-08-03T08:15:43.806Z',
            '__v': 0,
            'generalinfo': {'website': 'example.com'},
            'socialmedia': {'facebook': 'tps'},
          },
          'companies': [
            {'id': 'company-1', 'name': 'TPS'},
          ],
          'assignments': [
            {'company_id': 'company-1', 'role_id': 'role-1'},
          ],
          'role': {
            'id': 'role-1',
            'name': 'Employee',
            'name_mm': 'Employee',
            'rank': 5,
            'is_platform': false,
          },
          'permissions': [
            {'resource': 'punch', 'action': 'create', 'scope': 'own'},
          ],
        },
        'accessToken': 'access-token',
        'refreshToken': 'refresh-token',
      },
    });

    final employee = response.session.user.employee!;
    final workInfo = employee.workInfo;

    expect(response.accessToken, 'access-token');
    expect(employee.id, 'employee-1');
    expect(employee.basicInfo.nrc?.township, 'OUKATA');
    expect(employee.contactInfo.currentAddress?.postalCode, '11041');
    expect(employee.familyInfo.numberOfFamilyNumber, 3);
    expect(employee.education.single.school, 'test');
    expect(employee.workExperience.single.company, 'Company 1');
    expect(workInfo.shift?.mergeWindowMinutes, 5);
    expect(workInfo.department?.version, 0);
    expect(workInfo.position?.version, 0);
    expect(workInfo.branch?.version, 0);
    expect(response.session.activeCompany.shortCode, 'TPS');
    expect(
      response.session.activeCompany.generalInfo?['website'],
      'example.com',
    );
    expect(response.session.activeCompany.socialMedia?['facebook'], 'tps');
    expect(response.session.permissions.single.resource, 'punch');
  });
}
