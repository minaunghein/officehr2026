// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkInfoModel {

@JsonKey(name: 'employee_code') String get employeeCode;@JsonKey(name: 'department_id') String get departmentId;@JsonKey(name: 'position_id') String get positionId;@JsonKey(name: 'branch_id') String get branchId;@JsonKey(name: 'shift_id') String get shiftId;@JsonKey(name: 'supervisor_id') String? get supervisorId;@JsonKey(name: 'employment_date') String? get employmentDate;@JsonKey(name: 'probation_end_date') String? get probationEndDate;@JsonKey(name: 'resignation_date') String? get resignationDate;@JsonKey(name: 'employment_status') String get employmentStatus;@JsonKey(name: 'employment_type') String get employmentType;@JsonKey(name: 'work_mode') String get workMode;@JsonKey(name: 'card_id') String get cardId; String get grade; DepartmentModel? get department; PositionModel? get position; BranchModel? get branch; ShiftModel? get shift; SupervisorModel? get supervisor;
/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkInfoModelCopyWith<WorkInfoModel> get copyWith => _$WorkInfoModelCopyWithImpl<WorkInfoModel>(this as WorkInfoModel, _$identity);

  /// Serializes this WorkInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkInfoModel&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.supervisorId, supervisorId) || other.supervisorId == supervisorId)&&(identical(other.employmentDate, employmentDate) || other.employmentDate == employmentDate)&&(identical(other.probationEndDate, probationEndDate) || other.probationEndDate == probationEndDate)&&(identical(other.resignationDate, resignationDate) || other.resignationDate == resignationDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.workMode, workMode) || other.workMode == workMode)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.department, department) || other.department == department)&&(identical(other.position, position) || other.position == position)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.supervisor, supervisor) || other.supervisor == supervisor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,employeeCode,departmentId,positionId,branchId,shiftId,supervisorId,employmentDate,probationEndDate,resignationDate,employmentStatus,employmentType,workMode,cardId,grade,department,position,branch,shift,supervisor]);

@override
String toString() {
  return 'WorkInfoModel(employeeCode: $employeeCode, departmentId: $departmentId, positionId: $positionId, branchId: $branchId, shiftId: $shiftId, supervisorId: $supervisorId, employmentDate: $employmentDate, probationEndDate: $probationEndDate, resignationDate: $resignationDate, employmentStatus: $employmentStatus, employmentType: $employmentType, workMode: $workMode, cardId: $cardId, grade: $grade, department: $department, position: $position, branch: $branch, shift: $shift, supervisor: $supervisor)';
}


}

/// @nodoc
abstract mixin class $WorkInfoModelCopyWith<$Res>  {
  factory $WorkInfoModelCopyWith(WorkInfoModel value, $Res Function(WorkInfoModel) _then) = _$WorkInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'employee_code') String employeeCode,@JsonKey(name: 'department_id') String departmentId,@JsonKey(name: 'position_id') String positionId,@JsonKey(name: 'branch_id') String branchId,@JsonKey(name: 'shift_id') String shiftId,@JsonKey(name: 'supervisor_id') String? supervisorId,@JsonKey(name: 'employment_date') String? employmentDate,@JsonKey(name: 'probation_end_date') String? probationEndDate,@JsonKey(name: 'resignation_date') String? resignationDate,@JsonKey(name: 'employment_status') String employmentStatus,@JsonKey(name: 'employment_type') String employmentType,@JsonKey(name: 'work_mode') String workMode,@JsonKey(name: 'card_id') String cardId, String grade, DepartmentModel? department, PositionModel? position, BranchModel? branch, ShiftModel? shift, SupervisorModel? supervisor
});


