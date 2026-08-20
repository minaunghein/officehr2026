// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceRecordModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(name: 'employee_id') String get employeeId;@JsonKey(name: 'company_id') String get companyId; DateTime? get date;@JsonKey(name: 'shift_id') String get shiftId; AttendanceTimeRangeModel? get scheduled; AttendanceTimeRangeModel? get actual; AttendanceTimeRangeModel? get adjustment;@JsonKey(name: 'work_duration') int get workDuration;@JsonKey(name: 'break_duration') int get breakDuration;@JsonKey(name: 'late_minutes') int get lateMinutes;@JsonKey(name: 'early_leave_minutes') int get earlyLeaveMinutes;@JsonKey(name: 'overtime_minutes') int get overtimeMinutes; String get status;@JsonKey(name: 'is_holiday') bool get isHoliday;@JsonKey(name: 'holiday_type') String? get holidayType;@JsonKey(name: 'leave_type') String? get leaveType;@JsonKey(name: 'is_half_day') bool get isHalfDay;@JsonKey(name: 'edited_by') String? get editedBy; bool get deleted; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceRecordModelCopyWith<AttendanceRecordModel> get copyWith => _$AttendanceRecordModelCopyWithImpl<AttendanceRecordModel>(this as AttendanceRecordModel, _$identity);

  /// Serializes this AttendanceRecordModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.adjustment, adjustment) || other.adjustment == adjustment)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.lateMinutes, lateMinutes) || other.lateMinutes == lateMinutes)&&(identical(other.earlyLeaveMinutes, earlyLeaveMinutes) || other.earlyLeaveMinutes == earlyLeaveMinutes)&&(identical(other.overtimeMinutes, overtimeMinutes) || other.overtimeMinutes == overtimeMinutes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.holidayType, holidayType) || other.holidayType == holidayType)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.editedBy, editedBy) || other.editedBy == editedBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,companyId,date,shiftId,scheduled,actual,adjustment,workDuration,breakDuration,lateMinutes,earlyLeaveMinutes,overtimeMinutes,status,isHoliday,holidayType,leaveType,isHalfDay,editedBy,deleted,createdAt,updatedAt,version]);

@override
String toString() {
  return 'AttendanceRecordModel(id: $id, employeeId: $employeeId, companyId: $companyId, date: $date, shiftId: $shiftId, scheduled: $scheduled, actual: $actual, adjustment: $adjustment, workDuration: $workDuration, breakDuration: $breakDuration, lateMinutes: $lateMinutes, earlyLeaveMinutes: $earlyLeaveMinutes, overtimeMinutes: $overtimeMinutes, status: $status, isHoliday: $isHoliday, holidayType: $holidayType, leaveType: $leaveType, isHalfDay: $isHalfDay, editedBy: $editedBy, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $AttendanceRecordModelCopyWith<$Res>  {
  factory $AttendanceRecordModelCopyWith(AttendanceRecordModel value, $Res Function(AttendanceRecordModel) _then) = _$AttendanceRecordModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'company_id') String companyId, DateTime? date,@JsonKey(name: 'shift_id') String shiftId, AttendanceTimeRangeModel? scheduled, AttendanceTimeRangeModel? actual, AttendanceTimeRangeModel? adjustment,@JsonKey(name: 'work_duration') int workDuration,@JsonKey(name: 'break_duration') int breakDuration,@JsonKey(name: 'late_minutes') int lateMinutes,@JsonKey(name: 'early_leave_minutes') int earlyLeaveMinutes,@JsonKey(name: 'overtime_minutes') int overtimeMinutes, String status,@JsonKey(name: 'is_holiday') bool isHoliday,@JsonKey(name: 'holiday_type') String? holidayType,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'is_half_day') bool isHalfDay,@JsonKey(name: 'edited_by') String? editedBy, bool deleted, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});


