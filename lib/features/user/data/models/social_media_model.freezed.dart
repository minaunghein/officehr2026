// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'social_media_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SocialMediaModel {

@JsonKey(name: '_id') String? get id; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int? get version; String? get fblk; String? get linkedinlk; String? get twlk;
/// Create a copy of SocialMediaModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocialMediaModelCopyWith<SocialMediaModel> get copyWith => _$SocialMediaModelCopyWithImpl<SocialMediaModel>(this as SocialMediaModel, _$identity);

  /// Serializes this SocialMediaModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocialMediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.fblk, fblk) || other.fblk == fblk)&&(identical(other.linkedinlk, linkedinlk) || other.linkedinlk == linkedinlk)&&(identical(other.twlk, twlk) || other.twlk == twlk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,version,fblk,linkedinlk,twlk);

@override
String toString() {
  return 'SocialMediaModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, fblk: $fblk, linkedinlk: $linkedinlk, twlk: $twlk)';
}


}

/// @nodoc
abstract mixin class $SocialMediaModelCopyWith<$Res>  {
  factory $SocialMediaModelCopyWith(SocialMediaModel value, $Res Function(SocialMediaModel) _then) = _$SocialMediaModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version, String? fblk, String? linkedinlk, String? twlk
});




}
/// @nodoc
class _$SocialMediaModelCopyWithImpl<$Res>
    implements $SocialMediaModelCopyWith<$Res> {
  _$SocialMediaModelCopyWithImpl(this._self, this._then);

  final SocialMediaModel _self;
  final $Res Function(SocialMediaModel) _then;

/// Create a copy of SocialMediaModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? fblk = freezed,Object? linkedinlk = freezed,Object? twlk = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,fblk: freezed == fblk ? _self.fblk : fblk // ignore: cast_nullable_to_non_nullable
as String?,linkedinlk: freezed == linkedinlk ? _self.linkedinlk : linkedinlk // ignore: cast_nullable_to_non_nullable
as String?,twlk: freezed == twlk ? _self.twlk : twlk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SocialMediaModel].
extension SocialMediaModelPatterns on SocialMediaModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocialMediaModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocialMediaModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocialMediaModel value)  $default,){
final _that = this;
switch (_that) {
case _SocialMediaModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocialMediaModel value)?  $default,){
final _that = this;
switch (_that) {
case _SocialMediaModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  String? fblk,  String? linkedinlk,  String? twlk)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocialMediaModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.version,_that.fblk,_that.linkedinlk,_that.twlk);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  String? fblk,  String? linkedinlk,  String? twlk)  $default,) {final _that = this;
switch (_that) {
case _SocialMediaModel():
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.version,_that.fblk,_that.linkedinlk,_that.twlk);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  String? fblk,  String? linkedinlk,  String? twlk)?  $default,) {final _that = this;
switch (_that) {
case _SocialMediaModel() when $default != null:
return $default(_that.id,_that.createdAt,_that.updatedAt,_that.version,_that.fblk,_that.linkedinlk,_that.twlk);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SocialMediaModel implements SocialMediaModel {
  const _SocialMediaModel({@JsonKey(name: '_id') this.id, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version, this.fblk, this.linkedinlk, this.twlk});
  factory _SocialMediaModel.fromJson(Map<String, dynamic> json) => _$SocialMediaModelFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int? version;
@override final  String? fblk;
@override final  String? linkedinlk;
@override final  String? twlk;

/// Create a copy of SocialMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocialMediaModelCopyWith<_SocialMediaModel> get copyWith => __$SocialMediaModelCopyWithImpl<_SocialMediaModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SocialMediaModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocialMediaModel&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.fblk, fblk) || other.fblk == fblk)&&(identical(other.linkedinlk, linkedinlk) || other.linkedinlk == linkedinlk)&&(identical(other.twlk, twlk) || other.twlk == twlk));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,updatedAt,version,fblk,linkedinlk,twlk);

@override
String toString() {
  return 'SocialMediaModel(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, fblk: $fblk, linkedinlk: $linkedinlk, twlk: $twlk)';
}


}

/// @nodoc
abstract mixin class _$SocialMediaModelCopyWith<$Res> implements $SocialMediaModelCopyWith<$Res> {
  factory _$SocialMediaModelCopyWith(_SocialMediaModel value, $Res Function(_SocialMediaModel) _then) = __$SocialMediaModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version, String? fblk, String? linkedinlk, String? twlk
});




}
/// @nodoc
class __$SocialMediaModelCopyWithImpl<$Res>
    implements _$SocialMediaModelCopyWith<$Res> {
  __$SocialMediaModelCopyWithImpl(this._self, this._then);

  final _SocialMediaModel _self;
  final $Res Function(_SocialMediaModel) _then;

/// Create a copy of SocialMediaModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? fblk = freezed,Object? linkedinlk = freezed,Object? twlk = freezed,}) {
  return _then(_SocialMediaModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,fblk: freezed == fblk ? _self.fblk : fblk // ignore: cast_nullable_to_non_nullable
as String?,linkedinlk: freezed == linkedinlk ? _self.linkedinlk : linkedinlk // ignore: cast_nullable_to_non_nullable
as String?,twlk: freezed == twlk ? _self.twlk : twlk // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
