// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TeamAttendance {

 String get id; String get userId; String get employeeId; String get employeeCode; String get firstName; String get lastName; String get positionId; String get departmentId; String get dateId; AttendanceTimeRange? get scheduled; AttendanceTimeRange? get actual; int get workDuration; int get breakDuration; int get lateMinutes; int get earlyLeaveMinutes; int get overtimeMinutes; String get status; bool get isHalfDay; bool get isHoliday; String? get leaveType; String get notes;
/// Create a copy of TeamAttendance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamAttendanceCopyWith<TeamAttendance> get copyWith => _$TeamAttendanceCopyWithImpl<TeamAttendance>(this as TeamAttendance, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamAttendance&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.lateMinutes, lateMinutes) || other.lateMinutes == lateMinutes)&&(identical(other.earlyLeaveMinutes, earlyLeaveMinutes) || other.earlyLeaveMinutes == earlyLeaveMinutes)&&(identical(other.overtimeMinutes, overtimeMinutes) || other.overtimeMinutes == overtimeMinutes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,employeeId,employeeCode,firstName,lastName,positionId,departmentId,dateId,scheduled,actual,workDuration,breakDuration,lateMinutes,earlyLeaveMinutes,overtimeMinutes,status,isHalfDay,isHoliday,leaveType,notes]);

@override
String toString() {
  return 'TeamAttendance(id: $id, userId: $userId, employeeId: $employeeId, employeeCode: $employeeCode, firstName: $firstName, lastName: $lastName, positionId: $positionId, departmentId: $departmentId, dateId: $dateId, scheduled: $scheduled, actual: $actual, workDuration: $workDuration, breakDuration: $breakDuration, lateMinutes: $lateMinutes, earlyLeaveMinutes: $earlyLeaveMinutes, overtimeMinutes: $overtimeMinutes, status: $status, isHalfDay: $isHalfDay, isHoliday: $isHoliday, leaveType: $leaveType, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $TeamAttendanceCopyWith<$Res>  {
  factory $TeamAttendanceCopyWith(TeamAttendance value, $Res Function(TeamAttendance) _then) = _$TeamAttendanceCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String employeeId, String employeeCode, String firstName, String lastName, String positionId, String departmentId, String dateId, AttendanceTimeRange? scheduled, AttendanceTimeRange? actual, int workDuration, int breakDuration, int lateMinutes, int earlyLeaveMinutes, int overtimeMinutes, String status, bool isHalfDay, bool isHoliday, String? leaveType, String notes
});


$AttendanceTimeRangeCopyWith<$Res>? get scheduled;$AttendanceTimeRangeCopyWith<$Res>? get actual;

}
/// @nodoc
class _$TeamAttendanceCopyWithImpl<$Res>
    implements $TeamAttendanceCopyWith<$Res> {
  _$TeamAttendanceCopyWithImpl(this._self, this._then);

  final TeamAttendance _self;
  final $Res Function(TeamAttendance) _then;

/// Create a copy of TeamAttendance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? employeeId = null,Object? employeeCode = null,Object? firstName = null,Object? lastName = null,Object? positionId = null,Object? departmentId = null,Object? dateId = null,Object? scheduled = freezed,Object? actual = freezed,Object? workDuration = null,Object? breakDuration = null,Object? lateMinutes = null,Object? earlyLeaveMinutes = null,Object? overtimeMinutes = null,Object? status = null,Object? isHalfDay = null,Object? isHoliday = null,Object? leaveType = freezed,Object? notes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,positionId: null == positionId ? _self.positionId : positionId // ignore: cast_nullable_to_non_nullable
as String,departmentId: null == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,actual: freezed == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
as int,breakDuration: null == breakDuration ? _self.breakDuration : breakDuration // ignore: cast_nullable_to_non_nullable
as int,lateMinutes: null == lateMinutes ? _self.lateMinutes : lateMinutes // ignore: cast_nullable_to_non_nullable
as int,earlyLeaveMinutes: null == earlyLeaveMinutes ? _self.earlyLeaveMinutes : earlyLeaveMinutes // ignore: cast_nullable_to_non_nullable
as int,overtimeMinutes: null == overtimeMinutes ? _self.overtimeMinutes : overtimeMinutes // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,isHoliday: null == isHoliday ? _self.isHoliday : isHoliday // ignore: cast_nullable_to_non_nullable
as bool,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of TeamAttendance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeCopyWith<$Res>? get scheduled {
    if (_self.scheduled == null) {
    return null;
  }

  return $AttendanceTimeRangeCopyWith<$Res>(_self.scheduled!, (value) {
    return _then(_self.copyWith(scheduled: value));
  });
}/// Create a copy of TeamAttendance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeCopyWith<$Res>? get actual {
    if (_self.actual == null) {
    return null;
  }

  return $AttendanceTimeRangeCopyWith<$Res>(_self.actual!, (value) {
    return _then(_self.copyWith(actual: value));
  });
}
}


