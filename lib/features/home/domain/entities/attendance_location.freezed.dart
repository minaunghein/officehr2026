// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceLocation {

 double? get latitude; double? get longitude; double? get accuracy;
/// Create a copy of AttendanceLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceLocationCopyWith<AttendanceLocation> get copyWith => _$AttendanceLocationCopyWithImpl<AttendanceLocation>(this as AttendanceLocation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceLocation&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,accuracy);

@override
String toString() {
  return 'AttendanceLocation(latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class $AttendanceLocationCopyWith<$Res>  {
  factory $AttendanceLocationCopyWith(AttendanceLocation value, $Res Function(AttendanceLocation) _then) = _$AttendanceLocationCopyWithImpl;
@useResult
$Res call({
 double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class _$AttendanceLocationCopyWithImpl<$Res>
    implements $AttendanceLocationCopyWith<$Res> {
  _$AttendanceLocationCopyWithImpl(this._self, this._then);

  final AttendanceLocation _self;
  final $Res Function(AttendanceLocation) _then;

/// Create a copy of AttendanceLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,}) {
  return _then(_self.copyWith(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceLocation].
extension AttendanceLocationPatterns on AttendanceLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceLocation value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceLocation value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? latitude,  double? longitude,  double? accuracy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceLocation() when $default != null:
return $default(_that.latitude,_that.longitude,_that.accuracy);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? latitude,  double? longitude,  double? accuracy)  $default,) {final _that = this;
switch (_that) {
case _AttendanceLocation():
return $default(_that.latitude,_that.longitude,_that.accuracy);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? latitude,  double? longitude,  double? accuracy)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceLocation() when $default != null:
return $default(_that.latitude,_that.longitude,_that.accuracy);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceLocation implements AttendanceLocation {
  const _AttendanceLocation({this.latitude, this.longitude, this.accuracy});
  

@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;

/// Create a copy of AttendanceLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceLocationCopyWith<_AttendanceLocation> get copyWith => __$AttendanceLocationCopyWithImpl<_AttendanceLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceLocation&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}


@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,accuracy);

@override
String toString() {
  return 'AttendanceLocation(latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class _$AttendanceLocationCopyWith<$Res> implements $AttendanceLocationCopyWith<$Res> {
  factory _$AttendanceLocationCopyWith(_AttendanceLocation value, $Res Function(_AttendanceLocation) _then) = __$AttendanceLocationCopyWithImpl;
@override @useResult
$Res call({
 double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class __$AttendanceLocationCopyWithImpl<$Res>
    implements _$AttendanceLocationCopyWith<$Res> {
  __$AttendanceLocationCopyWithImpl(this._self, this._then);

  final _AttendanceLocation _self;
  final $Res Function(_AttendanceLocation) _then;

/// Create a copy of AttendanceLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,}) {
  return _then(_AttendanceLocation(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
