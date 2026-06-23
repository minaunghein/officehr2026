import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';

/// Entity for department
@freezed
abstract class Department with _$Department {
  const factory Department({
    required String id,
    required String companyId,
    required List<String> titles,
    required String shortCode,
    required int sortOrder,
    required String remarks,
    required List<String> tags,
    required String createdAt,
    required String updatedAt,
  }) = _Department;
}