$AttendanceTimeRangeModelCopyWith<$Res>? get scheduled;$AttendanceTimeRangeModelCopyWith<$Res>? get actual;$AttendanceTimeRangeModelCopyWith<$Res>? get adjustment;

}
/// @nodoc
class _$AttendanceRecordModelCopyWithImpl<$Res>
    implements $AttendanceRecordModelCopyWith<$Res> {
  _$AttendanceRecordModelCopyWithImpl(this._self, this._then);

  final AttendanceRecordModel _self;
  final $Res Function(AttendanceRecordModel) _then;

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? companyId = null,Object? date = freezed,Object? shiftId = null,Object? scheduled = freezed,Object? actual = freezed,Object? adjustment = freezed,Object? workDuration = null,Object? breakDuration = null,Object? lateMinutes = null,Object? earlyLeaveMinutes = null,Object? overtimeMinutes = null,Object? status = null,Object? isHoliday = null,Object? holidayType = freezed,Object? leaveType = freezed,Object? isHalfDay = null,Object? editedBy = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRangeModel?,actual: freezed == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRangeModel?,adjustment: freezed == adjustment ? _self.adjustment : adjustment // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRangeModel?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
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
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of AttendanceRecordModel
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
}/// Create a copy of AttendanceRecordModel
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
}/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeModelCopyWith<$Res>? get adjustment {
    if (_self.adjustment == null) {
    return null;
  }

  return $AttendanceTimeRangeModelCopyWith<$Res>(_self.adjustment!, (value) {
    return _then(_self.copyWith(adjustment: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceRecordModel].
extension AttendanceRecordModelPatterns on AttendanceRecordModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceRecordModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceRecordModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecordModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceRecordModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'company_id')  String companyId,  DateTime? date, @JsonKey(name: 'shift_id')  String shiftId,  AttendanceTimeRangeModel? scheduled,  AttendanceTimeRangeModel? actual,  AttendanceTimeRangeModel? adjustment, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration, @JsonKey(name: 'late_minutes')  int lateMinutes, @JsonKey(name: 'early_leave_minutes')  int earlyLeaveMinutes, @JsonKey(name: 'overtime_minutes')  int overtimeMinutes,  String status, @JsonKey(name: 'is_holiday')  bool isHoliday, @JsonKey(name: 'holiday_type')  String? holidayType, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'edited_by')  String? editedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.shiftId,_that.scheduled,_that.actual,_that.adjustment,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHoliday,_that.holidayType,_that.leaveType,_that.isHalfDay,_that.editedBy,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'company_id')  String companyId,  DateTime? date, @JsonKey(name: 'shift_id')  String shiftId,  AttendanceTimeRangeModel? scheduled,  AttendanceTimeRangeModel? actual,  AttendanceTimeRangeModel? adjustment, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration, @JsonKey(name: 'late_minutes')  int lateMinutes, @JsonKey(name: 'early_leave_minutes')  int earlyLeaveMinutes, @JsonKey(name: 'overtime_minutes')  int overtimeMinutes,  String status, @JsonKey(name: 'is_holiday')  bool isHoliday, @JsonKey(name: 'holiday_type')  String? holidayType, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'edited_by')  String? editedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecordModel():
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.shiftId,_that.scheduled,_that.actual,_that.adjustment,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHoliday,_that.holidayType,_that.leaveType,_that.isHalfDay,_that.editedBy,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'company_id')  String companyId,  DateTime? date, @JsonKey(name: 'shift_id')  String shiftId,  AttendanceTimeRangeModel? scheduled,  AttendanceTimeRangeModel? actual,  AttendanceTimeRangeModel? adjustment, @JsonKey(name: 'work_duration')  int workDuration, @JsonKey(name: 'break_duration')  int breakDuration, @JsonKey(name: 'late_minutes')  int lateMinutes, @JsonKey(name: 'early_leave_minutes')  int earlyLeaveMinutes, @JsonKey(name: 'overtime_minutes')  int overtimeMinutes,  String status, @JsonKey(name: 'is_holiday')  bool isHoliday, @JsonKey(name: 'holiday_type')  String? holidayType, @JsonKey(name: 'leave_type')  String? leaveType, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'edited_by')  String? editedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceRecordModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.shiftId,_that.scheduled,_that.actual,_that.adjustment,_that.workDuration,_that.breakDuration,_that.lateMinutes,_that.earlyLeaveMinutes,_that.overtimeMinutes,_that.status,_that.isHoliday,_that.holidayType,_that.leaveType,_that.isHalfDay,_that.editedBy,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceRecordModel extends AttendanceRecordModel {
  const _AttendanceRecordModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(name: 'employee_id') this.employeeId = '', @JsonKey(name: 'company_id') this.companyId = '', this.date, @JsonKey(name: 'shift_id') this.shiftId = '', this.scheduled, this.actual, this.adjustment, @JsonKey(name: 'work_duration') this.workDuration = 0, @JsonKey(name: 'break_duration') this.breakDuration = 0, @JsonKey(name: 'late_minutes') this.lateMinutes = 0, @JsonKey(name: 'early_leave_minutes') this.earlyLeaveMinutes = 0, @JsonKey(name: 'overtime_minutes') this.overtimeMinutes = 0, this.status = '', @JsonKey(name: 'is_holiday') this.isHoliday = false, @JsonKey(name: 'holiday_type') this.holidayType, @JsonKey(name: 'leave_type') this.leaveType, @JsonKey(name: 'is_half_day') this.isHalfDay = false, @JsonKey(name: 'edited_by') this.editedBy, this.deleted = false, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version}): super._();
  factory _AttendanceRecordModel.fromJson(Map<String, dynamic> json) => _$AttendanceRecordModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(name: 'employee_id') final  String employeeId;
