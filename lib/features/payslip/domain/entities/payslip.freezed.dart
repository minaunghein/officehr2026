// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Payslip {

 String get id; UserDetails get user; String get companyId; String? get salaryId; num get salaryPerDay; num get salaryLate; num get salaryUnder; num get salaryOt1; num get salaryOt2; num get salaryOt3; num get salaryOt; num get salarySsb; num get unpaidLeave; num get unpaidDeduction; num get salaryBenefit; num get loan; num get bonus; num get salaryDeduction; num get salaryAttendance; num get salaryInTime; num get finalSalary; String? get salaryStartDate; String? get salaryEndDate; bool get isDeleted; bool get isAcknowledged; List<dynamic> get deductionTypes; List<dynamic> get benefitTypes; String? get createdAt; String? get updatedAt;
/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayslipCopyWith<Payslip> get copyWith => _$PayslipCopyWithImpl<Payslip>(this as Payslip, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Payslip&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.salaryId, salaryId) || other.salaryId == salaryId)&&(identical(other.salaryPerDay, salaryPerDay) || other.salaryPerDay == salaryPerDay)&&(identical(other.salaryLate, salaryLate) || other.salaryLate == salaryLate)&&(identical(other.salaryUnder, salaryUnder) || other.salaryUnder == salaryUnder)&&(identical(other.salaryOt1, salaryOt1) || other.salaryOt1 == salaryOt1)&&(identical(other.salaryOt2, salaryOt2) || other.salaryOt2 == salaryOt2)&&(identical(other.salaryOt3, salaryOt3) || other.salaryOt3 == salaryOt3)&&(identical(other.salaryOt, salaryOt) || other.salaryOt == salaryOt)&&(identical(other.salarySsb, salarySsb) || other.salarySsb == salarySsb)&&(identical(other.unpaidLeave, unpaidLeave) || other.unpaidLeave == unpaidLeave)&&(identical(other.unpaidDeduction, unpaidDeduction) || other.unpaidDeduction == unpaidDeduction)&&(identical(other.salaryBenefit, salaryBenefit) || other.salaryBenefit == salaryBenefit)&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.salaryDeduction, salaryDeduction) || other.salaryDeduction == salaryDeduction)&&(identical(other.salaryAttendance, salaryAttendance) || other.salaryAttendance == salaryAttendance)&&(identical(other.salaryInTime, salaryInTime) || other.salaryInTime == salaryInTime)&&(identical(other.finalSalary, finalSalary) || other.finalSalary == finalSalary)&&(identical(other.salaryStartDate, salaryStartDate) || other.salaryStartDate == salaryStartDate)&&(identical(other.salaryEndDate, salaryEndDate) || other.salaryEndDate == salaryEndDate)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isAcknowledged, isAcknowledged) || other.isAcknowledged == isAcknowledged)&&const DeepCollectionEquality().equals(other.deductionTypes, deductionTypes)&&const DeepCollectionEquality().equals(other.benefitTypes, benefitTypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,user,companyId,salaryId,salaryPerDay,salaryLate,salaryUnder,salaryOt1,salaryOt2,salaryOt3,salaryOt,salarySsb,unpaidLeave,unpaidDeduction,salaryBenefit,loan,bonus,salaryDeduction,salaryAttendance,salaryInTime,finalSalary,salaryStartDate,salaryEndDate,isDeleted,isAcknowledged,const DeepCollectionEquality().hash(deductionTypes),const DeepCollectionEquality().hash(benefitTypes),createdAt,updatedAt]);

