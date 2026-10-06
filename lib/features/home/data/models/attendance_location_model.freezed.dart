// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceLocationModel {

 double? get latitude; double? get longitude; double? get accuracy;
/// Create a copy of AttendanceLocationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceLocationModelCopyWith<AttendanceLocationModel> get copyWith => _$AttendanceLocationModelCopyWithImpl<AttendanceLocationModel>(this as AttendanceLocationModel, _$identity);

  /// Serializes this AttendanceLocationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceLocationModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,accuracy);

@override
String toString() {
  return 'AttendanceLocationModel(latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class $AttendanceLocationModelCopyWith<$Res>  {
  factory $AttendanceLocationModelCopyWith(AttendanceLocationModel value, $Res Function(AttendanceLocationModel) _then) = _$AttendanceLocationModelCopyWithImpl;
@useResult
$Res call({
 double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class _$AttendanceLocationModelCopyWithImpl<$Res>
    implements $AttendanceLocationModelCopyWith<$Res> {
  _$AttendanceLocationModelCopyWithImpl(this._self, this._then);

  final AttendanceLocationModel _self;
  final $Res Function(AttendanceLocationModel) _then;

/// Create a copy of AttendanceLocationModel
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


/// Adds pattern-matching-related methods to [AttendanceLocationModel].
extension AttendanceLocationModelPatterns on AttendanceLocationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceLocationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceLocationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceLocationModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceLocationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceLocationModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceLocationModel() when $default != null:
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
case _AttendanceLocationModel() when $default != null:
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
case _AttendanceLocationModel():
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
case _AttendanceLocationModel() when $default != null:
return $default(_that.latitude,_that.longitude,_that.accuracy);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceLocationModel extends AttendanceLocationModel {
  const _AttendanceLocationModel({this.latitude, this.longitude, this.accuracy}): super._();
  factory _AttendanceLocationModel.fromJson(Map<String, dynamic> json) => _$AttendanceLocationModelFromJson(json);

@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;

/// Create a copy of AttendanceLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceLocationModelCopyWith<_AttendanceLocationModel> get copyWith => __$AttendanceLocationModelCopyWithImpl<_AttendanceLocationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceLocationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceLocationModel&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,latitude,longitude,accuracy);

@override
String toString() {
  return 'AttendanceLocationModel(latitude: $latitude, longitude: $longitude, accuracy: $accuracy)';
}


}

/// @nodoc
abstract mixin class _$AttendanceLocationModelCopyWith<$Res> implements $AttendanceLocationModelCopyWith<$Res> {
  factory _$AttendanceLocationModelCopyWith(_AttendanceLocationModel value, $Res Function(_AttendanceLocationModel) _then) = __$AttendanceLocationModelCopyWithImpl;
@override @useResult
$Res call({
 double? latitude, double? longitude, double? accuracy
});




}
/// @nodoc
class __$AttendanceLocationModelCopyWithImpl<$Res>
    implements _$AttendanceLocationModelCopyWith<$Res> {
  __$AttendanceLocationModelCopyWithImpl(this._self, this._then);

  final _AttendanceLocationModel _self;
  final $Res Function(_AttendanceLocationModel) _then;

/// Create a copy of AttendanceLocationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,}) {
  return _then(_AttendanceLocationModel(
latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
