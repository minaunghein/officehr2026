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

@JsonKey(name: '_id') String get id; String get empcodeprefix; int get empcode; int get cardid; int get grade; String get employmentdate; String get probationenddate; int get empstatus; bool get resigned; String get resigneddate; PositionModel get position; DepartmentModel get department; bool get status;@SupervisorConverter() SupervisorModel? get supervisorid;@ShiftConverter() ShiftModel? get shift; BranchModel get branch;
/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkInfoModelCopyWith<WorkInfoModel> get copyWith => _$WorkInfoModelCopyWithImpl<WorkInfoModel>(this as WorkInfoModel, _$identity);

  /// Serializes this WorkInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.empcodeprefix, empcodeprefix) || other.empcodeprefix == empcodeprefix)&&(identical(other.empcode, empcode) || other.empcode == empcode)&&(identical(other.cardid, cardid) || other.cardid == cardid)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.employmentdate, employmentdate) || other.employmentdate == employmentdate)&&(identical(other.probationenddate, probationenddate) || other.probationenddate == probationenddate)&&(identical(other.empstatus, empstatus) || other.empstatus == empstatus)&&(identical(other.resigned, resigned) || other.resigned == resigned)&&(identical(other.resigneddate, resigneddate) || other.resigneddate == resigneddate)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.status, status) || other.status == status)&&(identical(other.supervisorid, supervisorid) || other.supervisorid == supervisorid)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.branch, branch) || other.branch == branch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,empcodeprefix,empcode,cardid,grade,employmentdate,probationenddate,empstatus,resigned,resigneddate,position,department,status,supervisorid,shift,branch);

@override
String toString() {
  return 'WorkInfoModel(id: $id, empcodeprefix: $empcodeprefix, empcode: $empcode, cardid: $cardid, grade: $grade, employmentdate: $employmentdate, probationenddate: $probationenddate, empstatus: $empstatus, resigned: $resigned, resigneddate: $resigneddate, position: $position, department: $department, status: $status, supervisorid: $supervisorid, shift: $shift, branch: $branch)';
}


}

/// @nodoc
abstract mixin class $WorkInfoModelCopyWith<$Res>  {
  factory $WorkInfoModelCopyWith(WorkInfoModel value, $Res Function(WorkInfoModel) _then) = _$WorkInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String empcodeprefix, int empcode, int cardid, int grade, String employmentdate, String probationenddate, int empstatus, bool resigned, String resigneddate, PositionModel position, DepartmentModel department, bool status,@SupervisorConverter() SupervisorModel? supervisorid,@ShiftConverter() ShiftModel? shift, BranchModel branch
});


