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

 String get id; String get employeeCodePrefix; int get employeeCode; int get cardId; int get grade; String get employmentDate; String get probationEndDate; int get employmentStatus; bool get isResigned; String get resignedDate; Position get position; Department get department; bool get isActive; Supervisor? get supervisor; Shift? get shift; Branch get branch;
/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkInfoCopyWith<WorkInfo> get copyWith => _$WorkInfoCopyWithImpl<WorkInfo>(this as WorkInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeCodePrefix, employeeCodePrefix) || other.employeeCodePrefix == employeeCodePrefix)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.employmentDate, employmentDate) || other.employmentDate == employmentDate)&&(identical(other.probationEndDate, probationEndDate) || other.probationEndDate == probationEndDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.isResigned, isResigned) || other.isResigned == isResigned)&&(identical(other.resignedDate, resignedDate) || other.resignedDate == resignedDate)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.supervisor, supervisor) || other.supervisor == supervisor)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.branch, branch) || other.branch == branch));
}


@override
int get hashCode => Object.hash(runtimeType,id,employeeCodePrefix,employeeCode,cardId,grade,employmentDate,probationEndDate,employmentStatus,isResigned,resignedDate,position,department,isActive,supervisor,shift,branch);

@override
String toString() {
  return 'WorkInfo(id: $id, employeeCodePrefix: $employeeCodePrefix, employeeCode: $employeeCode, cardId: $cardId, grade: $grade, employmentDate: $employmentDate, probationEndDate: $probationEndDate, employmentStatus: $employmentStatus, isResigned: $isResigned, resignedDate: $resignedDate, position: $position, department: $department, isActive: $isActive, supervisor: $supervisor, shift: $shift, branch: $branch)';
}


}