@override
String toString() {
  return 'Payslip(id: $id, user: $user, companyId: $companyId, salaryId: $salaryId, salaryPerDay: $salaryPerDay, salaryLate: $salaryLate, salaryUnder: $salaryUnder, salaryOt1: $salaryOt1, salaryOt2: $salaryOt2, salaryOt3: $salaryOt3, salaryOt: $salaryOt, salarySsb: $salarySsb, unpaidLeave: $unpaidLeave, unpaidDeduction: $unpaidDeduction, salaryBenefit: $salaryBenefit, loan: $loan, bonus: $bonus, salaryDeduction: $salaryDeduction, salaryAttendance: $salaryAttendance, salaryInTime: $salaryInTime, finalSalary: $finalSalary, salaryStartDate: $salaryStartDate, salaryEndDate: $salaryEndDate, isDeleted: $isDeleted, isAcknowledged: $isAcknowledged, deductionTypes: $deductionTypes, benefitTypes: $benefitTypes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PayslipCopyWith<$Res>  {
  factory $PayslipCopyWith(Payslip value, $Res Function(Payslip) _then) = _$PayslipCopyWithImpl;
@useResult
$Res call({
 String id, UserDetails user, String companyId, String? salaryId, num salaryPerDay, num salaryLate, num salaryUnder, num salaryOt1, num salaryOt2, num salaryOt3, num salaryOt, num salarySsb, num unpaidLeave, num unpaidDeduction, num salaryBenefit, num loan, num bonus, num salaryDeduction, num salaryAttendance, num salaryInTime, num finalSalary, String? salaryStartDate, String? salaryEndDate, bool isDeleted, bool isAcknowledged, List<dynamic> deductionTypes, List<dynamic> benefitTypes, String? createdAt, String? updatedAt
});


$UserDetailsCopyWith<$Res> get user;

}
/// @nodoc
class _$PayslipCopyWithImpl<$Res>
    implements $PayslipCopyWith<$Res> {
  _$PayslipCopyWithImpl(this._self, this._then);

  final Payslip _self;
  final $Res Function(Payslip) _then;

/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = null,Object? companyId = null,Object? salaryId = freezed,Object? salaryPerDay = null,Object? salaryLate = null,Object? salaryUnder = null,Object? salaryOt1 = null,Object? salaryOt2 = null,Object? salaryOt3 = null,Object? salaryOt = null,Object? salarySsb = null,Object? unpaidLeave = null,Object? unpaidDeduction = null,Object? salaryBenefit = null,Object? loan = null,Object? bonus = null,Object? salaryDeduction = null,Object? salaryAttendance = null,Object? salaryInTime = null,Object? finalSalary = null,Object? salaryStartDate = freezed,Object? salaryEndDate = freezed,Object? isDeleted = null,Object? isAcknowledged = null,Object? deductionTypes = null,Object? benefitTypes = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetails,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,salaryId: freezed == salaryId ? _self.salaryId : salaryId // ignore: cast_nullable_to_non_nullable
as String?,salaryPerDay: null == salaryPerDay ? _self.salaryPerDay : salaryPerDay // ignore: cast_nullable_to_non_nullable
as num,salaryLate: null == salaryLate ? _self.salaryLate : salaryLate // ignore: cast_nullable_to_non_nullable
as num,salaryUnder: null == salaryUnder ? _self.salaryUnder : salaryUnder // ignore: cast_nullable_to_non_nullable
as num,salaryOt1: null == salaryOt1 ? _self.salaryOt1 : salaryOt1 // ignore: cast_nullable_to_non_nullable
as num,salaryOt2: null == salaryOt2 ? _self.salaryOt2 : salaryOt2 // ignore: cast_nullable_to_non_nullable
as num,salaryOt3: null == salaryOt3 ? _self.salaryOt3 : salaryOt3 // ignore: cast_nullable_to_non_nullable
as num,salaryOt: null == salaryOt ? _self.salaryOt : salaryOt // ignore: cast_nullable_to_non_nullable
as num,salarySsb: null == salarySsb ? _self.salarySsb : salarySsb // ignore: cast_nullable_to_non_nullable
as num,unpaidLeave: null == unpaidLeave ? _self.unpaidLeave : unpaidLeave // ignore: cast_nullable_to_non_nullable
as num,unpaidDeduction: null == unpaidDeduction ? _self.unpaidDeduction : unpaidDeduction // ignore: cast_nullable_to_non_nullable
as num,salaryBenefit: null == salaryBenefit ? _self.salaryBenefit : salaryBenefit // ignore: cast_nullable_to_non_nullable
as num,loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as num,bonus: null == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as num,salaryDeduction: null == salaryDeduction ? _self.salaryDeduction : salaryDeduction // ignore: cast_nullable_to_non_nullable
as num,salaryAttendance: null == salaryAttendance ? _self.salaryAttendance : salaryAttendance // ignore: cast_nullable_to_non_nullable
as num,salaryInTime: null == salaryInTime ? _self.salaryInTime : salaryInTime // ignore: cast_nullable_to_non_nullable
as num,finalSalary: null == finalSalary ? _self.finalSalary : finalSalary // ignore: cast_nullable_to_non_nullable
as num,salaryStartDate: freezed == salaryStartDate ? _self.salaryStartDate : salaryStartDate // ignore: cast_nullable_to_non_nullable
as String?,salaryEndDate: freezed == salaryEndDate ? _self.salaryEndDate : salaryEndDate // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,isAcknowledged: null == isAcknowledged ? _self.isAcknowledged : isAcknowledged // ignore: cast_nullable_to_non_nullable
as bool,deductionTypes: null == deductionTypes ? _self.deductionTypes : deductionTypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,benefitTypes: null == benefitTypes ? _self.benefitTypes : benefitTypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsCopyWith<$Res> get user {
  
  return $UserDetailsCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [Payslip].
extension PayslipPatterns on Payslip {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Payslip value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Payslip() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Payslip value)  $default,){
final _that = this;
switch (_that) {
case _Payslip():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Payslip value)?  $default,){
final _that = this;
switch (_that) {
case _Payslip() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  UserDetails user,  String companyId,  String? salaryId,  num salaryPerDay,  num salaryLate,  num salaryUnder,  num salaryOt1,  num salaryOt2,  num salaryOt3,  num salaryOt,  num salarySsb,  num unpaidLeave,  num unpaidDeduction,  num salaryBenefit,  num loan,  num bonus,  num salaryDeduction,  num salaryAttendance,  num salaryInTime,  num finalSalary,  String? salaryStartDate,  String? salaryEndDate,  bool isDeleted,  bool isAcknowledged,  List<dynamic> deductionTypes,  List<dynamic> benefitTypes,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Payslip() when $default != null:
return $default(_that.id,_that.user,_that.companyId,_that.salaryId,_that.salaryPerDay,_that.salaryLate,_that.salaryUnder,_that.salaryOt1,_that.salaryOt2,_that.salaryOt3,_that.salaryOt,_that.salarySsb,_that.unpaidLeave,_that.unpaidDeduction,_that.salaryBenefit,_that.loan,_that.bonus,_that.salaryDeduction,_that.salaryAttendance,_that.salaryInTime,_that.finalSalary,_that.salaryStartDate,_that.salaryEndDate,_that.isDeleted,_that.isAcknowledged,_that.deductionTypes,_that.benefitTypes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  UserDetails user,  String companyId,  String? salaryId,  num salaryPerDay,  num salaryLate,  num salaryUnder,  num salaryOt1,  num salaryOt2,  num salaryOt3,  num salaryOt,  num salarySsb,  num unpaidLeave,  num unpaidDeduction,  num salaryBenefit,  num loan,  num bonus,  num salaryDeduction,  num salaryAttendance,  num salaryInTime,  num finalSalary,  String? salaryStartDate,  String? salaryEndDate,  bool isDeleted,  bool isAcknowledged,  List<dynamic> deductionTypes,  List<dynamic> benefitTypes,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Payslip():
return $default(_that.id,_that.user,_that.companyId,_that.salaryId,_that.salaryPerDay,_that.salaryLate,_that.salaryUnder,_that.salaryOt1,_that.salaryOt2,_that.salaryOt3,_that.salaryOt,_that.salarySsb,_that.unpaidLeave,_that.unpaidDeduction,_that.salaryBenefit,_that.loan,_that.bonus,_that.salaryDeduction,_that.salaryAttendance,_that.salaryInTime,_that.finalSalary,_that.salaryStartDate,_that.salaryEndDate,_that.isDeleted,_that.isAcknowledged,_that.deductionTypes,_that.benefitTypes,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  UserDetails user,  String companyId,  String? salaryId,  num salaryPerDay,  num salaryLate,  num salaryUnder,  num salaryOt1,  num salaryOt2,  num salaryOt3,  num salaryOt,  num salarySsb,  num unpaidLeave,  num unpaidDeduction,  num salaryBenefit,  num loan,  num bonus,  num salaryDeduction,  num salaryAttendance,  num salaryInTime,  num finalSalary,  String? salaryStartDate,  String? salaryEndDate,  bool isDeleted,  bool isAcknowledged,  List<dynamic> deductionTypes,  List<dynamic> benefitTypes,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Payslip() when $default != null:
return $default(_that.id,_that.user,_that.companyId,_that.salaryId,_that.salaryPerDay,_that.salaryLate,_that.salaryUnder,_that.salaryOt1,_that.salaryOt2,_that.salaryOt3,_that.salaryOt,_that.salarySsb,_that.unpaidLeave,_that.unpaidDeduction,_that.salaryBenefit,_that.loan,_that.bonus,_that.salaryDeduction,_that.salaryAttendance,_that.salaryInTime,_that.finalSalary,_that.salaryStartDate,_that.salaryEndDate,_that.isDeleted,_that.isAcknowledged,_that.deductionTypes,_that.benefitTypes,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Payslip implements Payslip {
  const _Payslip({required this.id, required this.user, required this.companyId, this.salaryId, required this.salaryPerDay, required this.salaryLate, required this.salaryUnder, required this.salaryOt1, required this.salaryOt2, required this.salaryOt3, required this.salaryOt, required this.salarySsb, required this.unpaidLeave, required this.unpaidDeduction, required this.salaryBenefit, required this.loan, required this.bonus, required this.salaryDeduction, required this.salaryAttendance, required this.salaryInTime, required this.finalSalary, this.salaryStartDate, this.salaryEndDate, required this.isDeleted, required this.isAcknowledged, final  List<dynamic> deductionTypes = const [], final  List<dynamic> benefitTypes = const [], this.createdAt, this.updatedAt}): _deductionTypes = deductionTypes,_benefitTypes = benefitTypes;
  

@override final  String id;
@override final  UserDetails user;
@override final  String companyId;
@override final  String? salaryId;
@override final  num salaryPerDay;
@override final  num salaryLate;
@override final  num salaryUnder;
@override final  num salaryOt1;
@override final  num salaryOt2;
@override final  num salaryOt3;
@override final  num salaryOt;
@override final  num salarySsb;
@override final  num unpaidLeave;
@override final  num unpaidDeduction;
@override final  num salaryBenefit;
@override final  num loan;
@override final  num bonus;
@override final  num salaryDeduction;
@override final  num salaryAttendance;
@override final  num salaryInTime;
@override final  num finalSalary;
@override final  String? salaryStartDate;
@override final  String? salaryEndDate;
@override final  bool isDeleted;
@override final  bool isAcknowledged;
 final  List<dynamic> _deductionTypes;
@override@JsonKey() List<dynamic> get deductionTypes {
  if (_deductionTypes is EqualUnmodifiableListView) return _deductionTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deductionTypes);
}

 final  List<dynamic> _benefitTypes;
@override@JsonKey() List<dynamic> get benefitTypes {
  if (_benefitTypes is EqualUnmodifiableListView) return _benefitTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_benefitTypes);
}

@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayslipCopyWith<_Payslip> get copyWith => __$PayslipCopyWithImpl<_Payslip>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Payslip&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.salaryId, salaryId) || other.salaryId == salaryId)&&(identical(other.salaryPerDay, salaryPerDay) || other.salaryPerDay == salaryPerDay)&&(identical(other.salaryLate, salaryLate) || other.salaryLate == salaryLate)&&(identical(other.salaryUnder, salaryUnder) || other.salaryUnder == salaryUnder)&&(identical(other.salaryOt1, salaryOt1) || other.salaryOt1 == salaryOt1)&&(identical(other.salaryOt2, salaryOt2) || other.salaryOt2 == salaryOt2)&&(identical(other.salaryOt3, salaryOt3) || other.salaryOt3 == salaryOt3)&&(identical(other.salaryOt, salaryOt) || other.salaryOt == salaryOt)&&(identical(other.salarySsb, salarySsb) || other.salarySsb == salarySsb)&&(identical(other.unpaidLeave, unpaidLeave) || other.unpaidLeave == unpaidLeave)&&(identical(other.unpaidDeduction, unpaidDeduction) || other.unpaidDeduction == unpaidDeduction)&&(identical(other.salaryBenefit, salaryBenefit) || other.salaryBenefit == salaryBenefit)&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.salaryDeduction, salaryDeduction) || other.salaryDeduction == salaryDeduction)&&(identical(other.salaryAttendance, salaryAttendance) || other.salaryAttendance == salaryAttendance)&&(identical(other.salaryInTime, salaryInTime) || other.salaryInTime == salaryInTime)&&(identical(other.finalSalary, finalSalary) || other.finalSalary == finalSalary)&&(identical(other.salaryStartDate, salaryStartDate) || other.salaryStartDate == salaryStartDate)&&(identical(other.salaryEndDate, salaryEndDate) || other.salaryEndDate == salaryEndDate)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.isAcknowledged, isAcknowledged) || other.isAcknowledged == isAcknowledged)&&const DeepCollectionEquality().equals(other._deductionTypes, _deductionTypes)&&const DeepCollectionEquality().equals(other._benefitTypes, _benefitTypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,user,companyId,salaryId,salaryPerDay,salaryLate,salaryUnder,salaryOt1,salaryOt2,salaryOt3,salaryOt,salarySsb,unpaidLeave,unpaidDeduction,salaryBenefit,loan,bonus,salaryDeduction,salaryAttendance,salaryInTime,finalSalary,salaryStartDate,salaryEndDate,isDeleted,isAcknowledged,const DeepCollectionEquality().hash(_deductionTypes),const DeepCollectionEquality().hash(_benefitTypes),createdAt,updatedAt]);

