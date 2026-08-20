// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TodayAttendanceModel {

 DateTime? get date;@JsonKey(name: 'clocked_in') bool get clockedIn;@JsonKey(name: 'break_in_progress') bool get breakInProgress;@JsonKey(name: 'last_clock_in') String? get lastClockIn;@JsonKey(name: 'last_clock_out') String? get lastClockOut;@JsonKey(name: 'clock_in') String? get clockIn;@JsonKey(name: 'clock_out') String? get clockOut;@JsonKey(name: 'break_start') String? get breakStart;@JsonKey(name: 'break_end') String? get breakEnd;@JsonKey(name: 'work_duration') int get workDuration;@JsonKey(name: 'break_duration') int get breakDuration; String get status;@JsonKey(name: 'total_sessions') int get totalSessions; List<AttendancePunchModel> get punches;@JsonKey(name: 'attendance_record') AttendanceRecordModel? get attendanceRecord;
/// Create a copy of TodayAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TodayAttendanceModelCopyWith<TodayAttendanceModel> get copyWith => _$TodayAttendanceModelCopyWithImpl<TodayAttendanceModel>(this as TodayAttendanceModel, _$identity);

  /// Serializes this TodayAttendanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TodayAttendanceModel&&(identical(other.date, date) || other.date == date)&&(identical(other.clockedIn, clockedIn) || other.clockedIn == clockedIn)&&(identical(other.breakInProgress, breakInProgress) || other.breakInProgress == breakInProgress)&&(identical(other.lastClockIn, lastClockIn) || other.lastClockIn == lastClockIn)&&(identical(other.lastClockOut, lastClockOut) || other.lastClockOut == lastClockOut)&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut)&&(identical(other.breakStart, breakStart) || other.breakStart == breakStart)&&(identical(other.breakEnd, breakEnd) || other.breakEnd == breakEnd)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&const DeepCollectionEquality().equals(other.punches, punches)&&(identical(other.attendanceRecord, attendanceRecord) || other.attendanceRecord == attendanceRecord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,clockedIn,breakInProgress,lastClockIn,lastClockOut,clockIn,clockOut,breakStart,breakEnd,workDuration,breakDuration,status,totalSessions,const DeepCollectionEquality().hash(punches),attendanceRecord);

@override
String toString() {
  return 'TodayAttendanceModel(date: $date, clockedIn: $clockedIn, breakInProgress: $breakInProgress, lastClockIn: $lastClockIn, lastClockOut: $lastClockOut, clockIn: $clockIn, clockOut: $clockOut, breakStart: $breakStart, breakEnd: $breakEnd, workDuration: $workDuration, breakDuration: $breakDuration, status: $status, totalSessions: $totalSessions, punches: $punches, attendanceRecord: $attendanceRecord)';
}


}

/// @nodoc
abstract mixin class $TodayAttendanceModelCopyWith<$Res>  {
  factory $TodayAttendanceModelCopyWith(TodayAttendanceModel value, $Res Function(TodayAttendanceModel) _then) = _$TodayAttendanceModelCopyWithImpl;
@useResult
$Res call({
 DateTime? date,@JsonKey(name: 'clocked_in') bool clockedIn,@JsonKey(name: 'break_in_progress') bool breakInProgress,@JsonKey(name: 'last_clock_in') String? lastClockIn,@JsonKey(name: 'last_clock_out') String? lastClockOut,@JsonKey(name: 'clock_in') String? clockIn,@JsonKey(name: 'clock_out') String? clockOut,@JsonKey(name: 'break_start') String? breakStart,@JsonKey(name: 'break_end') String? breakEnd,@JsonKey(name: 'work_duration') int workDuration,@JsonKey(name: 'break_duration') int breakDuration, String status,@JsonKey(name: 'total_sessions') int totalSessions, List<AttendancePunchModel> punches,@JsonKey(name: 'attendance_record') AttendanceRecordModel? attendanceRecord
});


$AttendanceRecordModelCopyWith<$Res>? get attendanceRecord;

}
/// @nodoc
class _$TodayAttendanceModelCopyWithImpl<$Res>
    implements $TodayAttendanceModelCopyWith<$Res> {
  _$TodayAttendanceModelCopyWithImpl(this._self, this._then);

  final TodayAttendanceModel _self;
  final $Res Function(TodayAttendanceModel) _then;

/// Create a copy of TodayAttendanceModel
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
as List<AttendancePunchModel>,attendanceRecord: freezed == attendanceRecord ? _self.attendanceRecord : attendanceRecord // ignore: cast_nullable_to_non_nullable
as AttendanceRecordModel?,
  ));
}
/// Create a copy of TodayAttendanceModel
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


