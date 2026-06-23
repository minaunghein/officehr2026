import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/general_data/data/models/general_data_model.dart';

part 'general_data_response_model.freezed.dart';
part 'general_data_response_model.g.dart';

/// Response model for general data API
@freezed
abstract class GeneralDataResponseModel with _$GeneralDataResponseModel {
  const factory GeneralDataResponseModel({required GeneralDataModel data}) =
      _GeneralDataResponseModel;

  factory GeneralDataResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GeneralDataResponseModelFromJson(json);
}