$DepartmentModelCopyWith<$Res>? get department;$PositionModelCopyWith<$Res>? get position;$BranchModelCopyWith<$Res>? get branch;$ShiftModelCopyWith<$Res>? get shift;$SupervisorModelCopyWith<$Res>? get supervisor;

}
/// @nodoc
class _$WorkInfoModelCopyWithImpl<$Res>
    implements $WorkInfoModelCopyWith<$Res> {
  _$WorkInfoModelCopyWithImpl(this._self, this._then);

  final WorkInfoModel _self;
  final $Res Function(WorkInfoModel) _then;

/// Create a copy of WorkInfoModel
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
as DepartmentModel?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionModel?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as BranchModel?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,supervisor: freezed == supervisor ? _self.supervisor : supervisor // ignore: cast_nullable_to_non_nullable
as SupervisorModel?,
  ));
}
/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentModelCopyWith<$Res>? get department {
    if (_self.department == null) {
    return null;
  }

  return $DepartmentModelCopyWith<$Res>(_self.department!, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionModelCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $PositionModelCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchModelCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchModelCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<$Res>? get shift {
    if (_self.shift == null) {
    return null;
  }

  return $ShiftModelCopyWith<$Res>(_self.shift!, (value) {
    return _then(_self.copyWith(shift: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupervisorModelCopyWith<$Res>? get supervisor {
    if (_self.supervisor == null) {
    return null;
  }

  return $SupervisorModelCopyWith<$Res>(_self.supervisor!, (value) {
    return _then(_self.copyWith(supervisor: value));
  });
}
}


/// Adds pattern-matching-related methods to [WorkInfoModel].
extension WorkInfoModelPatterns on WorkInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_code')  String employeeCode, @JsonKey(name: 'department_id')  String departmentId, @JsonKey(name: 'position_id')  String positionId, @JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'supervisor_id')  String? supervisorId, @JsonKey(name: 'employment_date')  String? employmentDate, @JsonKey(name: 'probation_end_date')  String? probationEndDate, @JsonKey(name: 'resignation_date')  String? resignationDate, @JsonKey(name: 'employment_status')  String employmentStatus, @JsonKey(name: 'employment_type')  String employmentType, @JsonKey(name: 'work_mode')  String workMode, @JsonKey(name: 'card_id')  String cardId,  String grade,  DepartmentModel? department,  PositionModel? position,  BranchModel? branch,  ShiftModel? shift,  SupervisorModel? supervisor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkInfoModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'employee_code')  String employeeCode, @JsonKey(name: 'department_id')  String departmentId, @JsonKey(name: 'position_id')  String positionId, @JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'supervisor_id')  String? supervisorId, @JsonKey(name: 'employment_date')  String? employmentDate, @JsonKey(name: 'probation_end_date')  String? probationEndDate, @JsonKey(name: 'resignation_date')  String? resignationDate, @JsonKey(name: 'employment_status')  String employmentStatus, @JsonKey(name: 'employment_type')  String employmentType, @JsonKey(name: 'work_mode')  String workMode, @JsonKey(name: 'card_id')  String cardId,  String grade,  DepartmentModel? department,  PositionModel? position,  BranchModel? branch,  ShiftModel? shift,  SupervisorModel? supervisor)  $default,) {final _that = this;
switch (_that) {
case _WorkInfoModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'employee_code')  String employeeCode, @JsonKey(name: 'department_id')  String departmentId, @JsonKey(name: 'position_id')  String positionId, @JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'shift_id')  String shiftId, @JsonKey(name: 'supervisor_id')  String? supervisorId, @JsonKey(name: 'employment_date')  String? employmentDate, @JsonKey(name: 'probation_end_date')  String? probationEndDate, @JsonKey(name: 'resignation_date')  String? resignationDate, @JsonKey(name: 'employment_status')  String employmentStatus, @JsonKey(name: 'employment_type')  String employmentType, @JsonKey(name: 'work_mode')  String workMode, @JsonKey(name: 'card_id')  String cardId,  String grade,  DepartmentModel? department,  PositionModel? position,  BranchModel? branch,  ShiftModel? shift,  SupervisorModel? supervisor)?  $default,) {final _that = this;
switch (_that) {
case _WorkInfoModel() when $default != null:
return $default(_that.employeeCode,_that.departmentId,_that.positionId,_that.branchId,_that.shiftId,_that.supervisorId,_that.employmentDate,_that.probationEndDate,_that.resignationDate,_that.employmentStatus,_that.employmentType,_that.workMode,_that.cardId,_that.grade,_that.department,_that.position,_that.branch,_that.shift,_that.supervisor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkInfoModel extends WorkInfoModel {
  const _WorkInfoModel({@JsonKey(name: 'employee_code') this.employeeCode = '', @JsonKey(name: 'department_id') this.departmentId = '', @JsonKey(name: 'position_id') this.positionId = '', @JsonKey(name: 'branch_id') this.branchId = '', @JsonKey(name: 'shift_id') this.shiftId = '', @JsonKey(name: 'supervisor_id') this.supervisorId, @JsonKey(name: 'employment_date') this.employmentDate, @JsonKey(name: 'probation_end_date') this.probationEndDate, @JsonKey(name: 'resignation_date') this.resignationDate, @JsonKey(name: 'employment_status') this.employmentStatus = '', @JsonKey(name: 'employment_type') this.employmentType = '', @JsonKey(name: 'work_mode') this.workMode = '', @JsonKey(name: 'card_id') this.cardId = '', this.grade = '', this.department, this.position, this.branch, this.shift, this.supervisor}): super._();
  factory _WorkInfoModel.fromJson(Map<String, dynamic> json) => _$WorkInfoModelFromJson(json);

@override@JsonKey(name: 'employee_code') final  String employeeCode;
@override@JsonKey(name: 'department_id') final  String departmentId;
@override@JsonKey(name: 'position_id') final  String positionId;
@override@JsonKey(name: 'branch_id') final  String branchId;
@override@JsonKey(name: 'shift_id') final  String shiftId;
@override@JsonKey(name: 'supervisor_id') final  String? supervisorId;
@override@JsonKey(name: 'employment_date') final  String? employmentDate;
@override@JsonKey(name: 'probation_end_date') final  String? probationEndDate;
@override@JsonKey(name: 'resignation_date') final  String? resignationDate;
@override@JsonKey(name: 'employment_status') final  String employmentStatus;
@override@JsonKey(name: 'employment_type') final  String employmentType;
@override@JsonKey(name: 'work_mode') final  String workMode;
@override@JsonKey(name: 'card_id') final  String cardId;
@override@JsonKey() final  String grade;
@override final  DepartmentModel? department;
@override final  PositionModel? position;
@override final  BranchModel? branch;
@override final  ShiftModel? shift;
@override final  SupervisorModel? supervisor;

/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkInfoModelCopyWith<_WorkInfoModel> get copyWith => __$WorkInfoModelCopyWithImpl<_WorkInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkInfoModel&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.departmentId, departmentId) || other.departmentId == departmentId)&&(identical(other.positionId, positionId) || other.positionId == positionId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.supervisorId, supervisorId) || other.supervisorId == supervisorId)&&(identical(other.employmentDate, employmentDate) || other.employmentDate == employmentDate)&&(identical(other.probationEndDate, probationEndDate) || other.probationEndDate == probationEndDate)&&(identical(other.resignationDate, resignationDate) || other.resignationDate == resignationDate)&&(identical(other.employmentStatus, employmentStatus) || other.employmentStatus == employmentStatus)&&(identical(other.employmentType, employmentType) || other.employmentType == employmentType)&&(identical(other.workMode, workMode) || other.workMode == workMode)&&(identical(other.cardId, cardId) || other.cardId == cardId)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.department, department) || other.department == department)&&(identical(other.position, position) || other.position == position)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.supervisor, supervisor) || other.supervisor == supervisor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,employeeCode,departmentId,positionId,branchId,shiftId,supervisorId,employmentDate,probationEndDate,resignationDate,employmentStatus,employmentType,workMode,cardId,grade,department,position,branch,shift,supervisor]);

