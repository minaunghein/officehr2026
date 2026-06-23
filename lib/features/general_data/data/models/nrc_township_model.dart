import 'package:freezed_annotation/freezed_annotation.dart';

part 'nrc_township_model.freezed.dart';
part 'nrc_township_model.g.dart';

/// Model for NRC (National Registration Card) region data
@freezed
abstract class NrcRegionModel with _$NrcRegionModel {
  const factory NrcRegionModel({
    required int nrcregioncodeid,
    required List<String> nrcregioncodes,
    required List<String> townships,
  }) = _NrcRegionModel;

  factory NrcRegionModel.fromJson(Map<String, dynamic> json) =>
      _$NrcRegionModelFromJson(json);
}
