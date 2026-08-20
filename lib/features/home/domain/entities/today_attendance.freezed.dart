// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TodayAttendance {

 DateTime? get date; bool get clockedIn; bool get breakInProgress; String? get lastClockIn; String? get lastClockOut; String? get clockIn; String? get clockOut; String? get breakStart; String? get breakEnd; int get workDuration; int get breakDuration; String get status; int get totalSessions; List<AttendancePunch> get punches; AttendanceRecord? get attendanceRecord;
/// Create a copy of TodayAttendance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayAttendanceCopyWith<TodayAttendance> get copyWith => _$TodayAttendanceCopyWithImpl<TodayAttendance>(this as TodayAttendance, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayAttendance&&(identical(other.date, date) || other.date == date)&&(identical(other.clockedIn, clockedIn) || other.clockedIn == clockedIn)&&(identical(other.breakInProgress, breakInProgress) || other.breakInProgress == breakInProgress)&&(identical(other.lastClockIn, lastClockIn) || other.lastClockIn == lastClockIn)&&(identical(other.lastClockOut, lastClockOut) || other.lastClockOut == lastClockOut)&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut)&&(identical(other.breakStart, breakStart) || other.breakStart == breakStart)&&(identical(other.breakEnd, breakEnd) || other.breakEnd == breakEnd)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&const DeepCollectionEquality().equals(other.punches, punches)&&(identical(other.attendanceRecord, attendanceRecord) || other.attendanceRecord == attendanceRecord));
}


@override
int get hashCode => Object.hash(runtimeType,date,clockedIn,breakInProgress,lastClockIn,lastClockOut,clockIn,clockOut,breakStart,breakEnd,workDuration,breakDuration,status,totalSessions,const DeepCollectionEquality().hash(punches),attendanceRecord);

@override
String toString() {
  return 'TodayAttendance(date: $date, clockedIn: $clockedIn, breakInProgress: $breakInProgress, lastClockIn: $lastClockIn, lastClockOut: $lastClockOut, clockIn: $clockIn, clockOut: $clockOut, breakStart: $breakStart, breakEnd: $breakEnd, workDuration: $workDuration, breakDuration: $breakDuration, status: $status, totalSessions: $totalSessions, punches: $punches, attendanceRecord: $attendanceRecord)';
}


}

/// @nodoc
abstract mixin class $TodayAttendanceCopyWith<$Res>  {
  factory $TodayAttendanceCopyWith(TodayAttendance value, $Res Function(TodayAttendance) _then) = _$TodayAttendanceCopyWithImpl;
@useResult
$Res call({
 DateTime? date, bool clockedIn, bool breakInProgress, String? lastClockIn, String? lastClockOut, String? clockIn, String? clockOut, String? breakStart, String? breakEnd, int workDuration, int breakDuration, String status, int totalSessions, List<AttendancePunch> punches, AttendanceRecord? attendanceRecord
});


$AttendanceRecordCopyWith<$Res>? get attendanceRecord;

}
/// @nodoc
class _$TodayAttendanceCopyWithImpl<$Res>
    implements $TodayAttendanceCopyWith<$Res> {
  _$TodayAttendanceCopyWithImpl(this._self, this._then);

  final TodayAttendance _self;
  final $Res Function(TodayAttendance) _then;

/// Create a copy of TodayAttendance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = freezed,Object? clockedIn = null,Object? breakInProgress = null,Object? lastClockIn = freezed,Object? lastClockOut = freezed,Object? clockIn = freezed,Object? clockOut = freezed,Object? breakStart = freezed,Object? breakEnd = freezed,Object? workDuration = null,Object? breakDuration = null,Object? status = null,Object? totalSessions = null,Object? punches = null,Object? attendanceRecord = freezed,}) {
  return _then(_self.copyWith(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,clockedIn: null == clockedIn ? _self.clockedIn : clockedIn // ignore: cast_nullable_to_non_nullable
as bool,breakInProgress: null == breakInProgress ? _self.breakInProgress : breakInProgress // ignore: cast_nullable_to_non_nullable
as bool,lastClockIn: freezed == lastClockIn ? _self.lastClockIn : lastClockIn // ignore: cast_nullable_to_non_nullable
as String?,lastClockOut: freezed == lastClockOut ? _self.lastClockOut : lastClockOut // ignore: cast_nullable_to_non_nullable
as String?,clockIn: freezed == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as String?,clockOut: freezed == clockOut ? _self.clockOut : clockOut // ignore: cast_nullable_to_non_nullable
as String?,breakStart: freezed == breakStart ? _self.breakStart : breakStart // ignore: cast_nullable_to_non_nullable
as String?,breakEnd: freezed == breakEnd ? _self.breakEnd : breakEnd // ignore: cast_nullable_to_non_nullable
as String?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
as int,breakDuration: null == breakDuration ? _self.breakDuration : breakDuration // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalSessions: null == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int,punches: null == punches ? _self.punches : punches // ignore: cast_nullable_to_non_nullable
as List<AttendancePunch>,attendanceRecord: freezed == attendanceRecord ? _self.attendanceRecord : attendanceRecord // ignore: cast_nullable_to_non_nullable
as AttendanceRecord?,
  ));
}
/// Create a copy of TodayAttendance
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


