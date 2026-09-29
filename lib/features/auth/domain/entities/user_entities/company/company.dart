import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    String? nameMm,
    String? shortCode,
    String? logo,
    int? sequence,
    bool? active,
    String? serial,
    bool? deleted,
    String? deletedAt,
    String? createdAt,
    String? updatedAt,
    int? version,
    Map<String, dynamic>? generalInfo,
    Map<String, dynamic>? socialMedia,
  }) = _Company;
}
