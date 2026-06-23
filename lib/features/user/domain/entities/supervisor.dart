import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/domain/entities/user_leave.dart';

part 'supervisor.freezed.dart';

/// Entity for supervisor
@freezed
abstract class Supervisor with _$Supervisor {
  const factory Supervisor({
    required String id,
    required String companyId,
    required List<String> companiesPermitted,
    required String username,
    required String email,
    required String phone,
    required String profileUrl,
    required String role,
    required List<String> tags,
    required List<dynamic> promotions,
    required List<dynamic> tasks,
    required bool isDeleted,
    required dynamic deletedAt,
    required List<UserLeave> userLeaves,
    required String createdAt,
    required String updatedAt,
    required String userBioId,
  }) = _Supervisor;
}
