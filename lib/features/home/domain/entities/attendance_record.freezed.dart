// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceRecord {

 String get id; String get employeeId; String get companyId; DateTime? get date; String get shiftId; AttendanceTimeRange? get scheduled; AttendanceTimeRange? get actual; AttendanceTimeRange? get adjustment; int get workDuration; int get breakDuration; int get lateMinutes; int get earlyLeaveMinutes; int get overtimeMinutes; String get status; bool get isHoliday; String? get holidayType; String? get leaveType; bool get isHalfDay; String? get editedBy; bool get deleted; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRecordCopyWith<AttendanceRecord> get copyWith => _$AttendanceRecordCopyWithImpl<AttendanceRecord>(this as AttendanceRecord, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.adjustment, adjustment) || other.adjustment == adjustment)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.lateMinutes, lateMinutes) || other.lateMinutes == lateMinutes)&&(identical(other.earlyLeaveMinutes, earlyLeaveMinutes) || other.earlyLeaveMinutes == earlyLeaveMinutes)&&(identical(other.overtimeMinutes, overtimeMinutes) || other.overtimeMinutes == overtimeMinutes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.holidayType, holidayType) || other.holidayType == holidayType)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.editedBy, editedBy) || other.editedBy == editedBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,companyId,date,shiftId,scheduled,actual,adjustment,workDuration,breakDuration,lateMinutes,earlyLeaveMinutes,overtimeMinutes,status,isHoliday,holidayType,leaveType,isHalfDay,editedBy,deleted,createdAt,updatedAt]);

@override
String toString() {
  return 'AttendanceRecord(id: $id, employeeId: $employeeId, companyId: $companyId, date: $date, shiftId: $shiftId, scheduled: $scheduled, actual: $actual, adjustment: $adjustment, workDuration: $workDuration, breakDuration: $breakDuration, lateMinutes: $lateMinutes, earlyLeaveMinutes: $earlyLeaveMinutes, overtimeMinutes: $overtimeMinutes, status: $status, isHoliday: $isHoliday, holidayType: $holidayType, leaveType: $leaveType, isHalfDay: $isHalfDay, editedBy: $editedBy, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AttendanceRecordCopyWith<$Res>  {
  factory $AttendanceRecordCopyWith(AttendanceRecord value, $Res Function(AttendanceRecord) _then) = _$AttendanceRecordCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String companyId, DateTime? date, String shiftId, AttendanceTimeRange? scheduled, AttendanceTimeRange? actual, AttendanceTimeRange? adjustment, int workDuration, int breakDuration, int lateMinutes, int earlyLeaveMinutes, int overtimeMinutes, String status, bool isHoliday, String? holidayType, String? leaveType, bool isHalfDay, String? editedBy, bool deleted, DateTime? createdAt, DateTime? updatedAt
});


