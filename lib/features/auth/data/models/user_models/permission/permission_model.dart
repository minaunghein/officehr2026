import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/permission/permission.dart';

part 'permission_model.freezed.dart';
part 'permission_model.g.dart';

@freezed
abstract class PermissionModel with _$PermissionModel {
  const PermissionModel._();

  const factory PermissionModel({
    @Default('') String resource,
    @Default('') String action,
    @Default('') String scope,
  }) = _PermissionModel;

  factory PermissionModel.fromJson(Map<String, dynamic> json) =>
      _$PermissionModelFromJson(json);

  Permission toEntity() =>
      Permission(resource: resource, action: action, scope: scope);
}
