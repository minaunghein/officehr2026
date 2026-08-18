import 'package:freezed_annotation/freezed_annotation.dart';

part 'company.freezed.dart';

@freezed
abstract class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    String? nameMm,
  }) = _Company;
}