$AttendanceTimeRangeCopyWith<$Res>? get scheduled;$AttendanceTimeRangeCopyWith<$Res>? get actual;$AttendanceTimeRangeCopyWith<$Res>? get adjustment;

}
/// @nodoc
class _$AttendanceRecordCopyWithImpl<$Res>
    implements $AttendanceRecordCopyWith<$Res> {
  _$AttendanceRecordCopyWithImpl(this._self, this._then);

  final AttendanceRecord _self;
  final $Res Function(AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? companyId = null,Object? date = freezed,Object? shiftId = null,Object? scheduled = freezed,Object? actual = freezed,Object? adjustment = freezed,Object? workDuration = null,Object? breakDuration = null,Object? lateMinutes = null,Object? earlyLeaveMinutes = null,Object? overtimeMinutes = null,Object? status = null,Object? isHoliday = null,Object? holidayType = freezed,Object? leaveType = freezed,Object? isHalfDay = null,Object? editedBy = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,actual: freezed == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,adjustment: freezed == adjustment ? _self.adjustment : adjustment // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
as int,breakDuration: null == breakDuration ? _self.breakDuration : breakDuration // ignore: cast_nullable_to_non_nullable
as int,lateMinutes: null == lateMinutes ? _self.lateMinutes : lateMinutes // ignore: cast_nullable_to_non_nullable
as int,earlyLeaveMinutes: null == earlyLeaveMinutes ? _self.earlyLeaveMinutes : earlyLeaveMinutes // ignore: cast_nullable_to_non_nullable
as int,overtimeMinutes: null == overtimeMinutes ? _self.overtimeMinutes : overtimeMinutes // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isHoliday: null == isHoliday ? _self.isHoliday : isHoliday // ignore: cast_nullable_to_non_nullable
as bool,holidayType: freezed == holidayType ? _self.holidayType : holidayType // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,editedBy: freezed == editedBy ? _self.editedBy : editedBy // ignore: cast_nullable_to_non_nullable
as String?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of AttendanceRecord
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
}/// Create a copy of AttendanceRecord
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
}/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeCopyWith<$Res>? get adjustment {
    if (_self.adjustment == null) {
    return null;
  }

  return $AttendanceTimeRangeCopyWith<$Res>(_self.adjustment!, (value) {
    return _then(_self.copyWith(adjustment: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceRecord].
extension AttendanceRecordPatterns on AttendanceRecord {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRecord value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRecord value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRecord value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String companyId,  DateTime? date,  String shiftId,  AttendanceTimeRange? scheduled,  AttendanceTimeRange? actual,  AttendanceTimeRange? adjustment,  int workDuration,  int breakDuration,  int lateMinutes,  int earlyLeaveMinutes,  int overtimeMinutes,  String status,  bool isHoliday,  String? holidayType,  String? leaveType,  bool isHalfDay,  String? editedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.shiftId,_that.scheduled,_that.actual,_that.adjustment,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHoliday,_that.holidayType,_that.leaveType,_that.isHalfDay,_that.editedBy,_that.deleted,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String companyId,  DateTime? date,  String shiftId,  AttendanceTimeRange? scheduled,  AttendanceTimeRange? actual,  AttendanceTimeRange? adjustment,  int workDuration,  int breakDuration,  int lateMinutes,  int earlyLeaveMinutes,  int overtimeMinutes,  String status,  bool isHoliday,  String? holidayType,  String? leaveType,  bool isHalfDay,  String? editedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord():
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.shiftId,_that.scheduled,_that.actual,_that.adjustment,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHoliday,_that.holidayType,_that.leaveType,_that.isHalfDay,_that.editedBy,_that.deleted,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String companyId,  DateTime? date,  String shiftId,  AttendanceTimeRange? scheduled,  AttendanceTimeRange? actual,  AttendanceTimeRange? adjustment,  int workDuration,  int breakDuration,  int lateMinutes,  int earlyLeaveMinutes,  int overtimeMinutes,  String status,  bool isHoliday,  String? holidayType,  String? leaveType,  bool isHalfDay,  String? editedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecord() when $default != null:
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.shiftId,_that.scheduled,_that.actual,_that.adjustment,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHoliday,_that.holidayType,_that.leaveType,_that.isHalfDay,_that.editedBy,_that.deleted,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceRecord implements AttendanceRecord {
  const _AttendanceRecord({required this.id, required this.employeeId, required this.companyId, this.date, required this.shiftId, this.scheduled, this.actual, this.adjustment, required this.workDuration, required this.breakDuration, required this.lateMinutes, required this.earlyLeaveMinutes, required this.overtimeMinutes, required this.status, required this.isHoliday, this.holidayType, this.leaveType, required this.isHalfDay, this.editedBy, required this.deleted, this.createdAt, this.updatedAt});
  

@override final  String id;
@override final  String employeeId;
@override final  String companyId;
@override final  DateTime? date;
@override final  String shiftId;
@override final  AttendanceTimeRange? scheduled;
@override final  AttendanceTimeRange? actual;
@override final  AttendanceTimeRange? adjustment;
@override final  int workDuration;
@override final  int breakDuration;
@override final  int lateMinutes;
@override final  int earlyLeaveMinutes;
@override final  int overtimeMinutes;
@override final  String status;
@override final  bool isHoliday;
@override final  String? holidayType;
@override final  String? leaveType;
@override final  bool isHalfDay;
@override final  String? editedBy;
@override final  bool deleted;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRecordCopyWith<_AttendanceRecord> get copyWith => __$AttendanceRecordCopyWithImpl<_AttendanceRecord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRecord&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.adjustment, adjustment) || other.adjustment == adjustment)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.lateMinutes, lateMinutes) || other.lateMinutes == lateMinutes)&&(identical(other.earlyLeaveMinutes, earlyLeaveMinutes) || other.earlyLeaveMinutes == earlyLeaveMinutes)&&(identical(other.overtimeMinutes, overtimeMinutes) || other.overtimeMinutes == overtimeMinutes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.holidayType, holidayType) || other.holidayType == holidayType)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.editedBy, editedBy) || other.editedBy == editedBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,companyId,date,shiftId,scheduled,actual,adjustment,workDuration,breakDuration,lateMinutes,earlyLeaveMinutes,overtimeMinutes,status,isHoliday,holidayType,leaveType,isHalfDay,editedBy,deleted,createdAt,updatedAt]);

