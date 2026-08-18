import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/basic_info/basic_info.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/contact_info/contact_info.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/family_info/family_info.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/work_info/work_info.dart';

part 'employee.freezed.dart';

@freezed
abstract class Employee with _$Employee {
  const factory Employee({
    required String id,
    required String companyId,
    required String userId,
    required BasicInfo basicInfo,
    required ContactInfo contactInfo,
    required FamilyInfo familyInfo,
    required WorkInfo workInfo,
    required bool deleted,
    String? deletedAt,
    required List<dynamic> education,
    required List<dynamic> workExperience,
    String? createdAt,
    String? updatedAt,
  }) = _Employee;
}
