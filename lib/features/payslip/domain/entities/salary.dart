import 'package:freezed_annotation/freezed_annotation.dart';

part 'salary.freezed.dart';

@freezed
abstract class OtRate with _$OtRate {
  const factory OtRate({
    String? id,
    required num ot1Rate,
    required num ot2Rate,
    required num ot3Rate,
  }) = _OtRate;
}

@freezed
abstract class Salary with _$Salary {
  const factory Salary({
    required String id,
    required String userId,
    required String companyId,
    required num salary,
    required bool ssb,
    OtRate? otRate,
    required num otAmount,
    required bool isOtFlat,
    @Default([]) List<dynamic> tags,
    required bool isDeleted,
    dynamic deletedAt,
    String? createdAt,
    String? updatedAt,
    int? paymentCode,
    int? paymentNum,
  }) = _Salary;
}
