import 'package:freezed_annotation/freezed_annotation.dart';

part 'family_info_model.freezed.dart';
part 'family_info_model.g.dart';

/// Model for family information in user bio
@freezed
abstract class FamilyInfoModel with _$FamilyInfoModel {
  const factory FamilyInfoModel({
    @JsonKey(name: '_id') required String id,
    required List<String> fathernames,
    required List<String> mothernames,
    required int nofm,
  }) = _FamilyInfoModel;

  factory FamilyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyInfoModelFromJson(json);
}
