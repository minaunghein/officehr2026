import 'package:freezed_annotation/freezed_annotation.dart';

part 'simple_option.freezed.dart';

/// Entity for simple options
@freezed
abstract class SimpleOption with _$SimpleOption {
  const factory SimpleOption({required int id, String? title, String? unit}) =
      _SimpleOption;
}
