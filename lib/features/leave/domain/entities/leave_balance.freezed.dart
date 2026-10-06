// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveBalance {

 String get id; String get companyId; String get employeeId; String get leaveTypeId; int get year; double get adjusted; double get allocated; double get carriedForward; double get pending; double get used; LeaveType get leaveType;
/// Create a copy of LeaveBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveBalanceCopyWith<LeaveBalance> get copyWith => _$LeaveBalanceCopyWithImpl<LeaveBalance>(this as LeaveBalance, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveBalance&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.leaveTypeId, leaveTypeId) || other.leaveTypeId == leaveTypeId)&&(identical(other.year, year) || other.year == year)&&(identical(other.adjusted, adjusted) || other.adjusted == adjusted)&&(identical(other.allocated, allocated) || other.allocated == allocated)&&(identical(other.carriedForward, carriedForward) || other.carriedForward == carriedForward)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.used, used) || other.used == used)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,employeeId,leaveTypeId,year,adjusted,allocated,carriedForward,pending,used,leaveType);

@override
String toString() {
  return 'LeaveBalance(id: $id, companyId: $companyId, employeeId: $employeeId, leaveTypeId: $leaveTypeId, year: $year, adjusted: $adjusted, allocated: $allocated, carriedForward: $carriedForward, pending: $pending, used: $used, leaveType: $leaveType)';
}


}

/// @nodoc
abstract mixin class $LeaveBalanceCopyWith<$Res>  {
  factory $LeaveBalanceCopyWith(LeaveBalance value, $Res Function(LeaveBalance) _then) = _$LeaveBalanceCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String employeeId, String leaveTypeId, int year, double adjusted, double allocated, double carriedForward, double pending, double used, LeaveType leaveType
});


$LeaveTypeCopyWith<$Res> get leaveType;

}
/// @nodoc
class _$LeaveBalanceCopyWithImpl<$Res>
    implements $LeaveBalanceCopyWith<$Res> {
  _$LeaveBalanceCopyWithImpl(this._self, this._then);

  final LeaveBalance _self;
  final $Res Function(LeaveBalance) _then;

/// Create a copy of LeaveBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? employeeId = null,Object? leaveTypeId = null,Object? year = null,Object? adjusted = null,Object? allocated = null,Object? carriedForward = null,Object? pending = null,Object? used = null,Object? leaveType = null,}) {
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
as double,leaveType: null == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as LeaveType,
  ));
}
/// Create a copy of LeaveBalance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveTypeCopyWith<$Res> get leaveType {
  
  return $LeaveTypeCopyWith<$Res>(_self.leaveType, (value) {
    return _then(_self.copyWith(leaveType: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaveBalance].
extension LeaveBalancePatterns on LeaveBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveBalance value)  $default,){
final _that = this;
switch (_that) {
case _LeaveBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveBalance value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String employeeId,  String leaveTypeId,  int year,  double adjusted,  double allocated,  double carriedForward,  double pending,  double used,  LeaveType leaveType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveBalance() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String employeeId,  String leaveTypeId,  int year,  double adjusted,  double allocated,  double carriedForward,  double pending,  double used,  LeaveType leaveType)  $default,) {final _that = this;
switch (_that) {
case _LeaveBalance():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String employeeId,  String leaveTypeId,  int year,  double adjusted,  double allocated,  double carriedForward,  double pending,  double used,  LeaveType leaveType)?  $default,) {final _that = this;
switch (_that) {
case _LeaveBalance() when $default != null:
return $default(_that.id,_that.companyId,_that.employeeId,_that.leaveTypeId,_that.year,_that.adjusted,_that.allocated,_that.carriedForward,_that.pending,_that.used,_that.leaveType);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveBalance extends LeaveBalance {
  const _LeaveBalance({required this.id, this.companyId = '', this.employeeId = '', this.leaveTypeId = '', this.year = 0, this.adjusted = 0, this.allocated = 0, this.carriedForward = 0, this.pending = 0, this.used = 0, required this.leaveType}): super._();
  

@override final  String id;
@override@JsonKey() final  String companyId;
@override@JsonKey() final  String employeeId;
@override@JsonKey() final  String leaveTypeId;
@override@JsonKey() final  int year;
@override@JsonKey() final  double adjusted;
@override@JsonKey() final  double allocated;
@override@JsonKey() final  double carriedForward;
@override@JsonKey() final  double pending;
@override@JsonKey() final  double used;
@override final  LeaveType leaveType;

/// Create a copy of LeaveBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveBalanceCopyWith<_LeaveBalance> get copyWith => __$LeaveBalanceCopyWithImpl<_LeaveBalance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveBalance&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.leaveTypeId, leaveTypeId) || other.leaveTypeId == leaveTypeId)&&(identical(other.year, year) || other.year == year)&&(identical(other.adjusted, adjusted) || other.adjusted == adjusted)&&(identical(other.allocated, allocated) || other.allocated == allocated)&&(identical(other.carriedForward, carriedForward) || other.carriedForward == carriedForward)&&(identical(other.pending, pending) || other.pending == pending)&&(identical(other.used, used) || other.used == used)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,employeeId,leaveTypeId,year,adjusted,allocated,carriedForward,pending,used,leaveType);

@override
String toString() {
  return 'LeaveBalance(id: $id, companyId: $companyId, employeeId: $employeeId, leaveTypeId: $leaveTypeId, year: $year, adjusted: $adjusted, allocated: $allocated, carriedForward: $carriedForward, pending: $pending, used: $used, leaveType: $leaveType)';
}


}

/// @nodoc
abstract mixin class _$LeaveBalanceCopyWith<$Res> implements $LeaveBalanceCopyWith<$Res> {
  factory _$LeaveBalanceCopyWith(_LeaveBalance value, $Res Function(_LeaveBalance) _then) = __$LeaveBalanceCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String employeeId, String leaveTypeId, int year, double adjusted, double allocated, double carriedForward, double pending, double used, LeaveType leaveType
});


@override $LeaveTypeCopyWith<$Res> get leaveType;

}
/// @nodoc
class __$LeaveBalanceCopyWithImpl<$Res>
    implements _$LeaveBalanceCopyWith<$Res> {
  __$LeaveBalanceCopyWithImpl(this._self, this._then);

  final _LeaveBalance _self;
  final $Res Function(_LeaveBalance) _then;

/// Create a copy of LeaveBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? employeeId = null,Object? leaveTypeId = null,Object? year = null,Object? adjusted = null,Object? allocated = null,Object? carriedForward = null,Object? pending = null,Object? used = null,Object? leaveType = null,}) {
  return _then(_LeaveBalance(
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
as double,leaveType: null == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as LeaveType,
  ));
}

/// Create a copy of LeaveBalance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveTypeCopyWith<$Res> get leaveType {
  
  return $LeaveTypeCopyWith<$Res>(_self.leaveType, (value) {
    return _then(_self.copyWith(leaveType: value));
  });
}
}

// dart format on
