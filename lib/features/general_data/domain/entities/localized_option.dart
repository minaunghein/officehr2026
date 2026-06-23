import 'package:freezed_annotation/freezed_annotation.dart';

part 'localized_option.freezed.dart';

/// Entity for options with localized titles
@freezed
abstract class LocalizedOption with _$LocalizedOption {
  const factory LocalizedOption({
    required dynamic id,
    required List<String> titles,
  }) = _LocalizedOption;
}
