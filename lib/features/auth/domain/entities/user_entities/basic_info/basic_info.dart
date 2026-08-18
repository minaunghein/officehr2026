import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info.freezed.dart';

@freezed
abstract class BasicInfo with _$BasicInfo {
  const factory BasicInfo({
    required String firstName,
    required String lastName,
    String? nrc,
  }) = _BasicInfo;
}
