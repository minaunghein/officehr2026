import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/domain/entities/company.dart';
import 'package:office_hr/features/user/domain/entities/user_bio.dart';
import 'package:office_hr/features/user/domain/entities/user_leave.dart';

part 'user_details.freezed.dart';

@freezed
abstract class UserDetails with _$UserDetails {
  const factory UserDetails({
    required String id,
    required Company company,
    required List<String> companiesPermitted,
    required String username,
    required String email,
    String? phone,
    required String profileUrl,
    required String role,
    required List<String> tags,
    required List<dynamic> promotions,
    required List<dynamic> tasks,
    required bool deleted,
    DateTime? deletedAt,
    required List<UserLeave> userLeaves,
    DateTime? createdAt,
    DateTime? updatedAt,
    UserBio? userBio,
    required bool isBioComplete,
  }) = _UserDetails;
}
