import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info.freezed.dart';

/// Entity for company information
@freezed
abstract class CompanyInfo with _$CompanyInfo {
  const factory CompanyInfo({
    required String shortCode,
    required String? logo,
    required String name,
    required String street,
    required String street1,
    required int cityId,
    required int stateId,
    required int countryId,
    required int zipCode,
    required int sequence,
    required bool isActive,
  }) = _CompanyInfo;
}
