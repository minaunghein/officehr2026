import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_amendment_params.freezed.dart';
part 'create_amendment_params.g.dart';

@freezed
abstract class CreateAmendmentParams with _$CreateAmendmentParams {
  const factory CreateAmendmentParams({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'date_id') required String dateId,
    @JsonKey(name: 'amendment_type') required String amendmentType,
    @JsonKey(name: 'requested_clock_in') String? requestedClockIn,
    @JsonKey(name: 'requested_clock_out') String? requestedClockOut,
    required String reason,
  }) = _CreateAmendmentParams;

  factory CreateAmendmentParams.fromJson(Map<String, dynamic> json) =>
      _$CreateAmendmentParamsFromJson(json);
}