@override
String toString() {
  return 'WorkInfoModel(employeeCode: $employeeCode, departmentId: $departmentId, positionId: $positionId, branchId: $branchId, shiftId: $shiftId, supervisorId: $supervisorId, employmentDate: $employmentDate, probationEndDate: $probationEndDate, resignationDate: $resignationDate, employmentStatus: $employmentStatus, employmentType: $employmentType, workMode: $workMode, cardId: $cardId, grade: $grade, department: $department, position: $position, branch: $branch, shift: $shift, supervisor: $supervisor)';
}


}

/// @nodoc
abstract mixin class _$WorkInfoModelCopyWith<$Res> implements $WorkInfoModelCopyWith<$Res> {
  factory _$WorkInfoModelCopyWith(_WorkInfoModel value, $Res Function(_WorkInfoModel) _then) = __$WorkInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'employee_code') String employeeCode,@JsonKey(name: 'department_id') String departmentId,@JsonKey(name: 'position_id') String positionId,@JsonKey(name: 'branch_id') String branchId,@JsonKey(name: 'shift_id') String shiftId,@JsonKey(name: 'supervisor_id') String? supervisorId,@JsonKey(name: 'employment_date') String? employmentDate,@JsonKey(name: 'probation_end_date') String? probationEndDate,@JsonKey(name: 'resignation_date') String? resignationDate,@JsonKey(name: 'employment_status') String employmentStatus,@JsonKey(name: 'employment_type') String employmentType,@JsonKey(name: 'work_mode') String workMode,@JsonKey(name: 'card_id') String cardId, String grade, DepartmentModel? department, PositionModel? position, BranchModel? branch, ShiftModel? shift, SupervisorModel? supervisor
});