/// Adds pattern-matching-related methods to [TodayAttendanceModel].
extension TodayAttendanceModelPatterns on TodayAttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TodayAttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TodayAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TodayAttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _TodayAttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TodayAttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _TodayAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime? date, @JsonKey(name: 'clocked_in')  bool clockedIn, @JsonKey(name: 'break_in_progress')  bool breakInProgress, @JsonKey(name: 'last_clock_in')  String? lastClockIn, @JsonKey(name: 'last_clock_out')  String? lastClockOut, @JsonKey(name: 'clock_in')  String? clockIn, @JsonKey(name: 'clock_out')  String? clockOut, @JsonKey(name: 'break_start')  String? breakStart, @JsonKey(name: 'break_end')  String? breakEnd, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration,  String status, @JsonKey(name: 'total_sessions')  int totalSessions,  List<AttendancePunchModel> punches, @JsonKey(name: 'attendance_record')  AttendanceRecordModel? attendanceRecord)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TodayAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime? date, @JsonKey(name: 'clocked_in')  bool clockedIn, @JsonKey(name: 'break_in_progress')  bool breakInProgress, @JsonKey(name: 'last_clock_in')  String? lastClockIn, @JsonKey(name: 'last_clock_out')  String? lastClockOut, @JsonKey(name: 'clock_in')  String? clockIn, @JsonKey(name: 'clock_out')  String? clockOut, @JsonKey(name: 'break_start')  String? breakStart, @JsonKey(name: 'break_end')  String? breakEnd, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration,  String status, @JsonKey(name: 'total_sessions')  int totalSessions,  List<AttendancePunchModel> punches, @JsonKey(name: 'attendance_record')  AttendanceRecordModel? attendanceRecord)  $default,) {final _that = this;
switch (_that) {
case _TodayAttendanceModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime? date, @JsonKey(name: 'clocked_in')  bool clockedIn, @JsonKey(name: 'break_in_progress')  bool breakInProgress, @JsonKey(name: 'last_clock_in')  String? lastClockIn, @JsonKey(name: 'last_clock_out')  String? lastClockOut, @JsonKey(name: 'clock_in')  String? clockIn, @JsonKey(name: 'clock_out')  String? clockOut, @JsonKey(name: 'break_start')  String? breakStart, @JsonKey(name: 'break_end')  String? breakEnd, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration,  String status, @JsonKey(name: 'total_sessions')  int totalSessions,  List<AttendancePunchModel> punches, @JsonKey(name: 'attendance_record')  AttendanceRecordModel? attendanceRecord)?  $default,) {final _that = this;
switch (_that) {
case _TodayAttendanceModel() when $default != null:
return $default(_that.date,_that.clockedIn,_that.breakInProgress,_that.lastClockIn,_that.lastClockOut,_that.clockIn,_that.clockOut,_that.breakStart,_that.breakEnd,_that.workDuration,_that.breakDuration,_that.status,_that.totalSessions,_that.punches,_that.attendanceRecord);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TodayAttendanceModel extends TodayAttendanceModel {
  const _TodayAttendanceModel({this.date, @JsonKey(name: 'clocked_in') this.clockedIn = false, @JsonKey(name: 'break_in_progress') this.breakInProgress = false, @JsonKey(name: 'last_clock_in') this.lastClockIn, @JsonKey(name: 'last_clock_out') this.lastClockOut, @JsonKey(name: 'clock_in') this.clockIn, @JsonKey(name: 'clock_out') this.clockOut, @JsonKey(name: 'break_start') this.breakStart, @JsonKey(name: 'break_end') this.breakEnd, @JsonKey(name: 'work_duration') this.workDuration = 0, @JsonKey(name: 'break_duration') this.breakDuration = 0, this.status = '', @JsonKey(name: 'total_sessions') this.totalSessions = 0, final  List<AttendancePunchModel> punches = const [], @JsonKey(name: 'attendance_record') this.attendanceRecord}): _punches = punches,super._();
  factory _TodayAttendanceModel.fromJson(Map<String, dynamic> json) => _$TodayAttendanceModelFromJson(json);

@override final  DateTime? date;
@override@JsonKey(name: 'clocked_in') final  bool clockedIn;
@override@JsonKey(name: 'break_in_progress') final  bool breakInProgress;
@override@JsonKey(name: 'last_clock_in') final  String? lastClockIn;
@override@JsonKey(name: 'last_clock_out') final  String? lastClockOut;
@override@JsonKey(name: 'clock_in') final  String? clockIn;
@override@JsonKey(name: 'clock_out') final  String? clockOut;
@override@JsonKey(name: 'break_start') final  String? breakStart;
@override@JsonKey(name: 'break_end') final  String? breakEnd;
@override@JsonKey(name: 'work_duration') final  int workDuration;
@override@JsonKey(name: 'break_duration') final  int breakDuration;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'total_sessions') final  int totalSessions;
 final  List<AttendancePunchModel> _punches;
@override@JsonKey() List<AttendancePunchModel> get punches {
  if (_punches is EqualUnmodifiableListView) return _punches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_punches);
}

@override@JsonKey(name: 'attendance_record') final  AttendanceRecordModel? attendanceRecord;

/// Create a copy of TodayAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TodayAttendanceModelCopyWith<_TodayAttendanceModel> get copyWith => __$TodayAttendanceModelCopyWithImpl<_TodayAttendanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TodayAttendanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TodayAttendanceModel&&(identical(other.date, date) || other.date == date)&&(identical(other.clockedIn, clockedIn) || other.clockedIn == clockedIn)&&(identical(other.breakInProgress, breakInProgress) || other.breakInProgress == breakInProgress)&&(identical(other.lastClockIn, lastClockIn) || other.lastClockIn == lastClockIn)&&(identical(other.lastClockOut, lastClockOut) || other.lastClockOut == lastClockOut)&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut)&&(identical(other.breakStart, breakStart) || other.breakStart == breakStart)&&(identical(other.breakEnd, breakEnd) || other.breakEnd == breakEnd)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.status, status) || other.status == status)&&(identical(other.totalSessions, totalSessions) || other.totalSessions == totalSessions)&&const DeepCollectionEquality().equals(other._punches, _punches)&&(identical(other.attendanceRecord, attendanceRecord) || other.attendanceRecord == attendanceRecord));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,clockedIn,breakInProgress,lastClockIn,lastClockOut,clockIn,clockOut,breakStart,breakEnd,workDuration,breakDuration,status,totalSessions,const DeepCollectionEquality().hash(_punches),attendanceRecord);

@override
String toString() {
  return 'TodayAttendanceModel(date: $date, clockedIn: $clockedIn, breakInProgress: $breakInProgress, lastClockIn: $lastClockIn, lastClockOut: $lastClockOut, clockIn: $clockIn, clockOut: $clockOut, breakStart: $breakStart, breakEnd: $breakEnd, workDuration: $workDuration, breakDuration: $breakDuration, status: $status, totalSessions: $totalSessions, punches: $punches, attendanceRecord: $attendanceRecord)';
}


}