/// Adds pattern-matching-related methods to [TodayAttendance].
extension TodayAttendancePatterns on TodayAttendance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayAttendance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayAttendance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayAttendance value)  $default,){
final _that = this;
switch (_that) {
case _TodayAttendance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayAttendance value)?  $default,){
final _that = this;
switch (_that) {
case _TodayAttendance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? date,  bool clockedIn,  bool breakInProgress,  String? lastClockIn,  String? lastClockOut,  String? clockIn,  String? clockOut,  String? breakStart,  String? breakEnd,  int workDuration,  int breakDuration,  String status,  int totalSessions,  List<AttendancePunch> punches,  AttendanceRecord? attendanceRecord)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodayAttendance() when $default != null:
return $default(_that.date,_that.clockedIn,_that.breakInProgress,_that.lastClockIn,_that.lastClockOut,_that.clockIn,_that.clockOut,_that.breakStart,_that.breakEnd,_that.workDuration,_that.breakDuration,_that.status,_that.totalSessions,_that.punches,_that.attendanceRecord);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? date,  bool clockedIn,  bool breakInProgress,  String? lastClockIn,  String? lastClockOut,  String? clockIn,  String? clockOut,  String? breakStart,  String? breakEnd,  int workDuration,  int breakDuration,  String status,  int totalSessions,  List<AttendancePunch> punches,  AttendanceRecord? attendanceRecord)  $default,) {final _that = this;
switch (_that) {
case _TodayAttendance():
return $default(_that.date,_that.clockedIn,_that.breakInProgress,_that.lastClockIn,_that.lastClockOut,_that.clockIn,_that.clockOut,_that.breakStart,_that.breakEnd,_that.workDuration,_that.breakDuration,_that.status,_that.totalSessions,_that.punches,_that.attendanceRecord);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? date,  bool clockedIn,  bool breakInProgress,  String? lastClockIn,  String? lastClockOut,  String? clockIn,  String? clockOut,  String? breakStart,  String? breakEnd,  int workDuration,  int breakDuration,  String status,  int totalSessions,  List<AttendancePunch> punches,  AttendanceRecord? attendanceRecord)?  $default,) {final _that = this;
switch (_that) {
case _TodayAttendance() when $default != null:
return $default(_that.date,_that.clockedIn,_that.breakInProgress,_that.lastClockIn,_that.lastClockOut,_that.clockIn,_that.clockOut,_that.breakStart,_that.breakEnd,_that.workDuration,_that.breakDuration,_that.status,_that.totalSessions,_that.punches,_that.attendanceRecord);case _:
  return null;

}
}

}

/// @nodoc


class _TodayAttendance implements TodayAttendance {
  const _TodayAttendance({this.date, required this.clockedIn, required this.breakInProgress, this.lastClockIn, this.lastClockOut, this.clockIn, this.clockOut, this.breakStart, this.breakEnd, required this.workDuration, required this.breakDuration, required this.status, required this.totalSessions, required final  List<AttendancePunch> punches, this.attendanceRecord}): _punches = punches;
  

@override final  DateTime? date;
@override final  bool clockedIn;
@override final  bool breakInProgress;
@override final  String? lastClockIn;
@override final  String? lastClockOut;
@override final  String? clockIn;
@override final  String? clockOut;
@override final  String? breakStart;
@override final  String? breakEnd;
@override final  int workDuration;
@override final  int breakDuration;
@override final  String status;
@override final  int totalSessions;
 final  List<AttendancePunch> _punches;
@override List<AttendancePunch> get punches {
  if (_punches is EqualUnmodifiableListView) return _punches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_punches);
}

@override final  AttendanceRecord? attendanceRecord;

