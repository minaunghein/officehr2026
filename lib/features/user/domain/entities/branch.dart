import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch.freezed.dart';

@freezed
abstract class Branch with _$Branch {
  const factory Branch({
    required String id,
    required String companyId,
    required String shortCode,
    required String name,
    required bool active,
    required double latitude,
    required double longitude,
    required bool deleted,
    required List<String> tags,
    DateTime? deletedAt,
    int? branchId,
  }) = _Branch;
}
