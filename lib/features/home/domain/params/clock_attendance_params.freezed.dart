// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_attendance_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClockAttendanceParams {

@JsonKey(fromJson: _locationFromJson, toJson: _locationToJson) AttendanceLocation? get location;@JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson) AttendanceDevice? get device;@JsonKey(name: 'qr_code') String? get qrCode; String? get notes;
/// Create a copy of ClockAttendanceParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockAttendanceParamsCopyWith<ClockAttendanceParams> get copyWith => _$ClockAttendanceParamsCopyWithImpl<ClockAttendanceParams>(this as ClockAttendanceParams, _$identity);

  /// Serializes this ClockAttendanceParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockAttendanceParams&&(identical(other.location, location) || other.location == location)&&(identical(other.device, device) || other.device == device)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,device,qrCode,notes);

@override
String toString() {
  return 'ClockAttendanceParams(location: $location, device: $device, qrCode: $qrCode, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $ClockAttendanceParamsCopyWith<$Res>  {
  factory $ClockAttendanceParamsCopyWith(ClockAttendanceParams value, $Res Function(ClockAttendanceParams) _then) = _$ClockAttendanceParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(fromJson: _locationFromJson, toJson: _locationToJson) AttendanceLocation? location,@JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson) AttendanceDevice? device,@JsonKey(name: 'qr_code') String? qrCode, String? notes
});


$AttendanceLocationCopyWith<$Res>? get location;$AttendanceDeviceCopyWith<$Res>? get device;

}
/// @nodoc
class _$ClockAttendanceParamsCopyWithImpl<$Res>
    implements $ClockAttendanceParamsCopyWith<$Res> {
  _$ClockAttendanceParamsCopyWithImpl(this._self, this._then);

  final ClockAttendanceParams _self;
  final $Res Function(ClockAttendanceParams) _then;

/// Create a copy of ClockAttendanceParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = freezed,Object? device = freezed,Object? qrCode = freezed,Object? notes = freezed,}) {
  return _then(_self.copyWith(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AttendanceLocation?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceDevice?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of ClockAttendanceParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $AttendanceLocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of ClockAttendanceParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceDeviceCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceDeviceCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClockAttendanceParams].
extension ClockAttendanceParamsPatterns on ClockAttendanceParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockAttendanceParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockAttendanceParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockAttendanceParams value)  $default,){
final _that = this;
switch (_that) {
case _ClockAttendanceParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockAttendanceParams value)?  $default,){
final _that = this;
switch (_that) {
case _ClockAttendanceParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _locationFromJson, toJson: _locationToJson)  AttendanceLocation? location, @JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson)  AttendanceDevice? device, @JsonKey(name: 'qr_code')  String? qrCode,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockAttendanceParams() when $default != null:
return $default(_that.location,_that.device,_that.qrCode,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(fromJson: _locationFromJson, toJson: _locationToJson)  AttendanceLocation? location, @JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson)  AttendanceDevice? device, @JsonKey(name: 'qr_code')  String? qrCode,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _ClockAttendanceParams():
return $default(_that.location,_that.device,_that.qrCode,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(fromJson: _locationFromJson, toJson: _locationToJson)  AttendanceLocation? location, @JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson)  AttendanceDevice? device, @JsonKey(name: 'qr_code')  String? qrCode,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _ClockAttendanceParams() when $default != null:
return $default(_that.location,_that.device,_that.qrCode,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClockAttendanceParams implements ClockAttendanceParams {
  const _ClockAttendanceParams({@JsonKey(fromJson: _locationFromJson, toJson: _locationToJson) this.location, @JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson) this.device, @JsonKey(name: 'qr_code') this.qrCode, this.notes});
  factory _ClockAttendanceParams.fromJson(Map<String, dynamic> json) => _$ClockAttendanceParamsFromJson(json);

@override@JsonKey(fromJson: _locationFromJson, toJson: _locationToJson) final  AttendanceLocation? location;
@override@JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson) final  AttendanceDevice? device;
@override@JsonKey(name: 'qr_code') final  String? qrCode;
@override final  String? notes;

/// Create a copy of ClockAttendanceParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockAttendanceParamsCopyWith<_ClockAttendanceParams> get copyWith => __$ClockAttendanceParamsCopyWithImpl<_ClockAttendanceParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClockAttendanceParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockAttendanceParams&&(identical(other.location, location) || other.location == location)&&(identical(other.device, device) || other.device == device)&&(identical(other.qrCode, qrCode) || other.qrCode == qrCode)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,device,qrCode,notes);

@override
String toString() {
  return 'ClockAttendanceParams(location: $location, device: $device, qrCode: $qrCode, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$ClockAttendanceParamsCopyWith<$Res> implements $ClockAttendanceParamsCopyWith<$Res> {
  factory _$ClockAttendanceParamsCopyWith(_ClockAttendanceParams value, $Res Function(_ClockAttendanceParams) _then) = __$ClockAttendanceParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(fromJson: _locationFromJson, toJson: _locationToJson) AttendanceLocation? location,@JsonKey(fromJson: _deviceFromJson, toJson: _deviceToJson) AttendanceDevice? device,@JsonKey(name: 'qr_code') String? qrCode, String? notes
});


@override $AttendanceLocationCopyWith<$Res>? get location;@override $AttendanceDeviceCopyWith<$Res>? get device;

}
/// @nodoc
class __$ClockAttendanceParamsCopyWithImpl<$Res>
    implements _$ClockAttendanceParamsCopyWith<$Res> {
  __$ClockAttendanceParamsCopyWithImpl(this._self, this._then);

  final _ClockAttendanceParams _self;
  final $Res Function(_ClockAttendanceParams) _then;

/// Create a copy of ClockAttendanceParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = freezed,Object? device = freezed,Object? qrCode = freezed,Object? notes = freezed,}) {
  return _then(_ClockAttendanceParams(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AttendanceLocation?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceDevice?,qrCode: freezed == qrCode ? _self.qrCode : qrCode // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of ClockAttendanceParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $AttendanceLocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of ClockAttendanceParams
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceDeviceCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceDeviceCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

// dart format on