/// @nodoc
abstract mixin class $WorkInfoCopyWith<$Res>  {
  factory $WorkInfoCopyWith(WorkInfo value, $Res Function(WorkInfo) _then) = _$WorkInfoCopyWithImpl;
@useResult
$Res call({
 String id, String employeeCodePrefix, int employeeCode, int cardId, int grade, String employmentDate, String probationEndDate, int employmentStatus, bool isResigned, String resignedDate, Position position, Department department, bool isActive, Supervisor? supervisor, Shift? shift, Branch branch
});


$PositionCopyWith<$Res> get position;$DepartmentCopyWith<$Res> get department;$SupervisorCopyWith<$Res>? get supervisor;$ShiftCopyWith<$Res>? get shift;$BranchCopyWith<$Res> get branch;

}
/// @nodoc
class _$WorkInfoCopyWithImpl<$Res>
    implements $WorkInfoCopyWith<$Res> {
  _$WorkInfoCopyWithImpl(this._self, this._then);

  final WorkInfo _self;
  final $Res Function(WorkInfo) _then;

/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeCodePrefix = null,Object? employeeCode = null,Object? cardId = null,Object? grade = null,Object? employmentDate = null,Object? probationEndDate = null,Object? employmentStatus = null,Object? isResigned = null,Object? resignedDate = null,Object? position = null,Object? department = null,Object? isActive = null,Object? supervisor = freezed,Object? shift = freezed,Object? branch = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeCodePrefix: null == employeeCodePrefix ? _self.employeeCodePrefix : employeeCodePrefix // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as int,cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as int,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as int,employmentDate: null == employmentDate ? _self.employmentDate : employmentDate // ignore: cast_nullable_to_non_nullable
as String,probationEndDate: null == probationEndDate ? _self.probationEndDate : probationEndDate // ignore: cast_nullable_to_non_nullable
as String,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as int,isResigned: null == isResigned ? _self.isResigned : isResigned // ignore: cast_nullable_to_non_nullable
as bool,resignedDate: null == resignedDate ? _self.resignedDate : resignedDate // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Department,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,supervisor: freezed == supervisor ? _self.supervisor : supervisor // ignore: cast_nullable_to_non_nullable
as Supervisor?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as Shift?,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch,
  ));
}
/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionCopyWith<$Res> get position {
  
  return $PositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentCopyWith<$Res> get department {
  
  return $DepartmentCopyWith<$Res>(_self.department, (value) {
    return _then(_self.copyWith(department: value));
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
$BranchCopyWith<$Res> get branch {
  
  return $BranchCopyWith<$Res>(_self.branch, (value) {
    return _then(_self.copyWith(branch: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeCodePrefix,  int employeeCode,  int cardId,  int grade,  String employmentDate,  String probationEndDate,  int employmentStatus,  bool isResigned,  String resignedDate,  Position position,  Department department,  bool isActive,  Supervisor? supervisor,  Shift? shift,  Branch branch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkInfo() when $default != null:
return $default(_that.id,_that.employeeCodePrefix,_that.employeeCode,_that.cardId,_that.grade,_that.employmentDate,_that.probationEndDate,_that.employmentStatus,_that.isResigned,_that.resignedDate,_that.position,_that.department,_that.isActive,_that.supervisor,_that.shift,_that.branch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeCodePrefix,  int employeeCode,  int cardId,  int grade,  String employmentDate,  String probationEndDate,  int employmentStatus,  bool isResigned,  String resignedDate,  Position position,  Department department,  bool isActive,  Supervisor? supervisor,  Shift? shift,  Branch branch)  $default,) {final _that = this;
switch (_that) {
case _WorkInfo():
return $default(_that.id,_that.employeeCodePrefix,_that.employeeCode,_that.cardId,_that.grade,_that.employmentDate,_that.probationEndDate,_that.employmentStatus,_that.isResigned,_that.resignedDate,_that.position,_that.department,_that.isActive,_that.supervisor,_that.shift,_that.branch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeCodePrefix,  int employeeCode,  int cardId,  int grade,  String employmentDate,  String probationEndDate,  int employmentStatus,  bool isResigned,  String resignedDate,  Position position,  Department department,  bool isActive,  Supervisor? supervisor,  Shift? shift,  Branch branch)?  $default,) {final _that = this;
switch (_that) {
case _WorkInfo() when $default != null:
return $default(_that.id,_that.employeeCodePrefix,_that.employeeCode,_that.cardId,_that.grade,_that.employmentDate,_that.probationEndDate,_that.employmentStatus,_that.isResigned,_that.resignedDate,_that.position,_that.department,_that.isActive,_that.supervisor,_that.shift,_that.branch);case _:
  return null;

}
}

}

/// @nodoc


class _WorkInfo implements WorkInfo {
  const _WorkInfo({required this.id, required this.employeeCodePrefix, required this.employeeCode, required this.cardId, required this.grade, required this.employmentDate, required this.probationEndDate, required this.employmentStatus, required this.isResigned, required this.resignedDate, required this.position, required this.department, required this.isActive, this.supervisor, this.shift, required this.branch});
  

@override final  String id;
@override final  String employeeCodePrefix;
@override final  int employeeCode;
@override final  int cardId;
@override final  int grade;
@override final  String employmentDate;
@override final  String probationEndDate;
@override final  int employmentStatus;
@override final  bool isResigned;
@override final  String resignedDate;
@override final  Position position;
@override final  Department department;
@override final  bool isActive;
@override final  Supervisor? supervisor;
@override final  Shift? shift;
@override final  Branch branch;

/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkInfoCopyWith<_WorkInfo> get copyWith => __$WorkInfoCopyWithImpl<_WorkInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeCodePrefix, employeeCodePrefix) || other.employeeCodePrefix == employeeCodePrefix)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.employmentDate, employmentDate) || other.employmentDate == employmentDate)&&(identical(other.probationEndDate, probationEndDate) || other.probationEndDate == probationEndDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.isResigned, isResigned) || other.isResigned == isResigned)&&(identical(other.resignedDate, resignedDate) || other.resignedDate == resignedDate)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.supervisor, supervisor) || other.supervisor == supervisor)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.branch, branch) || other.branch == branch));
}


