import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/supervisor/supervisor.dart';

part 'supervisor_model.freezed.dart';
part 'supervisor_model.g.dart';

@freezed
abstract class SupervisorModel with _$SupervisorModel {
  const SupervisorModel._();

  const factory SupervisorModel({
    @JsonKey(readValue: _readId) @Default('') String id,
    @JsonKey(name: 'user_id') @Default('') String userId,
  }) = _SupervisorModel;

  factory SupervisorModel.fromJson(Map<String, dynamic> json) =>
      _$SupervisorModelFromJson(json);

  Supervisor toEntity() => Supervisor(id: id, userId: userId);
}

Object? _readId(Map<dynamic, dynamic> json, String key) =>
    json['_id'] ?? json[key];
