// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClockAttendanceResponse {

 AttendancePunch get punch; AttendanceRecord? get attendanceRecord;
/// Create a copy of ClockAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockAttendanceResponseCopyWith<ClockAttendanceResponse> get copyWith => _$ClockAttendanceResponseCopyWithImpl<ClockAttendanceResponse>(this as ClockAttendanceResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockAttendanceResponse&&(identical(other.punch, punch) || other.punch == punch)&&(identical(other.attendanceRecord, attendanceRecord) || other.attendanceRecord == attendanceRecord));
}


@override
int get hashCode => Object.hash(runtimeType,punch,attendanceRecord);

@override
String toString() {
  return 'ClockAttendanceResponse(punch: $punch, attendanceRecord: $attendanceRecord)';
}


}

/// @nodoc
abstract mixin class $ClockAttendanceResponseCopyWith<$Res>  {
  factory $ClockAttendanceResponseCopyWith(ClockAttendanceResponse value, $Res Function(ClockAttendanceResponse) _then) = _$ClockAttendanceResponseCopyWithImpl;
@useResult
$Res call({
 AttendancePunch punch, AttendanceRecord? attendanceRecord
});


$AttendancePunchCopyWith<$Res> get punch;$AttendanceRecordCopyWith<$Res>? get attendanceRecord;

}
/// @nodoc
class _$ClockAttendanceResponseCopyWithImpl<$Res>
    implements $ClockAttendanceResponseCopyWith<$Res> {
  _$ClockAttendanceResponseCopyWithImpl(this._self, this._then);

  final ClockAttendanceResponse _self;
  final $Res Function(ClockAttendanceResponse) _then;

/// Create a copy of ClockAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? punch = null,Object? attendanceRecord = freezed,}) {
  return _then(_self.copyWith(
punch: null == punch ? _self.punch : punch // ignore: cast_nullable_to_non_nullable
as AttendancePunch,attendanceRecord: freezed == attendanceRecord ? _self.attendanceRecord : attendanceRecord // ignore: cast_nullable_to_non_nullable
as AttendanceRecord?,
  ));
}
/// Create a copy of ClockAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendancePunchCopyWith<$Res> get punch {
  
  return $AttendancePunchCopyWith<$Res>(_self.punch, (value) {
    return _then(_self.copyWith(punch: value));
  });
}/// Create a copy of ClockAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<$Res>? get attendanceRecord {
    if (_self.attendanceRecord == null) {
    return null;
  }

  return $AttendanceRecordCopyWith<$Res>(_self.attendanceRecord!, (value) {
    return _then(_self.copyWith(attendanceRecord: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClockAttendanceResponse].
extension ClockAttendanceResponsePatterns on ClockAttendanceResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockAttendanceResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockAttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockAttendanceResponse value)  $default,){
final _that = this;
switch (_that) {
case _ClockAttendanceResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockAttendanceResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ClockAttendanceResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AttendancePunch punch,  AttendanceRecord? attendanceRecord)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockAttendanceResponse() when $default != null:
return $default(_that.punch,_that.attendanceRecord);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AttendancePunch punch,  AttendanceRecord? attendanceRecord)  $default,) {final _that = this;
switch (_that) {
case _ClockAttendanceResponse():
return $default(_that.punch,_that.attendanceRecord);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AttendancePunch punch,  AttendanceRecord? attendanceRecord)?  $default,) {final _that = this;
switch (_that) {
case _ClockAttendanceResponse() when $default != null:
return $default(_that.punch,_that.attendanceRecord);case _:
  return null;

}
}

}

/// @nodoc


class _ClockAttendanceResponse implements ClockAttendanceResponse {
  const _ClockAttendanceResponse({required this.punch, this.attendanceRecord});
  

@override final  AttendancePunch punch;
@override final  AttendanceRecord? attendanceRecord;

/// Create a copy of ClockAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockAttendanceResponseCopyWith<_ClockAttendanceResponse> get copyWith => __$ClockAttendanceResponseCopyWithImpl<_ClockAttendanceResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockAttendanceResponse&&(identical(other.punch, punch) || other.punch == punch)&&(identical(other.attendanceRecord, attendanceRecord) || other.attendanceRecord == attendanceRecord));
}


@override
int get hashCode => Object.hash(runtimeType,punch,attendanceRecord);

@override
String toString() {
  return 'ClockAttendanceResponse(punch: $punch, attendanceRecord: $attendanceRecord)';
}


}

/// @nodoc
abstract mixin class _$ClockAttendanceResponseCopyWith<$Res> implements $ClockAttendanceResponseCopyWith<$Res> {
  factory _$ClockAttendanceResponseCopyWith(_ClockAttendanceResponse value, $Res Function(_ClockAttendanceResponse) _then) = __$ClockAttendanceResponseCopyWithImpl;
@override @useResult
$Res call({
 AttendancePunch punch, AttendanceRecord? attendanceRecord
});


@override $AttendancePunchCopyWith<$Res> get punch;@override $AttendanceRecordCopyWith<$Res>? get attendanceRecord;

}
/// @nodoc
class __$ClockAttendanceResponseCopyWithImpl<$Res>
    implements _$ClockAttendanceResponseCopyWith<$Res> {
  __$ClockAttendanceResponseCopyWithImpl(this._self, this._then);

  final _ClockAttendanceResponse _self;
  final $Res Function(_ClockAttendanceResponse) _then;

/// Create a copy of ClockAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? punch = null,Object? attendanceRecord = freezed,}) {
  return _then(_ClockAttendanceResponse(
punch: null == punch ? _self.punch : punch // ignore: cast_nullable_to_non_nullable
as AttendancePunch,attendanceRecord: freezed == attendanceRecord ? _self.attendanceRecord : attendanceRecord // ignore: cast_nullable_to_non_nullable
as AttendanceRecord?,
  ));
}

/// Create a copy of ClockAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendancePunchCopyWith<$Res> get punch {
  
  return $AttendancePunchCopyWith<$Res>(_self.punch, (value) {
    return _then(_self.copyWith(punch: value));
  });
}/// Create a copy of ClockAttendanceResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<$Res>? get attendanceRecord {
    if (_self.attendanceRecord == null) {
    return null;
  }

  return $AttendanceRecordCopyWith<$Res>(_self.attendanceRecord!, (value) {
    return _then(_self.copyWith(attendanceRecord: value));
  });
}
}

// dart format on
