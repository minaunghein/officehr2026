import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_media.freezed.dart';

@freezed
abstract class SocialMedia with _$SocialMedia {
  const factory SocialMedia({
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? facebookLink,
    String? linkedInLink,
    String? twitterLink,
  }) = _SocialMedia;
}
