import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/domain/entities/basic_info.dart';
import 'package:office_hr/features/user/domain/entities/contact_info.dart';
import 'package:office_hr/features/user/domain/entities/family_info.dart';
import 'package:office_hr/features/user/domain/entities/work_info.dart';

part 'user_bio.freezed.dart';

/// Entity for user bio
@freezed
abstract class UserBio with _$UserBio {
  const factory UserBio({
    required String id,
    required String companyId,
    required String userId,
    required BasicInfo basicInfo,
    required ContactInfo contactInfo,
    required FamilyInfo familyInfo,
    required WorkInfo workInfo,
    required bool isOvertimeEnabled,
    required bool isOvertime1Enabled,
    required bool isOvertime2Enabled,
    required bool isOvertime3Enabled,
    required bool isAutoAmendEnabled,
    required bool isDeductionEnabled,
    required bool isUnderEnabled,
    required List<String> tags,
    required bool isDeleted,
    required dynamic deletedAt,
    required List<dynamic> workExperience,
    required List<dynamic> education,
    required String createdAt,
    required String updatedAt,
  }) = _UserBio;
}
