// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SocialMedia {

 String? get id; DateTime? get createdAt; DateTime? get updatedAt; String? get facebookLink; String? get linkedInLink; String? get twitterLink;
/// Create a copy of SocialMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialMediaCopyWith<SocialMedia> get copyWith => _$SocialMediaCopyWithImpl<SocialMedia>(this as SocialMedia, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.facebookLink, facebookLink) || other.facebookLink == facebookLink)&&(identical(other.linkedInLink, linkedInLink) || other.linkedInLink == linkedInLink)&&(identical(other.twitterLink, twitterLink) || other.twitterLink == twitterLink));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,facebookLink,linkedInLink,twitterLink);

@override
String toString() {
  return 'SocialMedia(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, facebookLink: $facebookLink, linkedInLink: $linkedInLink, twitterLink: $twitterLink)';
}


}

/// @nodoc
abstract mixin class $SocialMediaCopyWith<$Res>  {
  factory $SocialMediaCopyWith(SocialMedia value, $Res Function(SocialMedia) _then) = _$SocialMediaCopyWithImpl;
@useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? facebookLink, String? linkedInLink, String? twitterLink
});




}
/// @nodoc
class _$SocialMediaCopyWithImpl<$Res>
    implements $SocialMediaCopyWith<$Res> {
  _$SocialMediaCopyWithImpl(this._self, this._then);

  final SocialMedia _self;
  final $Res Function(SocialMedia) _then;

/// Create a copy of SocialMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? facebookLink = freezed,Object? linkedInLink = freezed,Object? twitterLink = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,facebookLink: freezed == facebookLink ? _self.facebookLink : facebookLink // ignore: cast_nullable_to_non_nullable
as String?,linkedInLink: freezed == linkedInLink ? _self.linkedInLink : linkedInLink // ignore: cast_nullable_to_non_nullable
as String?,twitterLink: freezed == twitterLink ? _self.twitterLink : twitterLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialMedia].
extension SocialMediaPatterns on SocialMedia {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialMedia() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialMedia value)  $default,){
final _that = this;
switch (_that) {
case _SocialMedia():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialMedia value)?  $default,){
final _that = this;
switch (_that) {
case _SocialMedia() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? facebookLink,  String? linkedInLink,  String? twitterLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialMedia() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.facebookLink,_that.linkedInLink,_that.twitterLink);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? facebookLink,  String? linkedInLink,  String? twitterLink)  $default,) {final _that = this;
switch (_that) {
case _SocialMedia():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.facebookLink,_that.linkedInLink,_that.twitterLink);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  DateTime? createdAt,  DateTime? updatedAt,  String? facebookLink,  String? linkedInLink,  String? twitterLink)?  $default,) {final _that = this;
switch (_that) {
case _SocialMedia() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.facebookLink,_that.linkedInLink,_that.twitterLink);case _:
  return null;

}
}

}

/// @nodoc


class _SocialMedia implements SocialMedia {
  const _SocialMedia({this.id, this.createdAt, this.updatedAt, this.facebookLink, this.linkedInLink, this.twitterLink});
  

@override final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? facebookLink;
@override final  String? linkedInLink;
@override final  String? twitterLink;

/// Create a copy of SocialMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialMediaCopyWith<_SocialMedia> get copyWith => __$SocialMediaCopyWithImpl<_SocialMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.facebookLink, facebookLink) || other.facebookLink == facebookLink)&&(identical(other.linkedInLink, linkedInLink) || other.linkedInLink == linkedInLink)&&(identical(other.twitterLink, twitterLink) || other.twitterLink == twitterLink));
}


@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,facebookLink,linkedInLink,twitterLink);

@override
String toString() {
  return 'SocialMedia(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, facebookLink: $facebookLink, linkedInLink: $linkedInLink, twitterLink: $twitterLink)';
}


}

/// @nodoc
abstract mixin class _$SocialMediaCopyWith<$Res> implements $SocialMediaCopyWith<$Res> {
  factory _$SocialMediaCopyWith(_SocialMedia value, $Res Function(_SocialMedia) _then) = __$SocialMediaCopyWithImpl;
@override @useResult
$Res call({
 String? id, DateTime? createdAt, DateTime? updatedAt, String? facebookLink, String? linkedInLink, String? twitterLink
});




}
/// @nodoc
class __$SocialMediaCopyWithImpl<$Res>
    implements _$SocialMediaCopyWith<$Res> {
  __$SocialMediaCopyWithImpl(this._self, this._then);

  final _SocialMedia _self;
  final $Res Function(_SocialMedia) _then;

/// Create a copy of SocialMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? facebookLink = freezed,Object? linkedInLink = freezed,Object? twitterLink = freezed,}) {
  return _then(_SocialMedia(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,facebookLink: freezed == facebookLink ? _self.facebookLink : facebookLink // ignore: cast_nullable_to_non_nullable
as String?,linkedInLink: freezed == linkedInLink ? _self.linkedInLink : linkedInLink // ignore: cast_nullable_to_non_nullable
as String?,twitterLink: freezed == twitterLink ? _self.twitterLink : twitterLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
