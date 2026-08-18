import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/geofence/geofence.dart';

part 'branch.freezed.dart';

@freezed
abstract class Branch with _$Branch {
  const factory Branch({
    required String id,
    required String title,
    required String code,
    required Geofence geofence,
    required String companyId,
    required bool isActive,
    required bool deleted,
    String? deletedAt,
  }) = _Branch;
}