@override
String toString() {
  return 'AttendanceRecord(id: $id, employeeId: $employeeId, companyId: $companyId, date: $date, shiftId: $shiftId, scheduled: $scheduled, actual: $actual, adjustment: $adjustment, workDuration: $workDuration, breakDuration: $breakDuration, lateMinutes: $lateMinutes, earlyLeaveMinutes: $earlyLeaveMinutes, overtimeMinutes: $overtimeMinutes, status: $status, isHoliday: $isHoliday, holidayType: $holidayType, leaveType: $leaveType, isHalfDay: $isHalfDay, editedBy: $editedBy, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRecordCopyWith<$Res> implements $AttendanceRecordCopyWith<$Res> {
  factory _$AttendanceRecordCopyWith(_AttendanceRecord value, $Res Function(_AttendanceRecord) _then) = __$AttendanceRecordCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String companyId, DateTime? date, String shiftId, AttendanceTimeRange? scheduled, AttendanceTimeRange? actual, AttendanceTimeRange? adjustment, int workDuration, int breakDuration, int lateMinutes, int earlyLeaveMinutes, int overtimeMinutes, String status, bool isHoliday, String? holidayType, String? leaveType, bool isHalfDay, String? editedBy, bool deleted, DateTime? createdAt, DateTime? updatedAt
});


@override $AttendanceTimeRangeCopyWith<$Res>? get scheduled;@override $AttendanceTimeRangeCopyWith<$Res>? get actual;@override $AttendanceTimeRangeCopyWith<$Res>? get adjustment;

}
/// @nodoc
class __$AttendanceRecordCopyWithImpl<$Res>
    implements _$AttendanceRecordCopyWith<$Res> {
  __$AttendanceRecordCopyWithImpl(this._self, this._then);

  final _AttendanceRecord _self;
  final $Res Function(_AttendanceRecord) _then;

/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? companyId = null,Object? date = freezed,Object? shiftId = null,Object? scheduled = freezed,Object? actual = freezed,Object? adjustment = freezed,Object? workDuration = null,Object? breakDuration = null,Object? lateMinutes = null,Object? earlyLeaveMinutes = null,Object? overtimeMinutes = null,Object? status = null,Object? isHoliday = null,Object? holidayType = freezed,Object? leaveType = freezed,Object? isHalfDay = null,Object? editedBy = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AttendanceRecord(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,actual: freezed == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,adjustment: freezed == adjustment ? _self.adjustment : adjustment // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRange?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
as int,breakDuration: null == breakDuration ? _self.breakDuration : breakDuration // ignore: cast_nullable_to_non_nullable
as int,lateMinutes: null == lateMinutes ? _self.lateMinutes : lateMinutes // ignore: cast_nullable_to_non_nullable
as int,earlyLeaveMinutes: null == earlyLeaveMinutes ? _self.earlyLeaveMinutes : earlyLeaveMinutes // ignore: cast_nullable_to_non_nullable
as int,overtimeMinutes: null == overtimeMinutes ? _self.overtimeMinutes : overtimeMinutes // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,isHoliday: null == isHoliday ? _self.isHoliday : isHoliday // ignore: cast_nullable_to_non_nullable
as bool,holidayType: freezed == holidayType ? _self.holidayType : holidayType // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as String?,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,editedBy: freezed == editedBy ? _self.editedBy : editedBy // ignore: cast_nullable_to_non_nullable
as String?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of AttendanceRecord
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
}/// Create a copy of AttendanceRecord
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
}/// Create a copy of AttendanceRecord
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeCopyWith<$Res>? get adjustment {
    if (_self.adjustment == null) {
    return null;
  }

  return $AttendanceTimeRangeCopyWith<$Res>(_self.adjustment!, (value) {
    return _then(_self.copyWith(adjustment: value));
  });
}
}