@override@JsonKey(name: 'company_id') final  String companyId;
@override final  DateTime? date;
@override@JsonKey(name: 'shift_id') final  String shiftId;
@override final  AttendanceTimeRangeModel? scheduled;
@override final  AttendanceTimeRangeModel? actual;
@override final  AttendanceTimeRangeModel? adjustment;
@override@JsonKey(name: 'work_duration') final  int workDuration;
@override@JsonKey(name: 'break_duration') final  int breakDuration;
@override@JsonKey(name: 'late_minutes') final  int lateMinutes;
@override@JsonKey(name: 'early_leave_minutes') final  int earlyLeaveMinutes;
@override@JsonKey(name: 'overtime_minutes') final  int overtimeMinutes;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'is_holiday') final  bool isHoliday;
@override@JsonKey(name: 'holiday_type') final  String? holidayType;
@override@JsonKey(name: 'leave_type') final  String? leaveType;
@override@JsonKey(name: 'is_half_day') final  bool isHalfDay;
@override@JsonKey(name: 'edited_by') final  String? editedBy;
@override@JsonKey() final  bool deleted;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceRecordModelCopyWith<_AttendanceRecordModel> get copyWith => __$AttendanceRecordModelCopyWithImpl<_AttendanceRecordModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceRecordModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceRecordModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.scheduled, scheduled) || other.scheduled == scheduled)&&(identical(other.actual, actual) || other.actual == actual)&&(identical(other.adjustment, adjustment) || other.adjustment == adjustment)&&(identical(other.workDuration, workDuration) || other.workDuration == workDuration)&&(identical(other.breakDuration, breakDuration) || other.breakDuration == breakDuration)&&(identical(other.lateMinutes, lateMinutes) || other.lateMinutes == lateMinutes)&&(identical(other.earlyLeaveMinutes, earlyLeaveMinutes) || other.earlyLeaveMinutes == earlyLeaveMinutes)&&(identical(other.overtimeMinutes, overtimeMinutes) || other.overtimeMinutes == overtimeMinutes)&&(identical(other.status, status) || other.status == status)&&(identical(other.isHoliday, isHoliday) || other.isHoliday == isHoliday)&&(identical(other.holidayType, holidayType) || other.holidayType == holidayType)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.editedBy, editedBy) || other.editedBy == editedBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,companyId,date,shiftId,scheduled,actual,adjustment,workDuration,breakDuration,lateMinutes,earlyLeaveMinutes,overtimeMinutes,status,isHoliday,holidayType,leaveType,isHalfDay,editedBy,deleted,createdAt,updatedAt,version]);

