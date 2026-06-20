import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:office_hr/features/user/data/models/user_details_model.dart';

part 'user_details_response_model.freezed.dart';
part 'user_details_response_model.g.dart';

/// Response wrapper for user details API
@freezed
abstract class UserDetailsResponseModel with _$UserDetailsResponseModel {
  const factory UserDetailsResponseModel({
    @Default([]) List<String> message,
    required UserDetailsModel data,
  }) = _UserDetailsResponseModel;

  factory UserDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsResponseModelFromJson(json);
}