/// Create a copy of TodayAttendance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayAttendanceCopyWith<_TodayAttendance> get copyWith => __$TodayAttendanceCopyWithImpl<_TodayAttendance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayAttendance&&(identical(other.date, date) || other.date == date)&&(identical(other.clockedIn, clockedIn) || other.clockedIn == clockedIn)&&(identical(other.breakInProgress, breakInProgress) || other.breakInProgress == breakInProgress)&&(identical(other.lastClockIn, lastClockIn) || other.lastClockIn == lastClockIn)&&(identical(other.lastClockOut, lastClockOut) || other.lastClockOut == lastClockOut)&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut)&&(identical(other.breakStart, breakStart) || other.breakStart == breakStart)&&(identical(other.breakEnd, breakEnd) || other.breakEnd == breakEnd)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&const DeepCollectionEquality().equals(other._punches, _punches)&&(identical(other.attendanceRecord, attendanceRecord) || other.attendanceRecord == attendanceRecord));
}


@override
int get hashCode => Object.hash(runtimeType,date,clockedIn,breakInProgress,lastClockIn,lastClockOut,clockIn,clockOut,breakStart,breakEnd,workDuration,breakDuration,status,totalSessions,const DeepCollectionEquality().hash(_punches),attendanceRecord);

@override
String toString() {
  return 'TodayAttendance(date: $date, clockedIn: $clockedIn, breakInProgress: $breakInProgress, lastClockIn: $lastClockIn, lastClockOut: $lastClockOut, clockIn: $clockIn, clockOut: $clockOut, breakStart: $breakStart, breakEnd: $breakEnd, workDuration: $workDuration, breakDuration: $breakDuration, status: $status, totalSessions: $totalSessions, punches: $punches, attendanceRecord: $attendanceRecord)';
}


}

/// @nodoc
abstract mixin class _$TodayAttendanceCopyWith<$Res> implements $TodayAttendanceCopyWith<$Res> {
  factory _$TodayAttendanceCopyWith(_TodayAttendance value, $Res Function(_TodayAttendance) _then) = __$TodayAttendanceCopyWithImpl;
@override @useResult
$Res call({
 DateTime? date, bool clockedIn, bool breakInProgress, String? lastClockIn, String? lastClockOut, String? clockIn, String? clockOut, String? breakStart, String? breakEnd, int workDuration, int breakDuration, String status, int totalSessions, List<AttendancePunch> punches, AttendanceRecord? attendanceRecord
});


@override $AttendanceRecordCopyWith<$Res>? get attendanceRecord;

}
/// @nodoc
class __$TodayAttendanceCopyWithImpl<$Res>
    implements _$TodayAttendanceCopyWith<$Res> {
  __$TodayAttendanceCopyWithImpl(this._self, this._then);

  final _TodayAttendance _self;
  final $Res Function(_TodayAttendance) _then;

/// Create a copy of TodayAttendance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? clockedIn = null,Object? breakInProgress = null,Object? lastClockIn = freezed,Object? lastClockOut = freezed,Object? clockIn = freezed,Object? clockOut = freezed,Object? breakStart = freezed,Object? breakEnd = freezed,Object? workDuration = null,Object? breakDuration = null,Object? status = null,Object? totalSessions = null,Object? punches = null,Object? attendanceRecord = freezed,}) {
  return _then(_TodayAttendance(
date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,clockedIn: null == clockedIn ? _self.clockedIn : clockedIn // ignore: cast_nullable_to_non_nullable
as bool,breakInProgress: null == breakInProgress ? _self.breakInProgress : breakInProgress // ignore: cast_nullable_to_non_nullable
as bool,lastClockIn: freezed == lastClockIn ? _self.lastClockIn : lastClockIn // ignore: cast_nullable_to_non_nullable
as String?,lastClockOut: freezed == lastClockOut ? _self.lastClockOut : lastClockOut // ignore: cast_nullable_to_non_nullable
as String?,clockIn: freezed == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as String?,clockOut: freezed == clockOut ? _self.clockOut : clockOut // ignore: cast_nullable_to_non_nullable
as String?,breakStart: freezed == breakStart ? _self.breakStart : breakStart // ignore: cast_nullable_to_non_nullable
as String?,breakEnd: freezed == breakEnd ? _self.breakEnd : breakEnd // ignore: cast_nullable_to_non_nullable
as String?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
as int,breakDuration: null == breakDuration ? _self.breakDuration : breakDuration // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,totalSessions: null == totalSessions ? _self.totalSessions : totalSessions // ignore: cast_nullable_to_non_nullable
as int,punches: null == punches ? _self._punches : punches // ignore: cast_nullable_to_non_nullable
as List<AttendancePunch>,attendanceRecord: freezed == attendanceRecord ? _self.attendanceRecord : attendanceRecord // ignore: cast_nullable_to_non_nullable
as AttendanceRecord?,
  ));
}

/// Create a copy of TodayAttendance
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
