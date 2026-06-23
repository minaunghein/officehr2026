import 'package:freezed_annotation/freezed_annotation.dart';

part 'nrc_region.freezed.dart';

@freezed
abstract class NrcRegion with _$NrcRegion {
  const factory NrcRegion({
    required int regionCodeId,
    required List<String> regionCodes,
    required List<String> townships,
  }) = _NrcRegion;
}
