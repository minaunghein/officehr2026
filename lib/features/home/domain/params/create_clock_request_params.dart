import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';

part 'create_clock_request_params.freezed.dart';
part 'create_clock_request_params.g.dart';

@freezed
abstract class CreateClockRequestParams with _$CreateClockRequestParams {
  const factory CreateClockRequestParams({
    @JsonKey(name: 'date_id') required String dateId,
    @JsonKey(name: 'punch_time') required String punchTime,
    @JsonKey(name: 'punch_type', toJson: _punchTypeToJson)
    required ClockPunchType punchType,
    required double latitude,
    required double longitude,
    double? accuracy,
    @JsonKey(name: 'location_label') String? locationLabel,
    String? reason,
  }) = _CreateClockRequestParams;

  factory CreateClockRequestParams.fromJson(Map<String, dynamic> json) =>
      _$CreateClockRequestParamsFromJson(json);
}

String _punchTypeToJson(ClockPunchType type) => type.value;