@override $DepartmentModelCopyWith<$Res>? get department;@override $PositionModelCopyWith<$Res>? get position;@override $BranchModelCopyWith<$Res>? get branch;@override $ShiftModelCopyWith<$Res>? get shift;@override $SupervisorModelCopyWith<$Res>? get supervisor;

}
/// @nodoc
class __$WorkInfoModelCopyWithImpl<$Res>
    implements _$WorkInfoModelCopyWith<$Res> {
  __$WorkInfoModelCopyWithImpl(this._self, this._then);

  final _WorkInfoModel _self;
  final $Res Function(_WorkInfoModel) _then;

/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employeeCode = null,Object? departmentId = null,Object? positionId = null,Object? branchId = null,Object? shiftId = null,Object? supervisorId = freezed,Object? employmentDate = freezed,Object? probationEndDate = freezed,Object? resignationDate = freezed,Object? employmentStatus = null,Object? employmentType = null,Object? workMode = null,Object? cardId = null,Object? grade = null,Object? department = freezed,Object? position = freezed,Object? branch = freezed,Object? shift = freezed,Object? supervisor = freezed,}) {
  return _then(_WorkInfoModel(
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
as DepartmentModel?,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionModel?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as BranchModel?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,supervisor: freezed == supervisor ? _self.supervisor : supervisor // ignore: cast_nullable_to_non_nullable
as SupervisorModel?,
  ));
}

/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentModelCopyWith<$Res>? get department {
    if (_self.department == null) {
    return null;
  }

  return $DepartmentModelCopyWith<$Res>(_self.department!, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionModelCopyWith<$Res>? get position {
    if (_self.position == null) {
    return null;
  }

  return $PositionModelCopyWith<$Res>(_self.position!, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BranchModelCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $BranchModelCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<$Res>? get shift {
    if (_self.shift == null) {
    return null;
  }

  return $ShiftModelCopyWith<$Res>(_self.shift!, (value) {
    return _then(_self.copyWith(shift: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupervisorModelCopyWith<$Res>? get supervisor {
    if (_self.supervisor == null) {
    return null;
  }

  return $SupervisorModelCopyWith<$Res>(_self.supervisor!, (value) {
    return _then(_self.copyWith(supervisor: value));
  });
}
}

// dart format on
