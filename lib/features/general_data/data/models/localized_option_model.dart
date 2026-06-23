import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_option_model.freezed.dart';
part 'localized_option_model.g.dart';

/// Model for options with localized titles (e.g., gender, marital status)
@freezed
abstract class LocalizedOptionModel with _$LocalizedOptionModel {
  const factory LocalizedOptionModel({
    required dynamic id, // Can be int or String
    required List<String> titles,
  }) = _LocalizedOptionModel;

  factory LocalizedOptionModel.fromJson(Map<String, dynamic> json) =>
      _$LocalizedOptionModelFromJson(json);
}
