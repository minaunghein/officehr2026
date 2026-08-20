// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceDevice {

 String? get deviceId; String? get deviceType; String? get ipAddress; String? get userAgent;
/// Create a copy of AttendanceDevice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceDeviceCopyWith<AttendanceDevice> get copyWith => _$AttendanceDeviceCopyWithImpl<AttendanceDevice>(this as AttendanceDevice, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceDevice&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceType,ipAddress,userAgent);

@override
String toString() {
  return 'AttendanceDevice(deviceId: $deviceId, deviceType: $deviceType, ipAddress: $ipAddress, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class $AttendanceDeviceCopyWith<$Res>  {
  factory $AttendanceDeviceCopyWith(AttendanceDevice value, $Res Function(AttendanceDevice) _then) = _$AttendanceDeviceCopyWithImpl;
@useResult
$Res call({
 String? deviceId, String? deviceType, String? ipAddress, String? userAgent
});




}
/// @nodoc
class _$AttendanceDeviceCopyWithImpl<$Res>
    implements $AttendanceDeviceCopyWith<$Res> {
  _$AttendanceDeviceCopyWithImpl(this._self, this._then);

  final AttendanceDevice _self;
  final $Res Function(AttendanceDevice) _then;

/// Create a copy of AttendanceDevice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? deviceType = freezed,Object? ipAddress = freezed,Object? userAgent = freezed,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceDevice].
extension AttendanceDevicePatterns on AttendanceDevice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceDevice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceDevice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceDevice value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceDevice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceDevice value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceDevice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? deviceId,  String? deviceType,  String? ipAddress,  String? userAgent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceDevice() when $default != null:
return $default(_that.deviceId,_that.deviceType,_that.ipAddress,_that.userAgent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? deviceId,  String? deviceType,  String? ipAddress,  String? userAgent)  $default,) {final _that = this;
switch (_that) {
case _AttendanceDevice():
return $default(_that.deviceId,_that.deviceType,_that.ipAddress,_that.userAgent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? deviceId,  String? deviceType,  String? ipAddress,  String? userAgent)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceDevice() when $default != null:
return $default(_that.deviceId,_that.deviceType,_that.ipAddress,_that.userAgent);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceDevice implements AttendanceDevice {
  const _AttendanceDevice({this.deviceId, this.deviceType, this.ipAddress, this.userAgent});
  

@override final  String? deviceId;
@override final  String? deviceType;
@override final  String? ipAddress;
@override final  String? userAgent;

/// Create a copy of AttendanceDevice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceDeviceCopyWith<_AttendanceDevice> get copyWith => __$AttendanceDeviceCopyWithImpl<_AttendanceDevice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceDevice&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}


@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceType,ipAddress,userAgent);

@override
String toString() {
  return 'AttendanceDevice(deviceId: $deviceId, deviceType: $deviceType, ipAddress: $ipAddress, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class _$AttendanceDeviceCopyWith<$Res> implements $AttendanceDeviceCopyWith<$Res> {
  factory _$AttendanceDeviceCopyWith(_AttendanceDevice value, $Res Function(_AttendanceDevice) _then) = __$AttendanceDeviceCopyWithImpl;
@override @useResult
$Res call({
 String? deviceId, String? deviceType, String? ipAddress, String? userAgent
});




}
/// @nodoc
class __$AttendanceDeviceCopyWithImpl<$Res>
    implements _$AttendanceDeviceCopyWith<$Res> {
  __$AttendanceDeviceCopyWithImpl(this._self, this._then);

  final _AttendanceDevice _self;
  final $Res Function(_AttendanceDevice) _then;

/// Create a copy of AttendanceDevice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? deviceType = freezed,Object? ipAddress = freezed,Object? userAgent = freezed,}) {
  return _then(_AttendanceDevice(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
