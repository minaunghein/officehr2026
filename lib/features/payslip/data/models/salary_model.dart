import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary_model.freezed.dart';
part 'salary_model.g.dart';

@freezed
abstract class OtRateModel with _$OtRateModel {
  const factory OtRateModel({
    @JsonKey(name: '_id') String? id,
    @Default(0) num ot1rate,
    @Default(0) num ot2rate,
    @Default(0) num ot3rate,
  }) = _OtRateModel;

  factory OtRateModel.fromJson(Map<String, dynamic> json) =>
      _$OtRateModelFromJson(json);
}

@freezed
abstract class SalaryModel with _$SalaryModel {
  const factory SalaryModel({
    @JsonKey(name: '_id') required String id,
    required String userid,
    required String company,
    @Default(0) num salary,
    @Default(false) bool ssb,
    OtRateModel? otrate,
    @Default(0) num otamount,
    @Default(false) bool isotflat,
    @Default([]) List<dynamic> tags,
    @Default(false) bool deleted,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    @JsonKey(name: '__v') int? version,
    int? paymentcode,
    int? paymentnum,
  }) = _SalaryModel;

  factory SalaryModel.fromJson(Map<String, dynamic> json) =>
      _$SalaryModelFromJson(json);
}
