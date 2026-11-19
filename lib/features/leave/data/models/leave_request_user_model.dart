import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/leave/data/models/leave_json.dart';

part 'leave_request_user_model.freezed.dart';
part 'leave_request_user_model.g.dart';

/// The requester account embedded in `/api/v1/leave-requests/all` items. Kept
/// as a data-only model so the domain entity stays free of network details.
@freezed
abstract class LeaveRequestUserModel with _$LeaveRequestUserModel {
  const factory LeaveRequestUserModel({
    @JsonKey(readValue: readMongoId) @Default('') String id,
    @Default('') String username,
    @Default('') String email,
  }) = _LeaveRequestUserModel;

  factory LeaveRequestUserModel.fromJson(Map<String, dynamic> json) =>
      _$LeaveRequestUserModelFromJson(json);
}
