import 'package:freezed_annotation/freezed_annotation.dart';

part 'position.freezed.dart';

/// Entity for position
@freezed
abstract class Position with _$Position {
  const factory Position({
    required String id,
    required String companyId,
    required List<String> titles,
    required String shortCode,
    required int sortOrder,
    required int rank,
    required String remarks,
    required List<String> tags,
    required String createdAt,
    required String updatedAt,
  }) = _Position;
}
