// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveBalanceModel {

@JsonKey(readValue: readMongoId) String get id;@JsonKey(name: 'company_id') String get companyId;@JsonKey(name: 'employee_id') String get employeeId;@JsonKey(name: 'leave_type_id') String get leaveTypeId; int get year; double get adjusted; double get allocated;@JsonKey(name: 'carried_forward') double get carriedForward; double get pending; double get used;@JsonKey(name: 'leave_type') LeaveTypeModel? get leaveType;
/// Create a copy of LeaveBalanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveBalanceModelCopyWith<LeaveBalanceModel> get copyWith => _$LeaveBalanceModelCopyWithImpl<LeaveBalanceModel>(this as LeaveBalanceModel, _$identity);

  /// Serializes this LeaveBalanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveBalanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.leaveTypeId, leaveTypeId) || other.leaveTypeId == leaveTypeId)&&(identical(other.year, year) || other.year == year)&&(identical(other.adjusted, adjusted) || other.adjusted == adjusted)&&(identical(other.allocated, allocated) || other.allocated == allocated)&&(identical(other.carriedForward, carriedForward) || other.carriedForward == carriedForward)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.used, used) || other.used == used)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,employeeId,leaveTypeId,year,adjusted,allocated,carriedForward,pending,used,leaveType);

@override
String toString() {
  return 'LeaveBalanceModel(id: $id, companyId: $companyId, employeeId: $employeeId, leaveTypeId: $leaveTypeId, year: $year, adjusted: $adjusted, allocated: $allocated, carriedForward: $carriedForward, pending: $pending, used: $used, leaveType: $leaveType)';
}


}

/// @nodoc
abstract mixin class $LeaveBalanceModelCopyWith<$Res>  {
  factory $LeaveBalanceModelCopyWith(LeaveBalanceModel value, $Res Function(LeaveBalanceModel) _then) = _$LeaveBalanceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: readMongoId) String id,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'leave_type_id') String leaveTypeId, int year, double adjusted, double allocated,@JsonKey(name: 'carried_forward') double carriedForward, double pending, double used,@JsonKey(name: 'leave_type') LeaveTypeModel? leaveType
});


