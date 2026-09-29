import 'package:freezed_annotation/freezed_annotation.dart';

part 'nrc.freezed.dart';

@freezed
abstract class Nrc with _$Nrc {
  const factory Nrc({
    required String region,
    required String township,
    required String type,
    required String numbers,
  }) = _Nrc;
}
