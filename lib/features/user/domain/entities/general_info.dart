import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_info.freezed.dart';

@freezed
abstract class GeneralInfo with _$GeneralInfo {
  const factory GeneralInfo({
    String? id,
    String? street,
    String? street1,
    int? city,
    int? state,
    int? country,
    int? zip,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? email,
    String? phone,
    String? registerId,
    String? website,
  }) = _GeneralInfo;
}
