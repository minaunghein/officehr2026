import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/nrc/nrc.dart';

part 'nrc_model.freezed.dart';
part 'nrc_model.g.dart';

@freezed
abstract class NrcModel with _$NrcModel {
  const NrcModel._();

  const factory NrcModel({
    @Default('') String region,
    @Default('') String township,
    @Default('') String type,
    @Default('') String numbers,
  }) = _NrcModel;

  factory NrcModel.fromJson(Map<String, dynamic> json) =>
      _$NrcModelFromJson(json);

  Nrc toEntity() =>
      Nrc(region: region, township: township, type: type, numbers: numbers);
}
