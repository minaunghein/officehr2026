import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/family_info/family_info.dart';

part 'family_info_model.freezed.dart';
part 'family_info_model.g.dart';

@freezed
abstract class FamilyInfoModel with _$FamilyInfoModel {
  const FamilyInfoModel._();

  const factory FamilyInfoModel({@Default(<dynamic>[]) List<dynamic> members}) =
      _FamilyInfoModel;

  factory FamilyInfoModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyInfoModelFromJson(json);

  FamilyInfo toEntity() => FamilyInfo(members: members);
}
