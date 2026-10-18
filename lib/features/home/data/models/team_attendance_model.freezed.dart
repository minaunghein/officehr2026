// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'team_attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TeamAttendanceModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(readValue: _readUserId) String get userId;@JsonKey(readValue: _readEmployeeId) String get employeeId;@JsonKey(readValue: _readEmployeeCode) String get employeeCode;@JsonKey(readValue: _readFirstName) String get firstName;@JsonKey(readValue: _readLastName) String get lastName;@JsonKey(readValue: _readPositionId) String get positionId;@JsonKey(readValue: _readDepartmentId) String get departmentId;@JsonKey(name: 'date_id') String get dateId; AttendanceTimeRangeModel? get scheduled; AttendanceTimeRangeModel? get actual;@JsonKey(name: 'work_duration') int get workDuration;@JsonKey(name: 'break_duration') int get breakDuration;@JsonKey(name: 'late_minutes') int get lateMinutes;@JsonKey(name: 'early_leave_minutes') int get earlyLeaveMinutes;@JsonKey(name: 'overtime_minutes') int get overtimeMinutes; String get status;@JsonKey(name: 'is_half_day') bool get isHalfDay;@JsonKey(name: 'is_holiday') bool get isHoliday;@JsonKey(name: 'leave_type') String? get leaveType; String get notes;
/// Create a copy of TeamAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TeamAttendanceModelCopyWith<TeamAttendanceModel> get copyWith => _$TeamAttendanceModelCopyWithImpl<TeamAttendanceModel>(this as TeamAttendanceModel, _$identity);

  /// Serializes this TeamAttendanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TeamAttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.lateMinutes, lateMinutes) || other.lateMinutes == lateMinutes)&&(identical(other.earlyLeaveMinutes, earlyLeaveMinutes) || other.earlyLeaveMinutes == earlyLeaveMinutes)&&(identical(other.overtimeMinutes, overtimeMinutes) || other.overtimeMinutes == overtimeMinutes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,employeeId,employeeCode,firstName,lastName,positionId,departmentId,dateId,scheduled,actual,workDuration,breakDuration,lateMinutes,earlyLeaveMinutes,overtimeMinutes,status,isHalfDay,isHoliday,leaveType,notes]);

@override
String toString() {
  return 'TeamAttendanceModel(id: $id, userId: $userId, employeeId: $employeeId, employeeCode: $employeeCode, firstName: $firstName, lastName: $lastName, positionId: $positionId, departmentId: $departmentId, dateId: $dateId, scheduled: $scheduled, actual: $actual, workDuration: $workDuration, breakDuration: $breakDuration, lateMinutes: $lateMinutes, earlyLeaveMinutes: $earlyLeaveMinutes, overtimeMinutes: $overtimeMinutes, status: $status, isHalfDay: $isHalfDay, isHoliday: $isHoliday, leaveType: $leaveType, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $TeamAttendanceModelCopyWith<$Res>  {
  factory $TeamAttendanceModelCopyWith(TeamAttendanceModel value, $Res Function(TeamAttendanceModel) _then) = _$TeamAttendanceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(readValue: _readUserId) String userId,@JsonKey(readValue: _readEmployeeId) String employeeId,@JsonKey(readValue: _readEmployeeCode) String employeeCode,@JsonKey(readValue: _readFirstName) String firstName,@JsonKey(readValue: _readLastName) String lastName,@JsonKey(readValue: _readPositionId) String positionId,@JsonKey(readValue: _readDepartmentId) String departmentId,@JsonKey(name: 'date_id') String dateId, AttendanceTimeRangeModel? scheduled, AttendanceTimeRangeModel? actual,@JsonKey(name: 'work_duration') int workDuration,@JsonKey(name: 'break_duration') int breakDuration,@JsonKey(name: 'late_minutes') int lateMinutes,@JsonKey(name: 'early_leave_minutes') int earlyLeaveMinutes,@JsonKey(name: 'overtime_minutes') int overtimeMinutes, String status,@JsonKey(name: 'is_half_day') bool isHalfDay,@JsonKey(name: 'is_holiday') bool isHoliday,@JsonKey(name: 'leave_type') String? leaveType, String notes
});


