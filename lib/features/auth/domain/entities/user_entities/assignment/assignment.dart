import 'package:freezed_annotation/freezed_annotation.dart';

part 'assignment.freezed.dart';

@freezed
abstract class Assignment with _$Assignment {
  const factory Assignment({
    required String companyId,
    required String roleId,
  }) = _Assignment;
}
