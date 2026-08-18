import 'package:freezed_annotation/freezed_annotation.dart';

part 'position.freezed.dart';

@freezed
abstract class Position with _$Position {
  const factory Position({
    required String id,
    required String title,
    required String titleMm,
    required String code,
    required int level,
    required String description,
    required String companyId,
    required bool isActive,
    required bool deleted,
    String? deletedAt,
  }) = _Position;
}