$AttendanceTimeRangeModelCopyWith<$Res>? get scheduled;$AttendanceTimeRangeModelCopyWith<$Res>? get actual;

}
/// @nodoc
class _$TeamAttendanceModelCopyWithImpl<$Res>
    implements $TeamAttendanceModelCopyWith<$Res> {
  _$TeamAttendanceModelCopyWithImpl(this._self, this._then);

  final TeamAttendanceModel _self;
  final $Res Function(TeamAttendanceModel) _then;

/// Create a copy of TeamAttendanceModel
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
as AttendanceTimeRangeModel?,actual: freezed == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRangeModel?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
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
/// Create a copy of TeamAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeModelCopyWith<$Res>? get scheduled {
    if (_self.scheduled == null) {
    return null;
  }

  return $AttendanceTimeRangeModelCopyWith<$Res>(_self.scheduled!, (value) {
    return _then(_self.copyWith(scheduled: value));
  });
}/// Create a copy of TeamAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeModelCopyWith<$Res>? get actual {
    if (_self.actual == null) {
    return null;
  }

  return $AttendanceTimeRangeModelCopyWith<$Res>(_self.actual!, (value) {
    return _then(_self.copyWith(actual: value));
  });
}
}


/// Adds pattern-matching-related methods to [TeamAttendanceModel].
extension TeamAttendanceModelPatterns on TeamAttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TeamAttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TeamAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TeamAttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _TeamAttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TeamAttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _TeamAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(readValue: _readUserId)  String userId, @JsonKey(readValue: _readEmployeeId)  String employeeId, @JsonKey(readValue: _readEmployeeCode)  String employeeCode, @JsonKey(readValue: _readFirstName)  String firstName, @JsonKey(readValue: _readLastName)  String lastName, @JsonKey(readValue: _readPositionId)  String positionId, @JsonKey(readValue: _readDepartmentId)  String departmentId, @JsonKey(name: 'date_id')  String dateId,  AttendanceTimeRangeModel? scheduled,  AttendanceTimeRangeModel? actual, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration, @JsonKey(name: 'late_minutes')  int lateMinutes, @JsonKey(name: 'early_leave_minutes')  int earlyLeaveMinutes, @JsonKey(name: 'overtime_minutes')  int overtimeMinutes,  String status, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'is_holiday')  bool isHoliday, @JsonKey(name: 'leave_type')  String? leaveType,  String notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TeamAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(readValue: _readUserId)  String userId, @JsonKey(readValue: _readEmployeeId)  String employeeId, @JsonKey(readValue: _readEmployeeCode)  String employeeCode, @JsonKey(readValue: _readFirstName)  String firstName, @JsonKey(readValue: _readLastName)  String lastName, @JsonKey(readValue: _readPositionId)  String positionId, @JsonKey(readValue: _readDepartmentId)  String departmentId, @JsonKey(name: 'date_id')  String dateId,  AttendanceTimeRangeModel? scheduled,  AttendanceTimeRangeModel? actual, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration, @JsonKey(name: 'late_minutes')  int lateMinutes, @JsonKey(name: 'early_leave_minutes')  int earlyLeaveMinutes, @JsonKey(name: 'overtime_minutes')  int overtimeMinutes,  String status, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'is_holiday')  bool isHoliday, @JsonKey(name: 'leave_type')  String? leaveType,  String notes)  $default,) {final _that = this;
switch (_that) {
case _TeamAttendanceModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(readValue: _readUserId)  String userId, @JsonKey(readValue: _readEmployeeId)  String employeeId, @JsonKey(readValue: _readEmployeeCode)  String employeeCode, @JsonKey(readValue: _readFirstName)  String firstName, @JsonKey(readValue: _readLastName)  String lastName, @JsonKey(readValue: _readPositionId)  String positionId, @JsonKey(readValue: _readDepartmentId)  String departmentId, @JsonKey(name: 'date_id')  String dateId,  AttendanceTimeRangeModel? scheduled,  AttendanceTimeRangeModel? actual, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration, @JsonKey(name: 'late_minutes')  int lateMinutes, @JsonKey(name: 'early_leave_minutes')  int earlyLeaveMinutes, @JsonKey(name: 'overtime_minutes')  int overtimeMinutes,  String status, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'is_holiday')  bool isHoliday, @JsonKey(name: 'leave_type')  String? leaveType,  String notes)?  $default,) {final _that = this;
switch (_that) {
case _TeamAttendanceModel() when $default != null:
return $default(_that.id,_that.userId,_that.employeeId,_that.employeeCode,_that.firstName,_that.lastName,_that.positionId,_that.departmentId,_that.dateId,_that.scheduled,_that.actual,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHalfDay,_that.isHoliday,_that.leaveType,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TeamAttendanceModel extends TeamAttendanceModel {
  const _TeamAttendanceModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(readValue: _readUserId) this.userId = '', @JsonKey(readValue: _readEmployeeId) this.employeeId = '', @JsonKey(readValue: _readEmployeeCode) this.employeeCode = '', @JsonKey(readValue: _readFirstName) this.firstName = '', @JsonKey(readValue: _readLastName) this.lastName = '', @JsonKey(readValue: _readPositionId) this.positionId = '', @JsonKey(readValue: _readDepartmentId) this.departmentId = '', @JsonKey(name: 'date_id') this.dateId = '', this.scheduled, this.actual, @JsonKey(name: 'work_duration') this.workDuration = 0, @JsonKey(name: 'break_duration') this.breakDuration = 0, @JsonKey(name: 'late_minutes') this.lateMinutes = 0, @JsonKey(name: 'early_leave_minutes') this.earlyLeaveMinutes = 0, @JsonKey(name: 'overtime_minutes') this.overtimeMinutes = 0, this.status = '', @JsonKey(name: 'is_half_day') this.isHalfDay = false, @JsonKey(name: 'is_holiday') this.isHoliday = false, @JsonKey(name: 'leave_type') this.leaveType, this.notes = ''}): super._();
  factory _TeamAttendanceModel.fromJson(Map<String, dynamic> json) => _$TeamAttendanceModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(readValue: _readUserId) final  String userId;
@override@JsonKey(readValue: _readEmployeeId) final  String employeeId;
@override@JsonKey(readValue: _readEmployeeCode) final  String employeeCode;
@override@JsonKey(readValue: _readFirstName) final  String firstName;
@override@JsonKey(readValue: _readLastName) final  String lastName;
@override@JsonKey(readValue: _readPositionId) final  String positionId;
@override@JsonKey(readValue: _readDepartmentId) final  String departmentId;
@override@JsonKey(name: 'date_id') final  String dateId;
@override final  AttendanceTimeRangeModel? scheduled;
@override final  AttendanceTimeRangeModel? actual;
@override@JsonKey(name: 'work_duration') final  int workDuration;
@override@JsonKey(name: 'break_duration') final  int breakDuration;
@override@JsonKey(name: 'late_minutes') final  int lateMinutes;
@override@JsonKey(name: 'early_leave_minutes') final  int earlyLeaveMinutes;
@override@JsonKey(name: 'overtime_minutes') final  int overtimeMinutes;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'is_half_day') final  bool isHalfDay;
@override@JsonKey(name: 'is_holiday') final  bool isHoliday;
@override@JsonKey(name: 'leave_type') final  String? leaveType;
@override@JsonKey() final  String notes;

/// Create a copy of TeamAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TeamAttendanceModelCopyWith<_TeamAttendanceModel> get copyWith => __$TeamAttendanceModelCopyWithImpl<_TeamAttendanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TeamAttendanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TeamAttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.lateMinutes, lateMinutes) || other.lateMinutes == lateMinutes)&&(identical(other.earlyLeaveMinutes, earlyLeaveMinutes) || other.earlyLeaveMinutes == earlyLeaveMinutes)&&(identical(other.overtimeMinutes, overtimeMinutes) || other.overtimeMinutes == overtimeMinutes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,employeeId,employeeCode,firstName,lastName,positionId,departmentId,dateId,scheduled,actual,workDuration,breakDuration,lateMinutes,earlyLeaveMinutes,overtimeMinutes,status,isHalfDay,isHoliday,leaveType,notes]);

@override
String toString() {
  return 'TeamAttendanceModel(id: $id, userId: $userId, employeeId: $employeeId, employeeCode: $employeeCode, firstName: $firstName, lastName: $lastName, positionId: $positionId, departmentId: $departmentId, dateId: $dateId, scheduled: $scheduled, actual: $actual, workDuration: $workDuration, breakDuration: $breakDuration, lateMinutes: $lateMinutes, earlyLeaveMinutes: $earlyLeaveMinutes, overtimeMinutes: $overtimeMinutes, status: $status, isHalfDay: $isHalfDay, isHoliday: $isHoliday, leaveType: $leaveType, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$TeamAttendanceModelCopyWith<$Res> implements $TeamAttendanceModelCopyWith<$Res> {
  factory _$TeamAttendanceModelCopyWith(_TeamAttendanceModel value, $Res Function(_TeamAttendanceModel) _then) = __$TeamAttendanceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(readValue: _readUserId) String userId,@JsonKey(readValue: _readEmployeeId) String employeeId,@JsonKey(readValue: _readEmployeeCode) String employeeCode,@JsonKey(readValue: _readFirstName) String firstName,@JsonKey(readValue: _readLastName) String lastName,@JsonKey(readValue: _readPositionId) String positionId,@JsonKey(readValue: _readDepartmentId) String departmentId,@JsonKey(name: 'date_id') String dateId, AttendanceTimeRangeModel? scheduled, AttendanceTimeRangeModel? actual,@JsonKey(name: 'work_duration') int workDuration,@JsonKey(name: 'break_duration') int breakDuration,@JsonKey(name: 'late_minutes') int lateMinutes,@JsonKey(name: 'early_leave_minutes') int earlyLeaveMinutes,@JsonKey(name: 'overtime_minutes') int overtimeMinutes, String status,@JsonKey(name: 'is_half_day') bool isHalfDay,@JsonKey(name: 'is_holiday') bool isHoliday,@JsonKey(name: 'leave_type') String? leaveType, String notes
});


