import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info_model.freezed.dart';
part 'company_info_model.g.dart';

@freezed
abstract class CompanyInfoModel with _$CompanyInfoModel {
  const factory CompanyInfoModel({
    required String sc,
    required dynamic logo,
    required String name,
    required String street,
    required String street1,
    required int city,
    required int state,
    required int country,
    required int zip,
    required int sequence,
    required bool active,
  }) = _CompanyInfoModel;

  factory CompanyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyInfoModelFromJson(json);
}
