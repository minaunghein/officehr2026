import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/address/address.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
abstract class AddressModel with _$AddressModel {
  const AddressModel._();

  const factory AddressModel({
    @Default('') String street,
    @Default('') String city,
    @Default('') String state,
    @Default('') String country,
    @JsonKey(name: 'postal_code') @Default('') String postalCode,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  Address toEntity() => Address(
    street: street,
    city: city,
    state: state,
    country: country,
    postalCode: postalCode,
  );
}