/// Adds pattern-matching-related methods to [TeamAttendance].
extension TeamAttendancePatterns on TeamAttendance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamAttendance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamAttendance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamAttendance value)  $default,){
final _that = this;
switch (_that) {
case _TeamAttendance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamAttendance value)?  $default,){
final _that = this;
switch (_that) {
case _TeamAttendance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String employeeId,  String employeeCode,  String firstName,  String lastName,  String positionId,  String departmentId,  String dateId,  AttendanceTimeRange? scheduled,  AttendanceTimeRange? actual,  int workDuration,  int breakDuration,  int lateMinutes,  int earlyLeaveMinutes,  int overtimeMinutes,  String status,  bool isHalfDay,  bool isHoliday,  String? leaveType,  String notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamAttendance() when $default != null:
return $default(_that.id,_that.userId,_that.employeeId,_that.employeeCode,_that.firstName,_that.lastName,_that.positionId,_that.departmentId,_that.dateId,_that.scheduled,_that.actual,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHalfDay,_that.isHoliday,_that.leaveType,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String employeeId,  String employeeCode,  String firstName,  String lastName,  String positionId,  String departmentId,  String dateId,  AttendanceTimeRange? scheduled,  AttendanceTimeRange? actual,  int workDuration,  int breakDuration,  int lateMinutes,  int earlyLeaveMinutes,  int overtimeMinutes,  String status,  bool isHalfDay,  bool isHoliday,  String? leaveType,  String notes)  $default,) {final _that = this;
switch (_that) {
case _TeamAttendance():
return $default(_that.id,_that.userId,_that.employeeId,_that.employeeCode,_that.firstName,_that.lastName,_that.positionId,_that.departmentId,_that.dateId,_that.scheduled,_that.actual,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHalfDay,_that.isHoliday,_that.leaveType,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String employeeId,  String employeeCode,  String firstName,  String lastName,  String positionId,  String departmentId,  String dateId,  AttendanceTimeRange? scheduled,  AttendanceTimeRange? actual,  int workDuration,  int breakDuration,  int lateMinutes,  int earlyLeaveMinutes,  int overtimeMinutes,  String status,  bool isHalfDay,  bool isHoliday,  String? leaveType,  String notes)?  $default,) {final _that = this;
switch (_that) {
case _TeamAttendance() when $default != null:
return $default(_that.id,_that.userId,_that.employeeId,_that.employeeCode,_that.firstName,_that.lastName,_that.positionId,_that.departmentId,_that.dateId,_that.scheduled,_that.actual,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHalfDay,_that.isHoliday,_that.leaveType,_that.notes);case _:
  return null;

}
}

}

/// @nodoc


class _TeamAttendance extends TeamAttendance {
  const _TeamAttendance({required this.id, this.userId = '', this.employeeId = '', this.employeeCode = '', this.firstName = '', this.lastName = '', this.positionId = '', this.departmentId = '', this.dateId = '', this.scheduled, this.actual, this.workDuration = 0, this.breakDuration = 0, this.lateMinutes = 0, this.earlyLeaveMinutes = 0, this.overtimeMinutes = 0, this.status = '', this.isHalfDay = false, this.isHoliday = false, this.leaveType, this.notes = ''}): super._();
  

@override final  String id;
@override@JsonKey() final  String userId;
@override@JsonKey() final  String employeeId;
@override@JsonKey() final  String employeeCode;
@override@JsonKey() final  String firstName;
@override@JsonKey() final  String lastName;
@override@JsonKey() final  String positionId;
@override@JsonKey() final  String departmentId;
@override@JsonKey() final  String dateId;
@override final  AttendanceTimeRange? scheduled;
@override final  AttendanceTimeRange? actual;
@override@JsonKey() final  int workDuration;
@override@JsonKey() final  int breakDuration;
@override@JsonKey() final  int lateMinutes;
@override@JsonKey() final  int earlyLeaveMinutes;
@override@JsonKey() final  int overtimeMinutes;
@override@JsonKey() final  String status;
@override@JsonKey() final  bool isHalfDay;
@override@JsonKey() final  bool isHoliday;
@override final  String? leaveType;
@override@JsonKey() final  String notes;

/// Create a copy of TeamAttendance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamAttendanceCopyWith<_TeamAttendance> get copyWith => __$TeamAttendanceCopyWithImpl<_TeamAttendance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamAttendance&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.lateMinutes, lateMinutes) || other.lateMinutes == lateMinutes)&&(identical(other.earlyLeaveMinutes, earlyLeaveMinutes) || other.earlyLeaveMinutes == earlyLeaveMinutes)&&(identical(other.overtimeMinutes, overtimeMinutes) || other.overtimeMinutes == overtimeMinutes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,employeeId,employeeCode,firstName,lastName,positionId,departmentId,dateId,scheduled,actual,workDuration,breakDuration,lateMinutes,earlyLeaveMinutes,overtimeMinutes,status,isHalfDay,isHoliday,leaveType,notes]);

@override
String toString() {
  return 'TeamAttendance(id: $id, userId: $userId, employeeId: $employeeId, employeeCode: $employeeCode, firstName: $firstName, lastName: $lastName, positionId: $positionId, departmentId: $departmentId, dateId: $dateId, scheduled: $scheduled, actual: $actual, workDuration: $workDuration, breakDuration: $breakDuration, lateMinutes: $lateMinutes, earlyLeaveMinutes: $earlyLeaveMinutes, overtimeMinutes: $overtimeMinutes, status: $status, isHalfDay: $isHalfDay, isHoliday: $isHoliday, leaveType: $leaveType, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$TeamAttendanceCopyWith<$Res> implements $TeamAttendanceCopyWith<$Res> {
  factory _$TeamAttendanceCopyWith(_TeamAttendance value, $Res Function(_TeamAttendance) _then) = __$TeamAttendanceCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String employeeId, String employeeCode, String firstName, String lastName, String positionId, String departmentId, String dateId, AttendanceTimeRange? scheduled, AttendanceTimeRange? actual, int workDuration, int breakDuration, int lateMinutes, int earlyLeaveMinutes, int overtimeMinutes, String status, bool isHalfDay, bool isHoliday, String? leaveType, String notes
});


@override $AttendanceTimeRangeCopyWith<$Res>? get scheduled;@override $AttendanceTimeRangeCopyWith<$Res>? get actual;

}
/// @nodoc
class __$TeamAttendanceCopyWithImpl<$Res>
    implements _$TeamAttendanceCopyWith<$Res> {
  __$TeamAttendanceCopyWithImpl(this._self, this._then);

  final _TeamAttendance _self;
  final $Res Function(_TeamAttendance) _then;

/// Create a copy of TeamAttendance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? employeeId = null,Object? employeeCode = null,Object? firstName = null,Object? lastName = null,Object? positionId = null,Object? departmentId = null,Object? dateId = null,Object? scheduled = freezed,Object? actual = freezed,Object? workDuration = null,Object? breakDuration = null,Object? lateMinutes = null,Object? earlyLeaveMinutes = null,Object? overtimeMinutes = null,Object? status = null,Object? isHalfDay = null,Object? isHoliday = null,Object? leaveType = freezed,Object? notes = null,}) {
  return _then(_TeamAttendance(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,positionId: null == positionId ? _self.positionId : positionId // ignore: cast_nullable_to_non_nullable
as String,departmentId: null == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,actual: freezed == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
as int,breakDuration: null == breakDuration ? _self.breakDuration : breakDuration // ignore: cast_nullable_to_non_nullable
as int,lateMinutes: null == lateMinutes ? _self.lateMinutes : lateMinutes // ignore: cast_nullable_to_non_nullable
as int,earlyLeaveMinutes: null == earlyLeaveMinutes ? _self.earlyLeaveMinutes : earlyLeaveMinutes // ignore: cast_nullable_to_non_nullable
as int,overtimeMinutes: null == overtimeMinutes ? _self.overtimeMinutes : overtimeMinutes // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,isHoliday: null == isHoliday ? _self.isHoliday : isHoliday // ignore: cast_nullable_to_non_nullable
as bool,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of TeamAttendance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeCopyWith<$Res>? get scheduled {
    if (_self.scheduled == null) {
    return null;
  }

  return $AttendanceTimeRangeCopyWith<$Res>(_self.scheduled!, (value) {
    return _then(_self.copyWith(scheduled: value));
  });
}/// Create a copy of TeamAttendance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeCopyWith<$Res>? get actual {
    if (_self.actual == null) {
    return null;
  }

  return $AttendanceTimeRangeCopyWith<$Res>(_self.actual!, (value) {
    return _then(_self.copyWith(actual: value));
  });
}
}

// dart format on