$LeaveTypeModelCopyWith<$Res>? get leaveType;

}
/// @nodoc
class _$LeaveBalanceModelCopyWithImpl<$Res>
    implements $LeaveBalanceModelCopyWith<$Res> {
  _$LeaveBalanceModelCopyWithImpl(this._self, this._then);

  final LeaveBalanceModel _self;
  final $Res Function(LeaveBalanceModel) _then;

/// Create a copy of LeaveBalanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? employeeId = null,Object? leaveTypeId = null,Object? year = null,Object? adjusted = null,Object? allocated = null,Object? carriedForward = null,Object? pending = null,Object? used = null,Object? leaveType = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,leaveTypeId: null == leaveTypeId ? _self.leaveTypeId : leaveTypeId // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,adjusted: null == adjusted ? _self.adjusted : adjusted // ignore: cast_nullable_to_non_nullable
as double,allocated: null == allocated ? _self.allocated : allocated // ignore: cast_nullable_to_non_nullable
as double,carriedForward: null == carriedForward ? _self.carriedForward : carriedForward // ignore: cast_nullable_to_non_nullable
as double,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as double,used: null == used ? _self.used : used // ignore: cast_nullable_to_non_nullable
as double,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as LeaveTypeModel?,
  ));
}
/// Create a copy of LeaveBalanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveTypeModelCopyWith<$Res>? get leaveType {
    if (_self.leaveType == null) {
    return null;
  }

  return $LeaveTypeModelCopyWith<$Res>(_self.leaveType!, (value) {
    return _then(_self.copyWith(leaveType: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaveBalanceModel].
extension LeaveBalanceModelPatterns on LeaveBalanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveBalanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveBalanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveBalanceModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaveBalanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveBalanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveBalanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'leave_type_id')  String leaveTypeId,  int year,  double adjusted,  double allocated, @JsonKey(name: 'carried_forward')  double carriedForward,  double pending,  double used, @JsonKey(name: 'leave_type')  LeaveTypeModel? leaveType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveBalanceModel() when $default != null:
return $default(_that.id,_that.companyId,_that.employeeId,_that.leaveTypeId,_that.year,_that.adjusted,_that.allocated,_that.carriedForward,_that.pending,_that.used,_that.leaveType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'leave_type_id')  String leaveTypeId,  int year,  double adjusted,  double allocated, @JsonKey(name: 'carried_forward')  double carriedForward,  double pending,  double used, @JsonKey(name: 'leave_type')  LeaveTypeModel? leaveType)  $default,) {final _that = this;
switch (_that) {
case _LeaveBalanceModel():
return $default(_that.id,_that.companyId,_that.employeeId,_that.leaveTypeId,_that.year,_that.adjusted,_that.allocated,_that.carriedForward,_that.pending,_that.used,_that.leaveType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'leave_type_id')  String leaveTypeId,  int year,  double adjusted,  double allocated, @JsonKey(name: 'carried_forward')  double carriedForward,  double pending,  double used, @JsonKey(name: 'leave_type')  LeaveTypeModel? leaveType)?  $default,) {final _that = this;
switch (_that) {
case _LeaveBalanceModel() when $default != null:
return $default(_that.id,_that.companyId,_that.employeeId,_that.leaveTypeId,_that.year,_that.adjusted,_that.allocated,_that.carriedForward,_that.pending,_that.used,_that.leaveType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveBalanceModel extends LeaveBalanceModel {
  const _LeaveBalanceModel({@JsonKey(readValue: readMongoId) this.id = '', @JsonKey(name: 'company_id') this.companyId = '', @JsonKey(name: 'employee_id') this.employeeId = '', @JsonKey(name: 'leave_type_id') this.leaveTypeId = '', this.year = 0, this.adjusted = 0, this.allocated = 0, @JsonKey(name: 'carried_forward') this.carriedForward = 0, this.pending = 0, this.used = 0, @JsonKey(name: 'leave_type') this.leaveType}): super._();
  factory _LeaveBalanceModel.fromJson(Map<String, dynamic> json) => _$LeaveBalanceModelFromJson(json);

@override@JsonKey(readValue: readMongoId) final  String id;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(name: 'employee_id') final  String employeeId;
@override@JsonKey(name: 'leave_type_id') final  String leaveTypeId;
@override@JsonKey() final  int year;
@override@JsonKey() final  double adjusted;
@override@JsonKey() final  double allocated;
@override@JsonKey(name: 'carried_forward') final  double carriedForward;
@override@JsonKey() final  double pending;
@override@JsonKey() final  double used;
@override@JsonKey(name: 'leave_type') final  LeaveTypeModel? leaveType;

/// Create a copy of LeaveBalanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveBalanceModelCopyWith<_LeaveBalanceModel> get copyWith => __$LeaveBalanceModelCopyWithImpl<_LeaveBalanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveBalanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveBalanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.leaveTypeId, leaveTypeId) || other.leaveTypeId == leaveTypeId)&&(identical(other.year, year) || other.year == year)&&(identical(other.adjusted, adjusted) || other.adjusted == adjusted)&&(identical(other.allocated, allocated) || other.allocated == allocated)&&(identical(other.carriedForward, carriedForward) || other.carriedForward == carriedForward)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.used, used) || other.used == used)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,employeeId,leaveTypeId,year,adjusted,allocated,carriedForward,pending,used,leaveType);

@override
String toString() {
  return 'LeaveBalanceModel(id: $id, companyId: $companyId, employeeId: $employeeId, leaveTypeId: $leaveTypeId, year: $year, adjusted: $adjusted, allocated: $allocated, carriedForward: $carriedForward, pending: $pending, used: $used, leaveType: $leaveType)';
}


}

/// @nodoc
abstract mixin class _$LeaveBalanceModelCopyWith<$Res> implements $LeaveBalanceModelCopyWith<$Res> {
  factory _$LeaveBalanceModelCopyWith(_LeaveBalanceModel value, $Res Function(_LeaveBalanceModel) _then) = __$LeaveBalanceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: readMongoId) String id,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'leave_type_id') String leaveTypeId, int year, double adjusted, double allocated,@JsonKey(name: 'carried_forward') double carriedForward, double pending, double used,@JsonKey(name: 'leave_type') LeaveTypeModel? leaveType
});


@override $LeaveTypeModelCopyWith<$Res>? get leaveType;

}
/// @nodoc
class __$LeaveBalanceModelCopyWithImpl<$Res>
    implements _$LeaveBalanceModelCopyWith<$Res> {
  __$LeaveBalanceModelCopyWithImpl(this._self, this._then);

  final _LeaveBalanceModel _self;
  final $Res Function(_LeaveBalanceModel) _then;

/// Create a copy of LeaveBalanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? employeeId = null,Object? leaveTypeId = null,Object? year = null,Object? adjusted = null,Object? allocated = null,Object? carriedForward = null,Object? pending = null,Object? used = null,Object? leaveType = freezed,}) {
  return _then(_LeaveBalanceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,leaveTypeId: null == leaveTypeId ? _self.leaveTypeId : leaveTypeId // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,adjusted: null == adjusted ? _self.adjusted : adjusted // ignore: cast_nullable_to_non_nullable
as double,allocated: null == allocated ? _self.allocated : allocated // ignore: cast_nullable_to_non_nullable
as double,carriedForward: null == carriedForward ? _self.carriedForward : carriedForward // ignore: cast_nullable_to_non_nullable
as double,pending: null == pending ? _self.pending : pending // ignore: cast_nullable_to_non_nullable
as double,used: null == used ? _self.used : used // ignore: cast_nullable_to_non_nullable
as double,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as LeaveTypeModel?,
  ));
}

/// Create a copy of LeaveBalanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveTypeModelCopyWith<$Res>? get leaveType {
    if (_self.leaveType == null) {
    return null;
  }

  return $LeaveTypeModelCopyWith<$Res>(_self.leaveType!, (value) {
    return _then(_self.copyWith(leaveType: value));
  });
}
}

// dart format on