@override $AttendanceTimeRangeModelCopyWith<$Res>? get scheduled;@override $AttendanceTimeRangeModelCopyWith<$Res>? get actual;

}
/// @nodoc
class __$TeamAttendanceModelCopyWithImpl<$Res>
    implements _$TeamAttendanceModelCopyWith<$Res> {
  __$TeamAttendanceModelCopyWithImpl(this._self, this._then);

  final _TeamAttendanceModel _self;
  final $Res Function(_TeamAttendanceModel) _then;

/// Create a copy of TeamAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? employeeId = null,Object? employeeCode = null,Object? firstName = null,Object? lastName = null,Object? positionId = null,Object? departmentId = null,Object? dateId = null,Object? scheduled = freezed,Object? actual = freezed,Object? workDuration = null,Object? breakDuration = null,Object? lateMinutes = null,Object? earlyLeaveMinutes = null,Object? overtimeMinutes = null,Object? status = null,Object? isHalfDay = null,Object? isHoliday = null,Object? leaveType = freezed,Object? notes = null,}) {
  return _then(_TeamAttendanceModel(
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
as AttendanceTimeRangeModel?,actual: freezed == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRangeModel?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
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

/// Create a copy of TeamAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeModelCopyWith<$Res>? get scheduled {
    if (_self.scheduled == null) {
    return null;
  }

  return $AttendanceTimeRangeModelCopyWith<$Res>(_self.scheduled!, (value) {
    return _then(_self.copyWith(scheduled: value));
  });
}/// Create a copy of TeamAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeModelCopyWith<$Res>? get actual {
    if (_self.actual == null) {
    return null;
  }

  return $AttendanceTimeRangeModelCopyWith<$Res>(_self.actual!, (value) {
    return _then(_self.copyWith(actual: value));
  });
}
}

// dart format on
