import 'package:freezed_annotation/freezed_annotation.dart';

part 'supervisor.freezed.dart';

@freezed
abstract class Supervisor with _$Supervisor {
  const factory Supervisor({required String id, required String userId}) =
      _Supervisor;
}