@override
int get hashCode => Object.hash(runtimeType,id,employeeCodePrefix,employeeCode,cardId,grade,employmentDate,probationEndDate,employmentStatus,isResigned,resignedDate,position,department,isActive,supervisor,shift,branch);

@override
String toString() {
  return 'WorkInfo(id: $id, employeeCodePrefix: $employeeCodePrefix, employeeCode: $employeeCode, cardId: $cardId, grade: $grade, employmentDate: $employmentDate, probationEndDate: $probationEndDate, employmentStatus: $employmentStatus, isResigned: $isResigned, resignedDate: $resignedDate, position: $position, department: $department, isActive: $isActive, supervisor: $supervisor, shift: $shift, branch: $branch)';
}


}

/// @nodoc
abstract mixin class _$WorkInfoCopyWith<$Res> implements $WorkInfoCopyWith<$Res> {
  factory _$WorkInfoCopyWith(_WorkInfo value, $Res Function(_WorkInfo) _then) = __$WorkInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeCodePrefix, int employeeCode, int cardId, int grade, String employmentDate, String probationEndDate, int employmentStatus, bool isResigned, String resignedDate, Position position, Department department, bool isActive, Supervisor? supervisor, Shift? shift, Branch branch
});


@override $PositionCopyWith<$Res> get position;@override $DepartmentCopyWith<$Res> get department;@override $SupervisorCopyWith<$Res>? get supervisor;@override $ShiftCopyWith<$Res>? get shift;@override $BranchCopyWith<$Res> get branch;

}
/// @nodoc
class __$WorkInfoCopyWithImpl<$Res>
    implements _$WorkInfoCopyWith<$Res> {
  __$WorkInfoCopyWithImpl(this._self, this._then);

  final _WorkInfo _self;
  final $Res Function(_WorkInfo) _then;

/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeCodePrefix = null,Object? employeeCode = null,Object? cardId = null,Object? grade = null,Object? employmentDate = null,Object? probationEndDate = null,Object? employmentStatus = null,Object? isResigned = null,Object? resignedDate = null,Object? position = null,Object? department = null,Object? isActive = null,Object? supervisor = freezed,Object? shift = freezed,Object? branch = null,}) {
  return _then(_WorkInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeCodePrefix: null == employeeCodePrefix ? _self.employeeCodePrefix : employeeCodePrefix // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as int,cardId: null == cardId ? _self.cardId : cardId // ignore: cast_nullable_to_non_nullable
as int,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as int,employmentDate: null == employmentDate ? _self.employmentDate : employmentDate // ignore: cast_nullable_to_non_nullable
as String,probationEndDate: null == probationEndDate ? _self.probationEndDate : probationEndDate // ignore: cast_nullable_to_non_nullable
as String,employmentStatus: null == employmentStatus ? _self.employmentStatus : employmentStatus // ignore: cast_nullable_to_non_nullable
as int,isResigned: null == isResigned ? _self.isResigned : isResigned // ignore: cast_nullable_to_non_nullable
as bool,resignedDate: null == resignedDate ? _self.resignedDate : resignedDate // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as Position,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as Department,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,supervisor: freezed == supervisor ? _self.supervisor : supervisor // ignore: cast_nullable_to_non_nullable
as Supervisor?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as Shift?,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as Branch,
  ));
}

/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionCopyWith<$Res> get position {
  
  return $PositionCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of WorkInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentCopyWith<$Res> get department {
  
  return $DepartmentCopyWith<$Res>(_self.department, (value) {
    return _then(_self.copyWith(department: value));
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
$BranchCopyWith<$Res> get branch {
  
  return $BranchCopyWith<$Res>(_self.branch, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}

// dart format on
