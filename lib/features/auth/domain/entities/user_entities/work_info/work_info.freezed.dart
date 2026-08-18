// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkInfo {

 String get employeeCode; String get departmentId; String get positionId; String get branchId; String get shiftId; String? get supervisorId; String? get employmentDate; String? get probationEndDate; String? get resignationDate; String get employmentStatus; String get employmentType; String get workMode; String get cardId; String get grade; Department? get department; Position? get position; Branch? get branch; Shift? get shift; Supervisor? get supervisor;
/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkInfoCopyWith<WorkInfo> get copyWith => _$WorkInfoCopyWithImpl<WorkInfo>(this as WorkInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkInfo&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.supervisorId, supervisorId) || other.supervisorId == supervisorId)&&(identical(other.employmentDate, employmentDate) || other.employmentDate == employmentDate)&&(identical(other.probationEndDate, probationEndDate) || other.probationEndDate == probationEndDate)&&(identical(other.resignationDate, resignationDate) || other.resignationDate == resignationDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.workMode, workMode) || other.workMode == workMode)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.department, department) || other.department == department)&&(identical(other.position, position) || other.position == position)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.supervisor, supervisor) || other.supervisor == supervisor));
}


@override
int get hashCode => Object.hashAll([runtimeType,employeeCode,departmentId,positionId,branchId,shiftId,supervisorId,employmentDate,probationEndDate,resignationDate,employmentStatus,employmentType,workMode,cardId,grade,department,position,branch,shift,supervisor]);

@override
String toString() {
  return 'WorkInfo(employeeCode: $employeeCode, departmentId: $departmentId, positionId: $positionId, branchId: $branchId, shiftId: $shiftId, supervisorId: $supervisorId, employmentDate: $employmentDate, probationEndDate: $probationEndDate, resignationDate: $resignationDate, employmentStatus: $employmentStatus, employmentType: $employmentType, workMode: $workMode, cardId: $cardId, grade: $grade, department: $department, position: $position, branch: $branch, shift: $shift, supervisor: $supervisor)';
}


}