$PositionModelCopyWith<$Res> get position;$DepartmentModelCopyWith<$Res> get department;$SupervisorModelCopyWith<$Res>? get supervisorid;$ShiftModelCopyWith<$Res>? get shift;$BranchModelCopyWith<$Res> get branch;

}
/// @nodoc
class _$WorkInfoModelCopyWithImpl<$Res>
    implements $WorkInfoModelCopyWith<$Res> {
  _$WorkInfoModelCopyWithImpl(this._self, this._then);

  final WorkInfoModel _self;
  final $Res Function(WorkInfoModel) _then;

/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? empcodeprefix = null,Object? empcode = null,Object? cardid = null,Object? grade = null,Object? employmentdate = null,Object? probationenddate = null,Object? empstatus = null,Object? resigned = null,Object? resigneddate = null,Object? position = null,Object? department = null,Object? status = null,Object? supervisorid = freezed,Object? shift = freezed,Object? branch = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,empcodeprefix: null == empcodeprefix ? _self.empcodeprefix : empcodeprefix // ignore: cast_nullable_to_non_nullable
as String,empcode: null == empcode ? _self.empcode : empcode // ignore: cast_nullable_to_non_nullable
as int,cardid: null == cardid ? _self.cardid : cardid // ignore: cast_nullable_to_non_nullable
as int,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as int,employmentdate: null == employmentdate ? _self.employmentdate : employmentdate // ignore: cast_nullable_to_non_nullable
as String,probationenddate: null == probationenddate ? _self.probationenddate : probationenddate // ignore: cast_nullable_to_non_nullable
as String,empstatus: null == empstatus ? _self.empstatus : empstatus // ignore: cast_nullable_to_non_nullable
as int,resigned: null == resigned ? _self.resigned : resigned // ignore: cast_nullable_to_non_nullable
as bool,resigneddate: null == resigneddate ? _self.resigneddate : resigneddate // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionModel,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as DepartmentModel,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,supervisorid: freezed == supervisorid ? _self.supervisorid : supervisorid // ignore: cast_nullable_to_non_nullable
as SupervisorModel?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as BranchModel,
  ));
}
/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionModelCopyWith<$Res> get position {
  
  return $PositionModelCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentModelCopyWith<$Res> get department {
  
  return $DepartmentModelCopyWith<$Res>(_self.department, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupervisorModelCopyWith<$Res>? get supervisorid {
    if (_self.supervisorid == null) {
    return null;
  }

  return $SupervisorModelCopyWith<$Res>(_self.supervisorid!, (value) {
    return _then(_self.copyWith(supervisorid: value));
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
$BranchModelCopyWith<$Res> get branch {
  
  return $BranchModelCopyWith<$Res>(_self.branch, (value) {
    return _then(_self.copyWith(branch: value));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String empcodeprefix,  int empcode,  int cardid,  int grade,  String employmentdate,  String probationenddate,  int empstatus,  bool resigned,  String resigneddate,  PositionModel position,  DepartmentModel department,  bool status, @SupervisorConverter()  SupervisorModel? supervisorid, @ShiftConverter()  ShiftModel? shift,  BranchModel branch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkInfoModel() when $default != null:
return $default(_that.id,_that.empcodeprefix,_that.empcode,_that.cardid,_that.grade,_that.employmentdate,_that.probationenddate,_that.empstatus,_that.resigned,_that.resigneddate,_that.position,_that.department,_that.status,_that.supervisorid,_that.shift,_that.branch);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String empcodeprefix,  int empcode,  int cardid,  int grade,  String employmentdate,  String probationenddate,  int empstatus,  bool resigned,  String resigneddate,  PositionModel position,  DepartmentModel department,  bool status, @SupervisorConverter()  SupervisorModel? supervisorid, @ShiftConverter()  ShiftModel? shift,  BranchModel branch)  $default,) {final _that = this;
switch (_that) {
case _WorkInfoModel():
return $default(_that.id,_that.empcodeprefix,_that.empcode,_that.cardid,_that.grade,_that.employmentdate,_that.probationenddate,_that.empstatus,_that.resigned,_that.resigneddate,_that.position,_that.department,_that.status,_that.supervisorid,_that.shift,_that.branch);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String empcodeprefix,  int empcode,  int cardid,  int grade,  String employmentdate,  String probationenddate,  int empstatus,  bool resigned,  String resigneddate,  PositionModel position,  DepartmentModel department,  bool status, @SupervisorConverter()  SupervisorModel? supervisorid, @ShiftConverter()  ShiftModel? shift,  BranchModel branch)?  $default,) {final _that = this;
switch (_that) {
case _WorkInfoModel() when $default != null:
return $default(_that.id,_that.empcodeprefix,_that.empcode,_that.cardid,_that.grade,_that.employmentdate,_that.probationenddate,_that.empstatus,_that.resigned,_that.resigneddate,_that.position,_that.department,_that.status,_that.supervisorid,_that.shift,_that.branch);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkInfoModel implements WorkInfoModel {
  const _WorkInfoModel({@JsonKey(name: '_id') required this.id, required this.empcodeprefix, required this.empcode, required this.cardid, required this.grade, required this.employmentdate, required this.probationenddate, required this.empstatus, required this.resigned, required this.resigneddate, required this.position, required this.department, required this.status, @SupervisorConverter() this.supervisorid, @ShiftConverter() this.shift, required this.branch});
  factory _WorkInfoModel.fromJson(Map<String, dynamic> json) => _$WorkInfoModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String empcodeprefix;
@override final  int empcode;
@override final  int cardid;
@override final  int grade;
@override final  String employmentdate;
@override final  String probationenddate;
@override final  int empstatus;
@override final  bool resigned;
@override final  String resigneddate;
@override final  PositionModel position;
@override final  DepartmentModel department;
@override final  bool status;
@override@SupervisorConverter() final  SupervisorModel? supervisorid;
@override@ShiftConverter() final  ShiftModel? shift;
@override final  BranchModel branch;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.empcodeprefix, empcodeprefix) || other.empcodeprefix == empcodeprefix)&&(identical(other.empcode, empcode) || other.empcode == empcode)&&(identical(other.cardid, cardid) || other.cardid == cardid)&&(identical(other.grade, grade) || other.grade == grade)&&(identical(other.employmentdate, employmentdate) || other.employmentdate == employmentdate)&&(identical(other.probationenddate, probationenddate) || other.probationenddate == probationenddate)&&(identical(other.empstatus, empstatus) || other.empstatus == empstatus)&&(identical(other.resigned, resigned) || other.resigned == resigned)&&(identical(other.resigneddate, resigneddate) || other.resigneddate == resigneddate)&&(identical(other.position, position) || other.position == position)&&(identical(other.department, department) || other.department == department)&&(identical(other.status, status) || other.status == status)&&(identical(other.supervisorid, supervisorid) || other.supervisorid == supervisorid)&&(identical(other.shift, shift) || other.shift == shift)&&(identical(other.branch, branch) || other.branch == branch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,empcodeprefix,empcode,cardid,grade,employmentdate,probationenddate,empstatus,resigned,resigneddate,position,department,status,supervisorid,shift,branch);

@override
String toString() {
  return 'WorkInfoModel(id: $id, empcodeprefix: $empcodeprefix, empcode: $empcode, cardid: $cardid, grade: $grade, employmentdate: $employmentdate, probationenddate: $probationenddate, empstatus: $empstatus, resigned: $resigned, resigneddate: $resigneddate, position: $position, department: $department, status: $status, supervisorid: $supervisorid, shift: $shift, branch: $branch)';
}


}

/// @nodoc
abstract mixin class _$WorkInfoModelCopyWith<$Res> implements $WorkInfoModelCopyWith<$Res> {
  factory _$WorkInfoModelCopyWith(_WorkInfoModel value, $Res Function(_WorkInfoModel) _then) = __$WorkInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String empcodeprefix, int empcode, int cardid, int grade, String employmentdate, String probationenddate, int empstatus, bool resigned, String resigneddate, PositionModel position, DepartmentModel department, bool status,@SupervisorConverter() SupervisorModel? supervisorid,@ShiftConverter() ShiftModel? shift, BranchModel branch
});


@override $PositionModelCopyWith<$Res> get position;@override $DepartmentModelCopyWith<$Res> get department;@override $SupervisorModelCopyWith<$Res>? get supervisorid;@override $ShiftModelCopyWith<$Res>? get shift;@override $BranchModelCopyWith<$Res> get branch;

}
/// @nodoc
class __$WorkInfoModelCopyWithImpl<$Res>
    implements _$WorkInfoModelCopyWith<$Res> {
  __$WorkInfoModelCopyWithImpl(this._self, this._then);

  final _WorkInfoModel _self;
  final $Res Function(_WorkInfoModel) _then;

/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? empcodeprefix = null,Object? empcode = null,Object? cardid = null,Object? grade = null,Object? employmentdate = null,Object? probationenddate = null,Object? empstatus = null,Object? resigned = null,Object? resigneddate = null,Object? position = null,Object? department = null,Object? status = null,Object? supervisorid = freezed,Object? shift = freezed,Object? branch = null,}) {
  return _then(_WorkInfoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,empcodeprefix: null == empcodeprefix ? _self.empcodeprefix : empcodeprefix // ignore: cast_nullable_to_non_nullable
as String,empcode: null == empcode ? _self.empcode : empcode // ignore: cast_nullable_to_non_nullable
as int,cardid: null == cardid ? _self.cardid : cardid // ignore: cast_nullable_to_non_nullable
as int,grade: null == grade ? _self.grade : grade // ignore: cast_nullable_to_non_nullable
as int,employmentdate: null == employmentdate ? _self.employmentdate : employmentdate // ignore: cast_nullable_to_non_nullable
as String,probationenddate: null == probationenddate ? _self.probationenddate : probationenddate // ignore: cast_nullable_to_non_nullable
as String,empstatus: null == empstatus ? _self.empstatus : empstatus // ignore: cast_nullable_to_non_nullable
as int,resigned: null == resigned ? _self.resigned : resigned // ignore: cast_nullable_to_non_nullable
as bool,resigneddate: null == resigneddate ? _self.resigneddate : resigneddate // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as PositionModel,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as DepartmentModel,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool,supervisorid: freezed == supervisorid ? _self.supervisorid : supervisorid // ignore: cast_nullable_to_non_nullable
as SupervisorModel?,shift: freezed == shift ? _self.shift : shift // ignore: cast_nullable_to_non_nullable
as ShiftModel?,branch: null == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as BranchModel,
  ));
}

/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PositionModelCopyWith<$Res> get position {
  
  return $PositionModelCopyWith<$Res>(_self.position, (value) {
    return _then(_self.copyWith(position: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DepartmentModelCopyWith<$Res> get department {
  
  return $DepartmentModelCopyWith<$Res>(_self.department, (value) {
    return _then(_self.copyWith(department: value));
  });
}/// Create a copy of WorkInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SupervisorModelCopyWith<$Res>? get supervisorid {
    if (_self.supervisorid == null) {
    return null;
  }

  return $SupervisorModelCopyWith<$Res>(_self.supervisorid!, (value) {
    return _then(_self.copyWith(supervisorid: value));
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
$BranchModelCopyWith<$Res> get branch {
  
  return $BranchModelCopyWith<$Res>(_self.branch, (value) {
    return _then(_self.copyWith(branch: value));
  });
}
}

// dart format on
