import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_info.freezed.dart';

@freezed
abstract class ContactInfo with _$ContactInfo {
  const factory ContactInfo({dynamic emergencyContact}) = _ContactInfo;
}