/// @nodoc
abstract mixin class $WorkInfoCopyWith<$Res>  {
  factory $WorkInfoCopyWith(WorkInfo value, $Res Function(WorkInfo) _then) = _$WorkInfoCopyWithImpl;
@useResult
$Res call({
 String employeeCode, String departmentId, String positionId, String branchId, String shiftId, String? supervisorId, String? employmentDate, String? probationEndDate, String? resignationDate, String employmentStatus, String employmentType, String workMode, String cardId, String grade, Department? department, Position? position, Branch? branch, Shift? shift, Supervisor? supervisor
});


$DepartmentCopyWith<$Res>? get department;$PositionCopyWith<$Res>? get position;$BranchCopyWith<$Res>? get branch;$ShiftCopyWith<$Res>? get shift;$SupervisorCopyWith<$Res>? get supervisor;

}
/// @nodoc
class _$WorkInfoCopyWithImpl<$Res>
    implements $WorkInfoCopyWith<$Res> {
  _$WorkInfoCopyWithImpl(this._self, this._then);

  final WorkInfo _self;
  final $Res Function(WorkInfo) _then;

/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employeeCode = null,Object? departmentId = null,Object? positionId = null,Object? branchId = null,Object? shiftId = null,Object? supervisorId = freezed,Object? employmentDate = freezed,Object? probationEndDate = freezed,Object? resignationDate = freezed,Object? employmentStatus = null,Object? employmentType = null,Object? workMode = null,Object? cardId = null,Object? grade = null,Object? department = freezed,Object? position = freezed,Object? branch = freezed,Object? shift = freezed,Object? supervisor = freezed,}) {
  return _then(_self.copyWith(
employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,departmentId: null == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String,positionId: null == positionId ? _self.positionId : positionId // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,supervisorId: freezed == supervisorId ? _self.supervisorId : supervisorId // ignore: cast_nullable_to_non_nullable
as String?,employmentDate: freezed == employmentDate ? _self.employmentDate : employmentDate // ignore: cast_nullable_to_non_nullable
as String?,probationEndDate: freezed == probationEndDate ? _self.probationEndDate : probationEndDate // ignore: cast_nullable_to_non_nullable
as String?,resignationDate: freezed == resignationDate ? _self.resignationDate : resignationDate // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String,employmentType: null == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as String,workMode: null == workMode ? _self.workMode : workMode // ignore: cast_nullable_to_non_nullable
as String,cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Department?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as Shift?,supervisor: freezed == supervisor ? _self.supervisor : supervisor // ignore: cast_nullable_to_non_nullable
as Supervisor?,
  ));
}
/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentCopyWith<$Res>? get department {
    if (_self.department == null) {
    return null;
  }

  return $DepartmentCopyWith<$Res>(_self.department!, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $PositionCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftCopyWith<$Res>? get shift {
    if (_self.shift == null) {
    return null;
  }

  return $ShiftCopyWith<$Res>(_self.shift!, (value) {
    return _then(_self.copyWith(shift: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupervisorCopyWith<$Res>? get supervisor {
    if (_self.supervisor == null) {
    return null;
  }

  return $SupervisorCopyWith<$Res>(_self.supervisor!, (value) {
    return _then(_self.copyWith(supervisor: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorkInfo].
extension WorkInfoPatterns on WorkInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkInfo value)  $default,){
final _that = this;
switch (_that) {
case _WorkInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkInfo value)?  $default,){
final _that = this;
switch (_that) {
case _WorkInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String employeeCode,  String departmentId,  String positionId,  String branchId,  String shiftId,  String? supervisorId,  String? employmentDate,  String? probationEndDate,  String? resignationDate,  String employmentStatus,  String employmentType,  String workMode,  String cardId,  String grade,  Department? department,  Position? position,  Branch? branch,  Shift? shift,  Supervisor? supervisor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkInfo() when $default != null:
return $default(_that.employeeCode,_that.departmentId,_that.positionId,_that.branchId,_that.shiftId,_that.supervisorId,_that.employmentDate,_that.probationEndDate,_that.resignationDate,_that.employmentStatus,_that.employmentType,_that.workMode,_that.cardId,_that.grade,_that.department,_that.position,_that.branch,_that.shift,_that.supervisor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String employeeCode,  String departmentId,  String positionId,  String branchId,  String shiftId,  String? supervisorId,  String? employmentDate,  String? probationEndDate,  String? resignationDate,  String employmentStatus,  String employmentType,  String workMode,  String cardId,  String grade,  Department? department,  Position? position,  Branch? branch,  Shift? shift,  Supervisor? supervisor)  $default,) {final _that = this;
switch (_that) {
case _WorkInfo():
return $default(_that.employeeCode,_that.departmentId,_that.positionId,_that.branchId,_that.shiftId,_that.supervisorId,_that.employmentDate,_that.probationEndDate,_that.resignationDate,_that.employmentStatus,_that.employmentType,_that.workMode,_that.cardId,_that.grade,_that.department,_that.position,_that.branch,_that.shift,_that.supervisor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String employeeCode,  String departmentId,  String positionId,  String branchId,  String shiftId,  String? supervisorId,  String? employmentDate,  String? probationEndDate,  String? resignationDate,  String employmentStatus,  String employmentType,  String workMode,  String cardId,  String grade,  Department? department,  Position? position,  Branch? branch,  Shift? shift,  Supervisor? supervisor)?  $default,) {final _that = this;
switch (_that) {
case _WorkInfo() when $default != null:
return $default(_that.employeeCode,_that.departmentId,_that.positionId,_that.branchId,_that.shiftId,_that.supervisorId,_that.employmentDate,_that.probationEndDate,_that.resignationDate,_that.employmentStatus,_that.employmentType,_that.workMode,_that.cardId,_that.grade,_that.department,_that.position,_that.branch,_that.shift,_that.supervisor);case _:
  return null;

}
}

}

/// @nodoc


class _WorkInfo implements WorkInfo {
  const _WorkInfo({required this.employeeCode, required this.departmentId, required this.positionId, required this.branchId, required this.shiftId, this.supervisorId, this.employmentDate, this.probationEndDate, this.resignationDate, required this.employmentStatus, required this.employmentType, required this.workMode, required this.cardId, required this.grade, this.department, this.position, this.branch, this.shift, this.supervisor});
  

@override final  String employeeCode;
@override final  String departmentId;
@override final  String positionId;
@override final  String branchId;
@override final  String shiftId;
@override final  String? supervisorId;
@override final  String? employmentDate;
@override final  String? probationEndDate;
@override final  String? resignationDate;
@override final  String employmentStatus;
@override final  String employmentType;
@override final  String workMode;
@override final  String cardId;
@override final  String grade;
@override final  Department? department;
@override final  Position? position;
@override final  Branch? branch;
@override final  Shift? shift;
@override final  Supervisor? supervisor;

/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkInfoCopyWith<_WorkInfo> get copyWith => __$WorkInfoCopyWithImpl<_WorkInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkInfo&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.supervisorId, supervisorId) || other.supervisorId == supervisorId)&&(identical(other.employmentDate, employmentDate) || other.employmentDate == employmentDate)&&(identical(other.probationEndDate, probationEndDate) || other.probationEndDate == probationEndDate)&&(identical(other.resignationDate, resignationDate) || other.resignationDate == resignationDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.workMode, workMode) || other.workMode == workMode)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.department, department) || other.department == department)&&(identical(other.position, position) || other.position == position)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.supervisor, supervisor) || other.supervisor == supervisor));
}


@override
int get hashCode => Object.hashAll([runtimeType,employeeCode,departmentId,positionId,branchId,shiftId,supervisorId,employmentDate,probationEndDate,resignationDate,employmentStatus,employmentType,workMode,cardId,grade,department,position,branch,shift,supervisor]);

@override
String toString() {
  return 'WorkInfo(employeeCode: $employeeCode, departmentId: $departmentId, positionId: $positionId, branchId: $branchId, shiftId: $shiftId, supervisorId: $supervisorId, employmentDate: $employmentDate, probationEndDate: $probationEndDate, resignationDate: $resignationDate, employmentStatus: $employmentStatus, employmentType: $employmentType, workMode: $workMode, cardId: $cardId, grade: $grade, department: $department, position: $position, branch: $branch, shift: $shift, supervisor: $supervisor)';
}


}

/// @nodoc
abstract mixin class _$WorkInfoCopyWith<$Res> implements $WorkInfoCopyWith<$Res> {
  factory _$WorkInfoCopyWith(_WorkInfo value, $Res Function(_WorkInfo) _then) = __$WorkInfoCopyWithImpl;
@override @useResult
$Res call({
 String employeeCode, String departmentId, String positionId, String branchId, String shiftId, String? supervisorId, String? employmentDate, String? probationEndDate, String? resignationDate, String employmentStatus, String employmentType, String workMode, String cardId, String grade, Department? department, Position? position, Branch? branch, Shift? shift, Supervisor? supervisor
});


@override $DepartmentCopyWith<$Res>? get department;@override $PositionCopyWith<$Res>? get position;@override $BranchCopyWith<$Res>? get branch;@override $ShiftCopyWith<$Res>? get shift;@override $SupervisorCopyWith<$Res>? get supervisor;

}
/// @nodoc
class __$WorkInfoCopyWithImpl<$Res>
    implements _$WorkInfoCopyWith<$Res> {
  __$WorkInfoCopyWithImpl(this._self, this._then);

  final _WorkInfo _self;
  final $Res Function(_WorkInfo) _then;

/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeCode = null,Object? departmentId = null,Object? positionId = null,Object? branchId = null,Object? shiftId = null,Object? supervisorId = freezed,Object? employmentDate = freezed,Object? probationEndDate = freezed,Object? resignationDate = freezed,Object? employmentStatus = null,Object? employmentType = null,Object? workMode = null,Object? cardId = null,Object? grade = null,Object? department = freezed,Object? position = freezed,Object? branch = freezed,Object? shift = freezed,Object? supervisor = freezed,}) {
  return _then(_WorkInfo(
employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,departmentId: null == departmentId ? _self.departmentId : departmentId // ignore: cast_nullable_to_non_nullable
as String,positionId: null == positionId ? _self.positionId : positionId // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,supervisorId: freezed == supervisorId ? _self.supervisorId : supervisorId // ignore: cast_nullable_to_non_nullable
as String?,employmentDate: freezed == employmentDate ? _self.employmentDate : employmentDate // ignore: cast_nullable_to_non_nullable
as String?,probationEndDate: freezed == probationEndDate ? _self.probationEndDate : probationEndDate // ignore: cast_nullable_to_non_nullable
as String?,resignationDate: freezed == resignationDate ? _self.resignationDate : resignationDate // ignore: cast_nullable_to_non_nullable
as String?,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as String,employmentType: null == employmentType ? _self.employmentType : employmentType // ignore: cast_nullable_to_non_nullable
as String,workMode: null == workMode ? _self.workMode : workMode // ignore: cast_nullable_to_non_nullable
as String,cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as String,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as String,department: freezed == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Department?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as Shift?,supervisor: freezed == supervisor ? _self.supervisor : supervisor // ignore: cast_nullable_to_non_nullable
as Supervisor?,
  ));
}

/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentCopyWith<$Res>? get department {
    if (_self.department == null) {
    return null;
  }

  return $DepartmentCopyWith<$Res>(_self.department!, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $PositionCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftCopyWith<$Res>? get shift {
    if (_self.shift == null) {
    return null;
  }

  return $ShiftCopyWith<$Res>(_self.shift!, (value) {
    return _then(_self.copyWith(shift: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupervisorCopyWith<$Res>? get supervisor {
    if (_self.supervisor == null) {
    return null;
  }

  return $SupervisorCopyWith<$Res>(_self.supervisor!, (value) {
    return _then(_self.copyWith(supervisor: value));
  });
}
}

// dart format on
