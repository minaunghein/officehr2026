import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/basic_info/basic_info.dart';

part 'basic_info_model.freezed.dart';
part 'basic_info_model.g.dart';

@freezed
abstract class BasicInfoModel with _$BasicInfoModel {
  const BasicInfoModel._();

  const factory BasicInfoModel({
    @JsonKey(name: 'first_name') @Default('') String firstName,
    @JsonKey(name: 'last_name') @Default('') String lastName,
    String? nrc,
  }) = _BasicInfoModel;

  factory BasicInfoModel.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoModelFromJson(json);

  BasicInfo toEntity() =>
      BasicInfo(firstName: firstName, lastName: lastName, nrc: nrc);
}
