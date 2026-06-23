import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/domain/entities/general_info.dart';
import 'package:office_hr/features/user/domain/entities/social_media.dart';

part 'company.freezed.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({
    required String id,
    String? shortCode,
    String? logo,
    required String name,
    GeneralInfo? generalInfo,
    SocialMedia? socialMedia,
    int? sequence,
    required bool active,
    String? serial,
    required bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Company;
}
