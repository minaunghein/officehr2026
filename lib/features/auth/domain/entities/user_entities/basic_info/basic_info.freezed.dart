// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BasicInfo {

 String get firstName; String get lastName; String? get nrc;
/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicInfoCopyWith<BasicInfo> get copyWith => _$BasicInfoCopyWithImpl<BasicInfo>(this as BasicInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfo&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.nrc, nrc) || other.nrc == nrc));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,nrc);

@override
String toString() {
  return 'BasicInfo(firstName: $firstName, lastName: $lastName, nrc: $nrc)';
}


}

/// @nodoc
abstract mixin class $BasicInfoCopyWith<$Res>  {
  factory $BasicInfoCopyWith(BasicInfo value, $Res Function(BasicInfo) _then) = _$BasicInfoCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String? nrc
});




}
/// @nodoc
class _$BasicInfoCopyWithImpl<$Res>
    implements $BasicInfoCopyWith<$Res> {
  _$BasicInfoCopyWithImpl(this._self, this._then);

  final BasicInfo _self;
  final $Res Function(BasicInfo) _then;

/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? nrc = freezed,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,nrc: freezed == nrc ? _self.nrc : nrc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BasicInfo].
extension BasicInfoPatterns on BasicInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasicInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasicInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasicInfo value)  $default,){
final _that = this;
switch (_that) {
case _BasicInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasicInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BasicInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String? nrc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasicInfo() when $default != null:
return $default(_that.firstName,_that.lastName,_that.nrc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  String? nrc)  $default,) {final _that = this;
switch (_that) {
case _BasicInfo():
return $default(_that.firstName,_that.lastName,_that.nrc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  String? nrc)?  $default,) {final _that = this;
switch (_that) {
case _BasicInfo() when $default != null:
return $default(_that.firstName,_that.lastName,_that.nrc);case _:
  return null;

}
}

}

/// @nodoc


class _BasicInfo implements BasicInfo {
  const _BasicInfo({required this.firstName, required this.lastName, this.nrc});
  

@override final  String firstName;
@override final  String lastName;
@override final  String? nrc;

/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasicInfoCopyWith<_BasicInfo> get copyWith => __$BasicInfoCopyWithImpl<_BasicInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasicInfo&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.nrc, nrc) || other.nrc == nrc));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,nrc);

@override
String toString() {
  return 'BasicInfo(firstName: $firstName, lastName: $lastName, nrc: $nrc)';
}


}

/// @nodoc
abstract mixin class _$BasicInfoCopyWith<$Res> implements $BasicInfoCopyWith<$Res> {
  factory _$BasicInfoCopyWith(_BasicInfo value, $Res Function(_BasicInfo) _then) = __$BasicInfoCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, String? nrc
});




}
/// @nodoc
class __$BasicInfoCopyWithImpl<$Res>
    implements _$BasicInfoCopyWith<$Res> {
  __$BasicInfoCopyWithImpl(this._self, this._then);

  final _BasicInfo _self;
  final $Res Function(_BasicInfo) _then;

/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? nrc = freezed,}) {
  return _then(_BasicInfo(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,nrc: freezed == nrc ? _self.nrc : nrc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