@override
String toString() {
  return 'Payslip(id: $id, user: $user, companyId: $companyId, salaryId: $salaryId, salaryPerDay: $salaryPerDay, salaryLate: $salaryLate, salaryUnder: $salaryUnder, salaryOt1: $salaryOt1, salaryOt2: $salaryOt2, salaryOt3: $salaryOt3, salaryOt: $salaryOt, salarySsb: $salarySsb, unpaidLeave: $unpaidLeave, unpaidDeduction: $unpaidDeduction, salaryBenefit: $salaryBenefit, loan: $loan, bonus: $bonus, salaryDeduction: $salaryDeduction, salaryAttendance: $salaryAttendance, salaryInTime: $salaryInTime, finalSalary: $finalSalary, salaryStartDate: $salaryStartDate, salaryEndDate: $salaryEndDate, isDeleted: $isDeleted, isAcknowledged: $isAcknowledged, deductionTypes: $deductionTypes, benefitTypes: $benefitTypes, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PayslipCopyWith<$Res> implements $PayslipCopyWith<$Res> {
  factory _$PayslipCopyWith(_Payslip value, $Res Function(_Payslip) _then) = __$PayslipCopyWithImpl;
@override @useResult
$Res call({
 String id, UserDetails user, String companyId, String? salaryId, num salaryPerDay, num salaryLate, num salaryUnder, num salaryOt1, num salaryOt2, num salaryOt3, num salaryOt, num salarySsb, num unpaidLeave, num unpaidDeduction, num salaryBenefit, num loan, num bonus, num salaryDeduction, num salaryAttendance, num salaryInTime, num finalSalary, String? salaryStartDate, String? salaryEndDate, bool isDeleted, bool isAcknowledged, List<dynamic> deductionTypes, List<dynamic> benefitTypes, String? createdAt, String? updatedAt
});


@override $UserDetailsCopyWith<$Res> get user;

}
/// @nodoc
class __$PayslipCopyWithImpl<$Res>
    implements _$PayslipCopyWith<$Res> {
  __$PayslipCopyWithImpl(this._self, this._then);

  final _Payslip _self;
  final $Res Function(_Payslip) _then;

/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,Object? companyId = null,Object? salaryId = freezed,Object? salaryPerDay = null,Object? salaryLate = null,Object? salaryUnder = null,Object? salaryOt1 = null,Object? salaryOt2 = null,Object? salaryOt3 = null,Object? salaryOt = null,Object? salarySsb = null,Object? unpaidLeave = null,Object? unpaidDeduction = null,Object? salaryBenefit = null,Object? loan = null,Object? bonus = null,Object? salaryDeduction = null,Object? salaryAttendance = null,Object? salaryInTime = null,Object? finalSalary = null,Object? salaryStartDate = freezed,Object? salaryEndDate = freezed,Object? isDeleted = null,Object? isAcknowledged = null,Object? deductionTypes = null,Object? benefitTypes = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Payslip(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetails,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,salaryId: freezed == salaryId ? _self.salaryId : salaryId // ignore: cast_nullable_to_non_nullable
as String?,salaryPerDay: null == salaryPerDay ? _self.salaryPerDay : salaryPerDay // ignore: cast_nullable_to_non_nullable
as num,salaryLate: null == salaryLate ? _self.salaryLate : salaryLate // ignore: cast_nullable_to_non_nullable
as num,salaryUnder: null == salaryUnder ? _self.salaryUnder : salaryUnder // ignore: cast_nullable_to_non_nullable
as num,salaryOt1: null == salaryOt1 ? _self.salaryOt1 : salaryOt1 // ignore: cast_nullable_to_non_nullable
as num,salaryOt2: null == salaryOt2 ? _self.salaryOt2 : salaryOt2 // ignore: cast_nullable_to_non_nullable
as num,salaryOt3: null == salaryOt3 ? _self.salaryOt3 : salaryOt3 // ignore: cast_nullable_to_non_nullable
as num,salaryOt: null == salaryOt ? _self.salaryOt : salaryOt // ignore: cast_nullable_to_non_nullable
as num,salarySsb: null == salarySsb ? _self.salarySsb : salarySsb // ignore: cast_nullable_to_non_nullable
as num,unpaidLeave: null == unpaidLeave ? _self.unpaidLeave : unpaidLeave // ignore: cast_nullable_to_non_nullable
as num,unpaidDeduction: null == unpaidDeduction ? _self.unpaidDeduction : unpaidDeduction // ignore: cast_nullable_to_non_nullable
as num,salaryBenefit: null == salaryBenefit ? _self.salaryBenefit : salaryBenefit // ignore: cast_nullable_to_non_nullable
as num,loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as num,bonus: null == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as num,salaryDeduction: null == salaryDeduction ? _self.salaryDeduction : salaryDeduction // ignore: cast_nullable_to_non_nullable
as num,salaryAttendance: null == salaryAttendance ? _self.salaryAttendance : salaryAttendance // ignore: cast_nullable_to_non_nullable
as num,salaryInTime: null == salaryInTime ? _self.salaryInTime : salaryInTime // ignore: cast_nullable_to_non_nullable
as num,finalSalary: null == finalSalary ? _self.finalSalary : finalSalary // ignore: cast_nullable_to_non_nullable
as num,salaryStartDate: freezed == salaryStartDate ? _self.salaryStartDate : salaryStartDate // ignore: cast_nullable_to_non_nullable
as String?,salaryEndDate: freezed == salaryEndDate ? _self.salaryEndDate : salaryEndDate // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,isAcknowledged: null == isAcknowledged ? _self.isAcknowledged : isAcknowledged // ignore: cast_nullable_to_non_nullable
as bool,deductionTypes: null == deductionTypes ? _self._deductionTypes : deductionTypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,benefitTypes: null == benefitTypes ? _self._benefitTypes : benefitTypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of Payslip
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsCopyWith<$Res> get user {
  
  return $UserDetailsCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