@override
String toString() {
  return 'AttendanceRecordModel(id: $id, employeeId: $employeeId, companyId: $companyId, date: $date, shiftId: $shiftId, scheduled: $scheduled, actual: $actual, adjustment: $adjustment, workDuration: $workDuration, breakDuration: $breakDuration, lateMinutes: $lateMinutes, earlyLeaveMinutes: $earlyLeaveMinutes, overtimeMinutes: $overtimeMinutes, status: $status, isHoliday: $isHoliday, holidayType: $holidayType, leaveType: $leaveType, isHalfDay: $isHalfDay, editedBy: $editedBy, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$AttendanceRecordModelCopyWith<$Res> implements $AttendanceRecordModelCopyWith<$Res> {
  factory _$AttendanceRecordModelCopyWith(_AttendanceRecordModel value, $Res Function(_AttendanceRecordModel) _then) = __$AttendanceRecordModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'company_id') String companyId, DateTime? date,@JsonKey(name: 'shift_id') String shiftId, AttendanceTimeRangeModel? scheduled, AttendanceTimeRangeModel? actual, AttendanceTimeRangeModel? adjustment,@JsonKey(name: 'work_duration') int workDuration,@JsonKey(name: 'break_duration') int breakDuration,@JsonKey(name: 'late_minutes') int lateMinutes,@JsonKey(name: 'early_leave_minutes') int earlyLeaveMinutes,@JsonKey(name: 'overtime_minutes') int overtimeMinutes, String status,@JsonKey(name: 'is_holiday') bool isHoliday,@JsonKey(name: 'holiday_type') String? holidayType,@JsonKey(name: 'leave_type') String? leaveType,@JsonKey(name: 'is_half_day') bool isHalfDay,@JsonKey(name: 'edited_by') String? editedBy, bool deleted, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});


@override $AttendanceTimeRangeModelCopyWith<$Res>? get scheduled;@override $AttendanceTimeRangeModelCopyWith<$Res>? get actual;@override $AttendanceTimeRangeModelCopyWith<$Res>? get adjustment;

}
/// @nodoc
class __$AttendanceRecordModelCopyWithImpl<$Res>
    implements _$AttendanceRecordModelCopyWith<$Res> {
  __$AttendanceRecordModelCopyWithImpl(this._self, this._then);

  final _AttendanceRecordModel _self;
  final $Res Function(_AttendanceRecordModel) _then;

/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? companyId = null,Object? date = freezed,Object? shiftId = null,Object? scheduled = freezed,Object? actual = freezed,Object? adjustment = freezed,Object? workDuration = null,Object? breakDuration = null,Object? lateMinutes = null,Object? earlyLeaveMinutes = null,Object? overtimeMinutes = null,Object? status = null,Object? isHoliday = null,Object? holidayType = freezed,Object? leaveType = freezed,Object? isHalfDay = null,Object? editedBy = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_AttendanceRecordModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,scheduled: freezed == scheduled ? _self.scheduled : scheduled // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRangeModel?,actual: freezed == actual ? _self.actual : actual // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRangeModel?,adjustment: freezed == adjustment ? _self.adjustment : adjustment // ignore: cast_nullable_to_non_nullable
as AttendanceTimeRangeModel?,workDuration: null == workDuration ? _self.workDuration : workDuration // ignore: cast_nullable_to_non_nullable
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
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AttendanceRecordModel
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
}/// Create a copy of AttendanceRecordModel
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
}/// Create a copy of AttendanceRecordModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceTimeRangeModelCopyWith<$Res>? get adjustment {
    if (_self.adjustment == null) {
    return null;
  }

  return $AttendanceTimeRangeModelCopyWith<$Res>(_self.adjustment!, (value) {
    return _then(_self.copyWith(adjustment: value));
  });
}
}


/// @nodoc
mixin _$AttendanceTimeRangeModel {

@JsonKey(name: 'clock_in') String? get clockIn;@JsonKey(name: 'clock_out') String? get clockOut;
/// Create a copy of AttendanceTimeRangeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceTimeRangeModelCopyWith<AttendanceTimeRangeModel> get copyWith => _$AttendanceTimeRangeModelCopyWithImpl<AttendanceTimeRangeModel>(this as AttendanceTimeRangeModel, _$identity);

  /// Serializes this AttendanceTimeRangeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceTimeRangeModel&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clockIn,clockOut);

@override
String toString() {
  return 'AttendanceTimeRangeModel(clockIn: $clockIn, clockOut: $clockOut)';
}


}

