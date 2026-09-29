import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';

@freezed
abstract class Department with _$Department {
  const factory Department({
    required String id,
    required String title,
    required String titleMm,
    required String code,
    required String description,
    required String companyId,
    required bool isActive,
    required bool deleted,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
    int? version,
  }) = _Department;
}
