// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDetailsResponseModel _$UserDetailsResponseModelFromJson(
  Map<String, dynamic> json,
) => _UserDetailsResponseModel(
  message:
      (json['message'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  data: UserDetailsModel.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$UserDetailsResponseModelToJson(
  _UserDetailsResponseModel instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};