/// @nodoc
abstract mixin class $AttendanceTimeRangeModelCopyWith<$Res>  {
  factory $AttendanceTimeRangeModelCopyWith(AttendanceTimeRangeModel value, $Res Function(AttendanceTimeRangeModel) _then) = _$AttendanceTimeRangeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'clock_in') String? clockIn,@JsonKey(name: 'clock_out') String? clockOut
});




}
/// @nodoc
class _$AttendanceTimeRangeModelCopyWithImpl<$Res>
    implements $AttendanceTimeRangeModelCopyWith<$Res> {
  _$AttendanceTimeRangeModelCopyWithImpl(this._self, this._then);

  final AttendanceTimeRangeModel _self;
  final $Res Function(AttendanceTimeRangeModel) _then;

/// Create a copy of AttendanceTimeRangeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clockIn = freezed,Object? clockOut = freezed,}) {
  return _then(_self.copyWith(
clockIn: freezed == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as String?,clockOut: freezed == clockOut ? _self.clockOut : clockOut // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceTimeRangeModel].
extension AttendanceTimeRangeModelPatterns on AttendanceTimeRangeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceTimeRangeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceTimeRangeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceTimeRangeModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceTimeRangeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceTimeRangeModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceTimeRangeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'clock_in')  String? clockIn, @JsonKey(name: 'clock_out')  String? clockOut)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceTimeRangeModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'clock_in')  String? clockIn, @JsonKey(name: 'clock_out')  String? clockOut)  $default,) {final _that = this;
switch (_that) {
case _AttendanceTimeRangeModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'clock_in')  String? clockIn, @JsonKey(name: 'clock_out')  String? clockOut)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceTimeRangeModel() when $default != null:
return $default(_that.clockIn,_that.clockOut);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceTimeRangeModel extends AttendanceTimeRangeModel {
  const _AttendanceTimeRangeModel({@JsonKey(name: 'clock_in') this.clockIn, @JsonKey(name: 'clock_out') this.clockOut}): super._();
  factory _AttendanceTimeRangeModel.fromJson(Map<String, dynamic> json) => _$AttendanceTimeRangeModelFromJson(json);

@override@JsonKey(name: 'clock_in') final  String? clockIn;
@override@JsonKey(name: 'clock_out') final  String? clockOut;

/// Create a copy of AttendanceTimeRangeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceTimeRangeModelCopyWith<_AttendanceTimeRangeModel> get copyWith => __$AttendanceTimeRangeModelCopyWithImpl<_AttendanceTimeRangeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceTimeRangeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceTimeRangeModel&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.clockOut, clockOut) || other.clockOut == clockOut));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clockIn,clockOut);

@override
String toString() {
  return 'AttendanceTimeRangeModel(clockIn: $clockIn, clockOut: $clockOut)';
}


}

/// @nodoc
abstract mixin class _$AttendanceTimeRangeModelCopyWith<$Res> implements $AttendanceTimeRangeModelCopyWith<$Res> {
  factory _$AttendanceTimeRangeModelCopyWith(_AttendanceTimeRangeModel value, $Res Function(_AttendanceTimeRangeModel) _then) = __$AttendanceTimeRangeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'clock_in') String? clockIn,@JsonKey(name: 'clock_out') String? clockOut
});




}
/// @nodoc
class __$AttendanceTimeRangeModelCopyWithImpl<$Res>
    implements _$AttendanceTimeRangeModelCopyWith<$Res> {
  __$AttendanceTimeRangeModelCopyWithImpl(this._self, this._then);

  final _AttendanceTimeRangeModel _self;
  final $Res Function(_AttendanceTimeRangeModel) _then;

/// Create a copy of AttendanceTimeRangeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clockIn = freezed,Object? clockOut = freezed,}) {
  return _then(_AttendanceTimeRangeModel(
clockIn: freezed == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as String?,clockOut: freezed == clockOut ? _self.clockOut : clockOut // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
