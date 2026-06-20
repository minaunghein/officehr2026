import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({
    required String id,
    String? shortCode,
    String? logo,
    required String name,
    String? generalInfo,
    String? socialMedia,
    int? sequence,
    required bool active,
    String? serial,
    required bool deleted,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Company;
}
