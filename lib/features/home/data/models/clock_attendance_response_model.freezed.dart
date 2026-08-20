// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_attendance_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClockAttendanceResponseModel {

@JsonKey(readValue: _readPunch) AttendancePunchModel get punch;@JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord) AttendanceRecordModel? get attendanceRecord;
/// Create a copy of ClockAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockAttendanceResponseModelCopyWith<ClockAttendanceResponseModel> get copyWith => _$ClockAttendanceResponseModelCopyWithImpl<ClockAttendanceResponseModel>(this as ClockAttendanceResponseModel, _$identity);

  /// Serializes this ClockAttendanceResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockAttendanceResponseModel&&(identical(other.punch, punch) || other.punch == punch)&&(identical(other.attendanceRecord, attendanceRecord) || other.attendanceRecord == attendanceRecord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,punch,attendanceRecord);

@override
String toString() {
  return 'ClockAttendanceResponseModel(punch: $punch, attendanceRecord: $attendanceRecord)';
}


}

/// @nodoc
abstract mixin class $ClockAttendanceResponseModelCopyWith<$Res>  {
  factory $ClockAttendanceResponseModelCopyWith(ClockAttendanceResponseModel value, $Res Function(ClockAttendanceResponseModel) _then) = _$ClockAttendanceResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readPunch) AttendancePunchModel punch,@JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord) AttendanceRecordModel? attendanceRecord
});


$AttendancePunchModelCopyWith<$Res> get punch;$AttendanceRecordModelCopyWith<$Res>? get attendanceRecord;

}
/// @nodoc
class _$ClockAttendanceResponseModelCopyWithImpl<$Res>
    implements $ClockAttendanceResponseModelCopyWith<$Res> {
  _$ClockAttendanceResponseModelCopyWithImpl(this._self, this._then);

  final ClockAttendanceResponseModel _self;
  final $Res Function(ClockAttendanceResponseModel) _then;

/// Create a copy of ClockAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? punch = null,Object? attendanceRecord = freezed,}) {
  return _then(_self.copyWith(
punch: null == punch ? _self.punch : punch // ignore: cast_nullable_to_non_nullable
as AttendancePunchModel,attendanceRecord: freezed == attendanceRecord ? _self.attendanceRecord : attendanceRecord // ignore: cast_nullable_to_non_nullable
as AttendanceRecordModel?,
  ));
}
/// Create a copy of ClockAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendancePunchModelCopyWith<$Res> get punch {
  
  return $AttendancePunchModelCopyWith<$Res>(_self.punch, (value) {
    return _then(_self.copyWith(punch: value));
  });
}/// Create a copy of ClockAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceRecordModelCopyWith<$Res>? get attendanceRecord {
    if (_self.attendanceRecord == null) {
    return null;
  }

  return $AttendanceRecordModelCopyWith<$Res>(_self.attendanceRecord!, (value) {
    return _then(_self.copyWith(attendanceRecord: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClockAttendanceResponseModel].
extension ClockAttendanceResponseModelPatterns on ClockAttendanceResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockAttendanceResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockAttendanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockAttendanceResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ClockAttendanceResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockAttendanceResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClockAttendanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readPunch)  AttendancePunchModel punch, @JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord)  AttendanceRecordModel? attendanceRecord)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockAttendanceResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readPunch)  AttendancePunchModel punch, @JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord)  AttendanceRecordModel? attendanceRecord)  $default,) {final _that = this;
switch (_that) {
case _ClockAttendanceResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readPunch)  AttendancePunchModel punch, @JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord)  AttendanceRecordModel? attendanceRecord)?  $default,) {final _that = this;
switch (_that) {
case _ClockAttendanceResponseModel() when $default != null:
return $default(_that.punch,_that.attendanceRecord);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClockAttendanceResponseModel extends ClockAttendanceResponseModel {
  const _ClockAttendanceResponseModel({@JsonKey(readValue: _readPunch) required this.punch, @JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord) this.attendanceRecord}): super._();
  factory _ClockAttendanceResponseModel.fromJson(Map<String, dynamic> json) => _$ClockAttendanceResponseModelFromJson(json);

@override@JsonKey(readValue: _readPunch) final  AttendancePunchModel punch;
@override@JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord) final  AttendanceRecordModel? attendanceRecord;

/// Create a copy of ClockAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockAttendanceResponseModelCopyWith<_ClockAttendanceResponseModel> get copyWith => __$ClockAttendanceResponseModelCopyWithImpl<_ClockAttendanceResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClockAttendanceResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockAttendanceResponseModel&&(identical(other.punch, punch) || other.punch == punch)&&(identical(other.attendanceRecord, attendanceRecord) || other.attendanceRecord == attendanceRecord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,punch,attendanceRecord);

@override
String toString() {
  return 'ClockAttendanceResponseModel(punch: $punch, attendanceRecord: $attendanceRecord)';
}


}

/// @nodoc
abstract mixin class _$ClockAttendanceResponseModelCopyWith<$Res> implements $ClockAttendanceResponseModelCopyWith<$Res> {
  factory _$ClockAttendanceResponseModelCopyWith(_ClockAttendanceResponseModel value, $Res Function(_ClockAttendanceResponseModel) _then) = __$ClockAttendanceResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readPunch) AttendancePunchModel punch,@JsonKey(name: 'attendance_record', readValue: _readAttendanceRecord) AttendanceRecordModel? attendanceRecord
});


@override $AttendancePunchModelCopyWith<$Res> get punch;@override $AttendanceRecordModelCopyWith<$Res>? get attendanceRecord;

}
/// @nodoc
class __$ClockAttendanceResponseModelCopyWithImpl<$Res>
    implements _$ClockAttendanceResponseModelCopyWith<$Res> {
  __$ClockAttendanceResponseModelCopyWithImpl(this._self, this._then);

  final _ClockAttendanceResponseModel _self;
  final $Res Function(_ClockAttendanceResponseModel) _then;

/// Create a copy of ClockAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? punch = null,Object? attendanceRecord = freezed,}) {
  return _then(_ClockAttendanceResponseModel(
punch: null == punch ? _self.punch : punch // ignore: cast_nullable_to_non_nullable
as AttendancePunchModel,attendanceRecord: freezed == attendanceRecord ? _self.attendanceRecord : attendanceRecord // ignore: cast_nullable_to_non_nullable
as AttendanceRecordModel?,
  ));
}

/// Create a copy of ClockAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendancePunchModelCopyWith<$Res> get punch {
  
  return $AttendancePunchModelCopyWith<$Res>(_self.punch, (value) {
    return _then(_self.copyWith(punch: value));
  });
}/// Create a copy of ClockAttendanceResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceRecordModelCopyWith<$Res>? get attendanceRecord {
    if (_self.attendanceRecord == null) {
    return null;
  }

  return $AttendanceRecordModelCopyWith<$Res>(_self.attendanceRecord!, (value) {
    return _then(_self.copyWith(attendanceRecord: value));
  });
}
}

// dart format on