/// @nodoc
abstract mixin class _$TodayAttendanceModelCopyWith<$Res> implements $TodayAttendanceModelCopyWith<$Res> {
  factory _$TodayAttendanceModelCopyWith(_TodayAttendanceModel value, $Res Function(_TodayAttendanceModel) _then) = __$TodayAttendanceModelCopyWithImpl;
@override @useResult
$Res call({
 DateTime? date,@JsonKey(name: 'clocked_in') bool clockedIn,@JsonKey(name: 'break_in_progress') bool breakInProgress,@JsonKey(name: 'last_clock_in') String? lastClockIn,@JsonKey(name: 'last_clock_out') String? lastClockOut,@JsonKey(name: 'clock_in') String? clockIn,@JsonKey(name: 'clock_out') String? clockOut,@JsonKey(name: 'break_start') String? breakStart,@JsonKey(name: 'break_end') String? breakEnd,@JsonKey(name: 'work_duration') int workDuration,@JsonKey(name: 'break_duration') int breakDuration, String status,@JsonKey(name: 'total_sessions') int totalSessions, List<AttendancePunchModel> punches,@JsonKey(name: 'attendance_record') AttendanceRecordModel? attendanceRecord
});


@override $AttendanceRecordModelCopyWith<$Res>? get attendanceRecord;

}
/// @nodoc
class __$TodayAttendanceModelCopyWithImpl<$Res>
    implements _$TodayAttendanceModelCopyWith<$Res> {
  __$TodayAttendanceModelCopyWithImpl(this._self, this._then);

  final _TodayAttendanceModel _self;
  final $Res Function(_TodayAttendanceModel) _then;

/// Create a copy of TodayAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = freezed,Object? clockedIn = null,Object? breakInProgress = null,Object? lastClockIn = freezed,Object? lastClockOut = freezed,Object? clockIn = freezed,Object? clockOut = freezed,Object? breakStart = freezed,Object? breakEnd = freezed,Object? workDuration = null,Object? breakDuration = null,Object? status = null,Object? totalSessions = null,Object? punches = null,Object? attendanceRecord = freezed,}) {
  return _then(_TodayAttendanceModel(
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
as List<AttendancePunchModel>,attendanceRecord: freezed == attendanceRecord ? _self.attendanceRecord : attendanceRecord // ignore: cast_nullable_to_non_nullable
as AttendanceRecordModel?,
  ));
}

/// Create a copy of TodayAttendanceModel
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
