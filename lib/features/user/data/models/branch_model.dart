import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_model.freezed.dart';
part 'branch_model.g.dart';

@freezed
abstract class BranchModel with _$BranchModel {
  const factory BranchModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    @JsonKey(name: 'sc') required String shortCode,
    required String name,
    @JsonKey(name: 'activebranch') @Default(true) bool active,
    @Default(0.0) double lat,
    @Default(0.0) double long,
    @Default(false) bool deleted,
    @Default([]) List<String> tags,
    DateTime? deletedAt,
    int? branchid,
    @JsonKey(name: '__v') int? version,
  }) = _BranchModel;

  factory BranchModel.fromJson(Map<String, dynamic> json) =>
      _$BranchModelFromJson(json);
}
