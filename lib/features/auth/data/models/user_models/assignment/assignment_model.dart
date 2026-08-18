import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/assignment/assignment.dart';

part 'assignment_model.freezed.dart';
part 'assignment_model.g.dart';

@freezed
abstract class AssignmentModel with _$AssignmentModel {
  const AssignmentModel._();

  const factory AssignmentModel({
    @JsonKey(name: 'company_id') @Default('') String companyId,
    @JsonKey(name: 'role_id') @Default('') String roleId,
  }) = _AssignmentModel;

  factory AssignmentModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentModelFromJson(json);

  Assignment toEntity() => Assignment(companyId: companyId, roleId: roleId);
}