/// @nodoc
mixin _$AttendanceTimeRange {

 String? get clockIn; String? get clockOut;
/// Create a copy of AttendanceTimeRange
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceTimeRangeCopyWith<AttendanceTimeRange> get copyWith => _$AttendanceTimeRangeCopyWithImpl<AttendanceTimeRange>(this as AttendanceTimeRange, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceTimeRange&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut));
}


@override
int get hashCode => Object.hash(runtimeType,clockIn,clockOut);

@override
String toString() {
  return 'AttendanceTimeRange(clockIn: $clockIn, clockOut: $clockOut)';
}


}

/// @nodoc
abstract mixin class $AttendanceTimeRangeCopyWith<$Res>  {
  factory $AttendanceTimeRangeCopyWith(AttendanceTimeRange value, $Res Function(AttendanceTimeRange) _then) = _$AttendanceTimeRangeCopyWithImpl;
@useResult
$Res call({
 String? clockIn, String? clockOut
});




}
/// @nodoc
class _$AttendanceTimeRangeCopyWithImpl<$Res>
    implements $AttendanceTimeRangeCopyWith<$Res> {
  _$AttendanceTimeRangeCopyWithImpl(this._self, this._then);

  final AttendanceTimeRange _self;
  final $Res Function(AttendanceTimeRange) _then;

/// Create a copy of AttendanceTimeRange
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clockIn = freezed,Object? clockOut = freezed,}) {
  return _then(_self.copyWith(
clockIn: freezed == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as String?,clockOut: freezed == clockOut ? _self.clockOut : clockOut // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceTimeRange].
extension AttendanceTimeRangePatterns on AttendanceTimeRange {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceTimeRange value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceTimeRange() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceTimeRange value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceTimeRange():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceTimeRange value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceTimeRange() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? clockIn,  String? clockOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceTimeRange() when $default != null:
return $default(_that.clockIn,_that.clockOut);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? clockIn,  String? clockOut)  $default,) {final _that = this;
switch (_that) {
case _AttendanceTimeRange():
return $default(_that.clockIn,_that.clockOut);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? clockIn,  String? clockOut)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceTimeRange() when $default != null:
return $default(_that.clockIn,_that.clockOut);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceTimeRange implements AttendanceTimeRange {
  const _AttendanceTimeRange({this.clockIn, this.clockOut});
  

@override final  String? clockIn;
@override final  String? clockOut;

/// Create a copy of AttendanceTimeRange
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceTimeRangeCopyWith<_AttendanceTimeRange> get copyWith => __$AttendanceTimeRangeCopyWithImpl<_AttendanceTimeRange>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceTimeRange&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut));
}


@override
int get hashCode => Object.hash(runtimeType,clockIn,clockOut);

@override
String toString() {
  return 'AttendanceTimeRange(clockIn: $clockIn, clockOut: $clockOut)';
}


}

/// @nodoc
abstract mixin class _$AttendanceTimeRangeCopyWith<$Res> implements $AttendanceTimeRangeCopyWith<$Res> {
  factory _$AttendanceTimeRangeCopyWith(_AttendanceTimeRange value, $Res Function(_AttendanceTimeRange) _then) = __$AttendanceTimeRangeCopyWithImpl;
@override @useResult
$Res call({
 String? clockIn, String? clockOut
});




}
/// @nodoc
class __$AttendanceTimeRangeCopyWithImpl<$Res>
    implements _$AttendanceTimeRangeCopyWith<$Res> {
  __$AttendanceTimeRangeCopyWithImpl(this._self, this._then);

  final _AttendanceTimeRange _self;
  final $Res Function(_AttendanceTimeRange) _then;

/// Create a copy of AttendanceTimeRange
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clockIn = freezed,Object? clockOut = freezed,}) {
  return _then(_AttendanceTimeRange(
clockIn: freezed == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as String?,clockOut: freezed == clockOut ? _self.clockOut : clockOut // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
