import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_option_model.freezed.dart';
part 'simple_option_model.g.dart';

/// Model for simple options (e.g., currency unit, benefit mode)
@freezed
abstract class SimpleOptionModel with _$SimpleOptionModel {
  const factory SimpleOptionModel({
    required int id,
    String? title,
    String? unit,
  }) = _SimpleOptionModel;

  factory SimpleOptionModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleOptionModelFromJson(json);
}
