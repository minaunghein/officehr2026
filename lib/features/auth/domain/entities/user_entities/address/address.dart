import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';

@freezed
abstract class Address with _$Address {
  const factory Address({
    required String street,
    required String city,
    required String state,
    required String country,
    required String postalCode,
  }) = _Address;
}
