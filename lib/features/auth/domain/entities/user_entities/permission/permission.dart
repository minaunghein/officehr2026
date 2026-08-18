import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission.freezed.dart';

@freezed
abstract class Permission with _$Permission {
  const factory Permission({
    required String resource,
    required String action,
    required String scope,
  }) = _Permission;
}
