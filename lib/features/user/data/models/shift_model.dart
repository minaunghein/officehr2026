import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/data/models/working_day_model.dart';

part 'shift_model.freezed.dart';
part 'shift_model.g.dart';

@freezed
abstract class ShiftModel with _$ShiftModel {
  const factory ShiftModel({
    @JsonKey(name: '_id') required String id,
    required String company,
    required String shiftid,
    required String late1symbol,
    required String late2symbol,
    required String late3symbol,
    required String abssymbol,
    required String hdsymbol,
    String? desc,
    required String unpaidsymbol,
    @Default(15) int intervalmin,
    @Default(false) bool nightshift,
    @Default(false) bool isdefault,
    @Default(false) bool otstartbase,
    @Default([]) List<WorkingDayModel> workingdays,
    @Default([]) List<String> tags,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: '__v') int? version,
  }) = _ShiftModel;

  factory ShiftModel.fromJson(Map<String, dynamic> json) =>
      _$ShiftModelFromJson(json);
}
