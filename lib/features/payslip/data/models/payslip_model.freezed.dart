// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payslip_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayslipModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(name: 'employee_name') String get employeeName;@JsonKey(name: 'employee_code') String get employeeCode;@JsonKey(name: 'department_title') String get departmentTitle;@JsonKey(name: 'position_title') String get positionTitle;@JsonKey(name: 'salary_start_date') String? get startDate;@JsonKey(name: 'salary_end_date') String? get endDate;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'basic_salary') double get basicSalary;@JsonKey(name: 'salary_attendance') double get attendanceAmount;@JsonKey(name: 'salary_in_time') double get inTimeAmount;@JsonKey(name: 'salary_ot') double get overtimeAmount;@JsonKey(name: 'salary_ot1') double get overtime1Amount;@JsonKey(name: 'salary_ot2') double get overtime2Amount;@JsonKey(name: 'salary_ot3') double get overtime3Amount;@JsonKey(name: 'salary_off_day') double get offDayAmount;@JsonKey(name: 'salary_meal') double get mealAmount;@JsonKey(name: 'salary_phone_bill') double get phoneBillAmount;@JsonKey(name: 'salary_travelling') double get travellingAmount;@JsonKey(name: 'salary_benefit') double get benefitAmount;@JsonKey(name: 'salary_bonus') double get bonusAmount;@JsonKey(name: 'salary_tax') double get taxAmount;@JsonKey(name: 'salary_ssb') double get ssbAmount;@JsonKey(name: 'salary_late') double get lateAmount;@JsonKey(name: 'salary_under') double get underAmount;@JsonKey(name: 'unpaid_leave') double get unpaidLeaveAmount;@JsonKey(name: 'unpaid_deduction') double get unpaidDeductionAmount; double get loanAmount;@JsonKey(name: 'taxable_income') double get taxableIncome;@JsonKey(name: 'salary_deduction') double get totalDeduction;@JsonKey(name: 'final_salary') double get netSalary;
/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayslipModelCopyWith<PayslipModel> get copyWith => _$PayslipModelCopyWithImpl<PayslipModel>(this as PayslipModel, _$identity);

  /// Serializes this PayslipModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayslipModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.departmentTitle, departmentTitle) || other.departmentTitle == departmentTitle)&&(identical(other.positionTitle, positionTitle) || other.positionTitle == positionTitle)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.basicSalary, basicSalary) || other.basicSalary == basicSalary)&&(identical(other.attendanceAmount, attendanceAmount) || other.attendanceAmount == attendanceAmount)&&(identical(other.inTimeAmount, inTimeAmount) || other.inTimeAmount == inTimeAmount)&&(identical(other.overtimeAmount, overtimeAmount) || other.overtimeAmount == overtimeAmount)&&(identical(other.overtime1Amount, overtime1Amount) || other.overtime1Amount == overtime1Amount)&&(identical(other.overtime2Amount, overtime2Amount) || other.overtime2Amount == overtime2Amount)&&(identical(other.overtime3Amount, overtime3Amount) || other.overtime3Amount == overtime3Amount)&&(identical(other.offDayAmount, offDayAmount) || other.offDayAmount == offDayAmount)&&(identical(other.mealAmount, mealAmount) || other.mealAmount == mealAmount)&&(identical(other.phoneBillAmount, phoneBillAmount) || other.phoneBillAmount == phoneBillAmount)&&(identical(other.travellingAmount, travellingAmount) || other.travellingAmount == travellingAmount)&&(identical(other.benefitAmount, benefitAmount) || other.benefitAmount == benefitAmount)&&(identical(other.bonusAmount, bonusAmount) || other.bonusAmount == bonusAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.ssbAmount, ssbAmount) || other.ssbAmount == ssbAmount)&&(identical(other.lateAmount, lateAmount) || other.lateAmount == lateAmount)&&(identical(other.underAmount, underAmount) || other.underAmount == underAmount)&&(identical(other.unpaidLeaveAmount, unpaidLeaveAmount) || other.unpaidLeaveAmount == unpaidLeaveAmount)&&(identical(other.unpaidDeductionAmount, unpaidDeductionAmount) || other.unpaidDeductionAmount == unpaidDeductionAmount)&&(identical(other.loanAmount, loanAmount) || other.loanAmount == loanAmount)&&(identical(other.taxableIncome, taxableIncome) || other.taxableIncome == taxableIncome)&&(identical(other.totalDeduction, totalDeduction) || other.totalDeduction == totalDeduction)&&(identical(other.netSalary, netSalary) || other.netSalary == netSalary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeName,employeeCode,departmentTitle,positionTitle,startDate,endDate,createdAt,basicSalary,attendanceAmount,inTimeAmount,overtimeAmount,overtime1Amount,overtime2Amount,overtime3Amount,offDayAmount,mealAmount,phoneBillAmount,travellingAmount,benefitAmount,bonusAmount,taxAmount,ssbAmount,lateAmount,underAmount,unpaidLeaveAmount,unpaidDeductionAmount,loanAmount,taxableIncome,totalDeduction,netSalary]);

@override
String toString() {
  return 'PayslipModel(id: $id, employeeName: $employeeName, employeeCode: $employeeCode, departmentTitle: $departmentTitle, positionTitle: $positionTitle, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, basicSalary: $basicSalary, attendanceAmount: $attendanceAmount, inTimeAmount: $inTimeAmount, overtimeAmount: $overtimeAmount, overtime1Amount: $overtime1Amount, overtime2Amount: $overtime2Amount, overtime3Amount: $overtime3Amount, offDayAmount: $offDayAmount, mealAmount: $mealAmount, phoneBillAmount: $phoneBillAmount, travellingAmount: $travellingAmount, benefitAmount: $benefitAmount, bonusAmount: $bonusAmount, taxAmount: $taxAmount, ssbAmount: $ssbAmount, lateAmount: $lateAmount, underAmount: $underAmount, unpaidLeaveAmount: $unpaidLeaveAmount, unpaidDeductionAmount: $unpaidDeductionAmount, loanAmount: $loanAmount, taxableIncome: $taxableIncome, totalDeduction: $totalDeduction, netSalary: $netSalary)';
}


}

/// @nodoc
abstract mixin class $PayslipModelCopyWith<$Res>  {
  factory $PayslipModelCopyWith(PayslipModel value, $Res Function(PayslipModel) _then) = _$PayslipModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'employee_name') String employeeName,@JsonKey(name: 'employee_code') String employeeCode,@JsonKey(name: 'department_title') String departmentTitle,@JsonKey(name: 'position_title') String positionTitle,@JsonKey(name: 'salary_start_date') String? startDate,@JsonKey(name: 'salary_end_date') String? endDate,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'basic_salary') double basicSalary,@JsonKey(name: 'salary_attendance') double attendanceAmount,@JsonKey(name: 'salary_in_time') double inTimeAmount,@JsonKey(name: 'salary_ot') double overtimeAmount,@JsonKey(name: 'salary_ot1') double overtime1Amount,@JsonKey(name: 'salary_ot2') double overtime2Amount,@JsonKey(name: 'salary_ot3') double overtime3Amount,@JsonKey(name: 'salary_off_day') double offDayAmount,@JsonKey(name: 'salary_meal') double mealAmount,@JsonKey(name: 'salary_phone_bill') double phoneBillAmount,@JsonKey(name: 'salary_travelling') double travellingAmount,@JsonKey(name: 'salary_benefit') double benefitAmount,@JsonKey(name: 'salary_bonus') double bonusAmount,@JsonKey(name: 'salary_tax') double taxAmount,@JsonKey(name: 'salary_ssb') double ssbAmount,@JsonKey(name: 'salary_late') double lateAmount,@JsonKey(name: 'salary_under') double underAmount,@JsonKey(name: 'unpaid_leave') double unpaidLeaveAmount,@JsonKey(name: 'unpaid_deduction') double unpaidDeductionAmount, double loanAmount,@JsonKey(name: 'taxable_income') double taxableIncome,@JsonKey(name: 'salary_deduction') double totalDeduction,@JsonKey(name: 'final_salary') double netSalary
});




}
/// @nodoc
class _$PayslipModelCopyWithImpl<$Res>
    implements $PayslipModelCopyWith<$Res> {
  _$PayslipModelCopyWithImpl(this._self, this._then);

  final PayslipModel _self;
  final $Res Function(PayslipModel) _then;

/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeName = null,Object? employeeCode = null,Object? departmentTitle = null,Object? positionTitle = null,Object? startDate = freezed,Object? endDate = freezed,Object? createdAt = freezed,Object? basicSalary = null,Object? attendanceAmount = null,Object? inTimeAmount = null,Object? overtimeAmount = null,Object? overtime1Amount = null,Object? overtime2Amount = null,Object? overtime3Amount = null,Object? offDayAmount = null,Object? mealAmount = null,Object? phoneBillAmount = null,Object? travellingAmount = null,Object? benefitAmount = null,Object? bonusAmount = null,Object? taxAmount = null,Object? ssbAmount = null,Object? lateAmount = null,Object? underAmount = null,Object? unpaidLeaveAmount = null,Object? unpaidDeductionAmount = null,Object? loanAmount = null,Object? taxableIncome = null,Object? totalDeduction = null,Object? netSalary = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,departmentTitle: null == departmentTitle ? _self.departmentTitle : departmentTitle // ignore: cast_nullable_to_non_nullable
as String,positionTitle: null == positionTitle ? _self.positionTitle : positionTitle // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,basicSalary: null == basicSalary ? _self.basicSalary : basicSalary // ignore: cast_nullable_to_non_nullable
as double,attendanceAmount: null == attendanceAmount ? _self.attendanceAmount : attendanceAmount // ignore: cast_nullable_to_non_nullable
as double,inTimeAmount: null == inTimeAmount ? _self.inTimeAmount : inTimeAmount // ignore: cast_nullable_to_non_nullable
as double,overtimeAmount: null == overtimeAmount ? _self.overtimeAmount : overtimeAmount // ignore: cast_nullable_to_non_nullable
as double,overtime1Amount: null == overtime1Amount ? _self.overtime1Amount : overtime1Amount // ignore: cast_nullable_to_non_nullable
as double,overtime2Amount: null == overtime2Amount ? _self.overtime2Amount : overtime2Amount // ignore: cast_nullable_to_non_nullable
as double,overtime3Amount: null == overtime3Amount ? _self.overtime3Amount : overtime3Amount // ignore: cast_nullable_to_non_nullable
as double,offDayAmount: null == offDayAmount ? _self.offDayAmount : offDayAmount // ignore: cast_nullable_to_non_nullable
as double,mealAmount: null == mealAmount ? _self.mealAmount : mealAmount // ignore: cast_nullable_to_non_nullable
as double,phoneBillAmount: null == phoneBillAmount ? _self.phoneBillAmount : phoneBillAmount // ignore: cast_nullable_to_non_nullable
as double,travellingAmount: null == travellingAmount ? _self.travellingAmount : travellingAmount // ignore: cast_nullable_to_non_nullable
as double,benefitAmount: null == benefitAmount ? _self.benefitAmount : benefitAmount // ignore: cast_nullable_to_non_nullable
as double,bonusAmount: null == bonusAmount ? _self.bonusAmount : bonusAmount // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,ssbAmount: null == ssbAmount ? _self.ssbAmount : ssbAmount // ignore: cast_nullable_to_non_nullable
as double,lateAmount: null == lateAmount ? _self.lateAmount : lateAmount // ignore: cast_nullable_to_non_nullable
as double,underAmount: null == underAmount ? _self.underAmount : underAmount // ignore: cast_nullable_to_non_nullable
as double,unpaidLeaveAmount: null == unpaidLeaveAmount ? _self.unpaidLeaveAmount : unpaidLeaveAmount // ignore: cast_nullable_to_non_nullable
as double,unpaidDeductionAmount: null == unpaidDeductionAmount ? _self.unpaidDeductionAmount : unpaidDeductionAmount // ignore: cast_nullable_to_non_nullable
as double,loanAmount: null == loanAmount ? _self.loanAmount : loanAmount // ignore: cast_nullable_to_non_nullable
as double,taxableIncome: null == taxableIncome ? _self.taxableIncome : taxableIncome // ignore: cast_nullable_to_non_nullable
as double,totalDeduction: null == totalDeduction ? _self.totalDeduction : totalDeduction // ignore: cast_nullable_to_non_nullable
as double,netSalary: null == netSalary ? _self.netSalary : netSalary // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [PayslipModel].
extension PayslipModelPatterns on PayslipModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PayslipModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PayslipModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PayslipModel value)  $default,){
final _that = this;
switch (_that) {
case _PayslipModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PayslipModel value)?  $default,){
final _that = this;
switch (_that) {
case _PayslipModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_name')  String employeeName, @JsonKey(name: 'employee_code')  String employeeCode, @JsonKey(name: 'department_title')  String departmentTitle, @JsonKey(name: 'position_title')  String positionTitle, @JsonKey(name: 'salary_start_date')  String? startDate, @JsonKey(name: 'salary_end_date')  String? endDate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'basic_salary')  double basicSalary, @JsonKey(name: 'salary_attendance')  double attendanceAmount, @JsonKey(name: 'salary_in_time')  double inTimeAmount, @JsonKey(name: 'salary_ot')  double overtimeAmount, @JsonKey(name: 'salary_ot1')  double overtime1Amount, @JsonKey(name: 'salary_ot2')  double overtime2Amount, @JsonKey(name: 'salary_ot3')  double overtime3Amount, @JsonKey(name: 'salary_off_day')  double offDayAmount, @JsonKey(name: 'salary_meal')  double mealAmount, @JsonKey(name: 'salary_phone_bill')  double phoneBillAmount, @JsonKey(name: 'salary_travelling')  double travellingAmount, @JsonKey(name: 'salary_benefit')  double benefitAmount, @JsonKey(name: 'salary_bonus')  double bonusAmount, @JsonKey(name: 'salary_tax')  double taxAmount, @JsonKey(name: 'salary_ssb')  double ssbAmount, @JsonKey(name: 'salary_late')  double lateAmount, @JsonKey(name: 'salary_under')  double underAmount, @JsonKey(name: 'unpaid_leave')  double unpaidLeaveAmount, @JsonKey(name: 'unpaid_deduction')  double unpaidDeductionAmount,  double loanAmount, @JsonKey(name: 'taxable_income')  double taxableIncome, @JsonKey(name: 'salary_deduction')  double totalDeduction, @JsonKey(name: 'final_salary')  double netSalary)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayslipModel() when $default != null:
return $default(_that.id,_that.employeeName,_that.employeeCode,_that.departmentTitle,_that.positionTitle,_that.startDate,_that.endDate,_that.createdAt,_that.basicSalary,_that.attendanceAmount,_that.inTimeAmount,_that.overtimeAmount,_that.overtime1Amount,_that.overtime2Amount,_that.overtime3Amount,_that.offDayAmount,_that.mealAmount,_that.phoneBillAmount,_that.travellingAmount,_that.benefitAmount,_that.bonusAmount,_that.taxAmount,_that.ssbAmount,_that.lateAmount,_that.underAmount,_that.unpaidLeaveAmount,_that.unpaidDeductionAmount,_that.loanAmount,_that.taxableIncome,_that.totalDeduction,_that.netSalary);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_name')  String employeeName, @JsonKey(name: 'employee_code')  String employeeCode, @JsonKey(name: 'department_title')  String departmentTitle, @JsonKey(name: 'position_title')  String positionTitle, @JsonKey(name: 'salary_start_date')  String? startDate, @JsonKey(name: 'salary_end_date')  String? endDate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'basic_salary')  double basicSalary, @JsonKey(name: 'salary_attendance')  double attendanceAmount, @JsonKey(name: 'salary_in_time')  double inTimeAmount, @JsonKey(name: 'salary_ot')  double overtimeAmount, @JsonKey(name: 'salary_ot1')  double overtime1Amount, @JsonKey(name: 'salary_ot2')  double overtime2Amount, @JsonKey(name: 'salary_ot3')  double overtime3Amount, @JsonKey(name: 'salary_off_day')  double offDayAmount, @JsonKey(name: 'salary_meal')  double mealAmount, @JsonKey(name: 'salary_phone_bill')  double phoneBillAmount, @JsonKey(name: 'salary_travelling')  double travellingAmount, @JsonKey(name: 'salary_benefit')  double benefitAmount, @JsonKey(name: 'salary_bonus')  double bonusAmount, @JsonKey(name: 'salary_tax')  double taxAmount, @JsonKey(name: 'salary_ssb')  double ssbAmount, @JsonKey(name: 'salary_late')  double lateAmount, @JsonKey(name: 'salary_under')  double underAmount, @JsonKey(name: 'unpaid_leave')  double unpaidLeaveAmount, @JsonKey(name: 'unpaid_deduction')  double unpaidDeductionAmount,  double loanAmount, @JsonKey(name: 'taxable_income')  double taxableIncome, @JsonKey(name: 'salary_deduction')  double totalDeduction, @JsonKey(name: 'final_salary')  double netSalary)  $default,) {final _that = this;
switch (_that) {
case _PayslipModel():
return $default(_that.id,_that.employeeName,_that.employeeCode,_that.departmentTitle,_that.positionTitle,_that.startDate,_that.endDate,_that.createdAt,_that.basicSalary,_that.attendanceAmount,_that.inTimeAmount,_that.overtimeAmount,_that.overtime1Amount,_that.overtime2Amount,_that.overtime3Amount,_that.offDayAmount,_that.mealAmount,_that.phoneBillAmount,_that.travellingAmount,_that.benefitAmount,_that.bonusAmount,_that.taxAmount,_that.ssbAmount,_that.lateAmount,_that.underAmount,_that.unpaidLeaveAmount,_that.unpaidDeductionAmount,_that.loanAmount,_that.taxableIncome,_that.totalDeduction,_that.netSalary);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_name')  String employeeName, @JsonKey(name: 'employee_code')  String employeeCode, @JsonKey(name: 'department_title')  String departmentTitle, @JsonKey(name: 'position_title')  String positionTitle, @JsonKey(name: 'salary_start_date')  String? startDate, @JsonKey(name: 'salary_end_date')  String? endDate, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'basic_salary')  double basicSalary, @JsonKey(name: 'salary_attendance')  double attendanceAmount, @JsonKey(name: 'salary_in_time')  double inTimeAmount, @JsonKey(name: 'salary_ot')  double overtimeAmount, @JsonKey(name: 'salary_ot1')  double overtime1Amount, @JsonKey(name: 'salary_ot2')  double overtime2Amount, @JsonKey(name: 'salary_ot3')  double overtime3Amount, @JsonKey(name: 'salary_off_day')  double offDayAmount, @JsonKey(name: 'salary_meal')  double mealAmount, @JsonKey(name: 'salary_phone_bill')  double phoneBillAmount, @JsonKey(name: 'salary_travelling')  double travellingAmount, @JsonKey(name: 'salary_benefit')  double benefitAmount, @JsonKey(name: 'salary_bonus')  double bonusAmount, @JsonKey(name: 'salary_tax')  double taxAmount, @JsonKey(name: 'salary_ssb')  double ssbAmount, @JsonKey(name: 'salary_late')  double lateAmount, @JsonKey(name: 'salary_under')  double underAmount, @JsonKey(name: 'unpaid_leave')  double unpaidLeaveAmount, @JsonKey(name: 'unpaid_deduction')  double unpaidDeductionAmount,  double loanAmount, @JsonKey(name: 'taxable_income')  double taxableIncome, @JsonKey(name: 'salary_deduction')  double totalDeduction, @JsonKey(name: 'final_salary')  double netSalary)?  $default,) {final _that = this;
switch (_that) {
case _PayslipModel() when $default != null:
return $default(_that.id,_that.employeeName,_that.employeeCode,_that.departmentTitle,_that.positionTitle,_that.startDate,_that.endDate,_that.createdAt,_that.basicSalary,_that.attendanceAmount,_that.inTimeAmount,_that.overtimeAmount,_that.overtime1Amount,_that.overtime2Amount,_that.overtime3Amount,_that.offDayAmount,_that.mealAmount,_that.phoneBillAmount,_that.travellingAmount,_that.benefitAmount,_that.bonusAmount,_that.taxAmount,_that.ssbAmount,_that.lateAmount,_that.underAmount,_that.unpaidLeaveAmount,_that.unpaidDeductionAmount,_that.loanAmount,_that.taxableIncome,_that.totalDeduction,_that.netSalary);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayslipModel extends PayslipModel {
  const _PayslipModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(name: 'employee_name') this.employeeName = '', @JsonKey(name: 'employee_code') this.employeeCode = '', @JsonKey(name: 'department_title') this.departmentTitle = '', @JsonKey(name: 'position_title') this.positionTitle = '', @JsonKey(name: 'salary_start_date') this.startDate, @JsonKey(name: 'salary_end_date') this.endDate, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'basic_salary') this.basicSalary = 0, @JsonKey(name: 'salary_attendance') this.attendanceAmount = 0, @JsonKey(name: 'salary_in_time') this.inTimeAmount = 0, @JsonKey(name: 'salary_ot') this.overtimeAmount = 0, @JsonKey(name: 'salary_ot1') this.overtime1Amount = 0, @JsonKey(name: 'salary_ot2') this.overtime2Amount = 0, @JsonKey(name: 'salary_ot3') this.overtime3Amount = 0, @JsonKey(name: 'salary_off_day') this.offDayAmount = 0, @JsonKey(name: 'salary_meal') this.mealAmount = 0, @JsonKey(name: 'salary_phone_bill') this.phoneBillAmount = 0, @JsonKey(name: 'salary_travelling') this.travellingAmount = 0, @JsonKey(name: 'salary_benefit') this.benefitAmount = 0, @JsonKey(name: 'salary_bonus') this.bonusAmount = 0, @JsonKey(name: 'salary_tax') this.taxAmount = 0, @JsonKey(name: 'salary_ssb') this.ssbAmount = 0, @JsonKey(name: 'salary_late') this.lateAmount = 0, @JsonKey(name: 'salary_under') this.underAmount = 0, @JsonKey(name: 'unpaid_leave') this.unpaidLeaveAmount = 0, @JsonKey(name: 'unpaid_deduction') this.unpaidDeductionAmount = 0, this.loanAmount = 0, @JsonKey(name: 'taxable_income') this.taxableIncome = 0, @JsonKey(name: 'salary_deduction') this.totalDeduction = 0, @JsonKey(name: 'final_salary') this.netSalary = 0}): super._();
  factory _PayslipModel.fromJson(Map<String, dynamic> json) => _$PayslipModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(name: 'employee_name') final  String employeeName;
@override@JsonKey(name: 'employee_code') final  String employeeCode;
@override@JsonKey(name: 'department_title') final  String departmentTitle;
@override@JsonKey(name: 'position_title') final  String positionTitle;
@override@JsonKey(name: 'salary_start_date') final  String? startDate;
@override@JsonKey(name: 'salary_end_date') final  String? endDate;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'basic_salary') final  double basicSalary;
@override@JsonKey(name: 'salary_attendance') final  double attendanceAmount;
@override@JsonKey(name: 'salary_in_time') final  double inTimeAmount;
@override@JsonKey(name: 'salary_ot') final  double overtimeAmount;
@override@JsonKey(name: 'salary_ot1') final  double overtime1Amount;
@override@JsonKey(name: 'salary_ot2') final  double overtime2Amount;
@override@JsonKey(name: 'salary_ot3') final  double overtime3Amount;
@override@JsonKey(name: 'salary_off_day') final  double offDayAmount;
@override@JsonKey(name: 'salary_meal') final  double mealAmount;
@override@JsonKey(name: 'salary_phone_bill') final  double phoneBillAmount;
@override@JsonKey(name: 'salary_travelling') final  double travellingAmount;
@override@JsonKey(name: 'salary_benefit') final  double benefitAmount;
@override@JsonKey(name: 'salary_bonus') final  double bonusAmount;
@override@JsonKey(name: 'salary_tax') final  double taxAmount;
@override@JsonKey(name: 'salary_ssb') final  double ssbAmount;
@override@JsonKey(name: 'salary_late') final  double lateAmount;
@override@JsonKey(name: 'salary_under') final  double underAmount;
@override@JsonKey(name: 'unpaid_leave') final  double unpaidLeaveAmount;
@override@JsonKey(name: 'unpaid_deduction') final  double unpaidDeductionAmount;
@override@JsonKey() final  double loanAmount;
@override@JsonKey(name: 'taxable_income') final  double taxableIncome;
@override@JsonKey(name: 'salary_deduction') final  double totalDeduction;
@override@JsonKey(name: 'final_salary') final  double netSalary;

/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PayslipModelCopyWith<_PayslipModel> get copyWith => __$PayslipModelCopyWithImpl<_PayslipModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PayslipModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayslipModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeName, employeeName) || other.employeeName == employeeName)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.departmentTitle, departmentTitle) || other.departmentTitle == departmentTitle)&&(identical(other.positionTitle, positionTitle) || other.positionTitle == positionTitle)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.basicSalary, basicSalary) || other.basicSalary == basicSalary)&&(identical(other.attendanceAmount, attendanceAmount) || other.attendanceAmount == attendanceAmount)&&(identical(other.inTimeAmount, inTimeAmount) || other.inTimeAmount == inTimeAmount)&&(identical(other.overtimeAmount, overtimeAmount) || other.overtimeAmount == overtimeAmount)&&(identical(other.overtime1Amount, overtime1Amount) || other.overtime1Amount == overtime1Amount)&&(identical(other.overtime2Amount, overtime2Amount) || other.overtime2Amount == overtime2Amount)&&(identical(other.overtime3Amount, overtime3Amount) || other.overtime3Amount == overtime3Amount)&&(identical(other.offDayAmount, offDayAmount) || other.offDayAmount == offDayAmount)&&(identical(other.mealAmount, mealAmount) || other.mealAmount == mealAmount)&&(identical(other.phoneBillAmount, phoneBillAmount) || other.phoneBillAmount == phoneBillAmount)&&(identical(other.travellingAmount, travellingAmount) || other.travellingAmount == travellingAmount)&&(identical(other.benefitAmount, benefitAmount) || other.benefitAmount == benefitAmount)&&(identical(other.bonusAmount, bonusAmount) || other.bonusAmount == bonusAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.ssbAmount, ssbAmount) || other.ssbAmount == ssbAmount)&&(identical(other.lateAmount, lateAmount) || other.lateAmount == lateAmount)&&(identical(other.underAmount, underAmount) || other.underAmount == underAmount)&&(identical(other.unpaidLeaveAmount, unpaidLeaveAmount) || other.unpaidLeaveAmount == unpaidLeaveAmount)&&(identical(other.unpaidDeductionAmount, unpaidDeductionAmount) || other.unpaidDeductionAmount == unpaidDeductionAmount)&&(identical(other.loanAmount, loanAmount) || other.loanAmount == loanAmount)&&(identical(other.taxableIncome, taxableIncome) || other.taxableIncome == taxableIncome)&&(identical(other.totalDeduction, totalDeduction) || other.totalDeduction == totalDeduction)&&(identical(other.netSalary, netSalary) || other.netSalary == netSalary));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeName,employeeCode,departmentTitle,positionTitle,startDate,endDate,createdAt,basicSalary,attendanceAmount,inTimeAmount,overtimeAmount,overtime1Amount,overtime2Amount,overtime3Amount,offDayAmount,mealAmount,phoneBillAmount,travellingAmount,benefitAmount,bonusAmount,taxAmount,ssbAmount,lateAmount,underAmount,unpaidLeaveAmount,unpaidDeductionAmount,loanAmount,taxableIncome,totalDeduction,netSalary]);

@override
String toString() {
  return 'PayslipModel(id: $id, employeeName: $employeeName, employeeCode: $employeeCode, departmentTitle: $departmentTitle, positionTitle: $positionTitle, startDate: $startDate, endDate: $endDate, createdAt: $createdAt, basicSalary: $basicSalary, attendanceAmount: $attendanceAmount, inTimeAmount: $inTimeAmount, overtimeAmount: $overtimeAmount, overtime1Amount: $overtime1Amount, overtime2Amount: $overtime2Amount, overtime3Amount: $overtime3Amount, offDayAmount: $offDayAmount, mealAmount: $mealAmount, phoneBillAmount: $phoneBillAmount, travellingAmount: $travellingAmount, benefitAmount: $benefitAmount, bonusAmount: $bonusAmount, taxAmount: $taxAmount, ssbAmount: $ssbAmount, lateAmount: $lateAmount, underAmount: $underAmount, unpaidLeaveAmount: $unpaidLeaveAmount, unpaidDeductionAmount: $unpaidDeductionAmount, loanAmount: $loanAmount, taxableIncome: $taxableIncome, totalDeduction: $totalDeduction, netSalary: $netSalary)';
}


}

/// @nodoc
abstract mixin class _$PayslipModelCopyWith<$Res> implements $PayslipModelCopyWith<$Res> {
  factory _$PayslipModelCopyWith(_PayslipModel value, $Res Function(_PayslipModel) _then) = __$PayslipModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'employee_name') String employeeName,@JsonKey(name: 'employee_code') String employeeCode,@JsonKey(name: 'department_title') String departmentTitle,@JsonKey(name: 'position_title') String positionTitle,@JsonKey(name: 'salary_start_date') String? startDate,@JsonKey(name: 'salary_end_date') String? endDate,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'basic_salary') double basicSalary,@JsonKey(name: 'salary_attendance') double attendanceAmount,@JsonKey(name: 'salary_in_time') double inTimeAmount,@JsonKey(name: 'salary_ot') double overtimeAmount,@JsonKey(name: 'salary_ot1') double overtime1Amount,@JsonKey(name: 'salary_ot2') double overtime2Amount,@JsonKey(name: 'salary_ot3') double overtime3Amount,@JsonKey(name: 'salary_off_day') double offDayAmount,@JsonKey(name: 'salary_meal') double mealAmount,@JsonKey(name: 'salary_phone_bill') double phoneBillAmount,@JsonKey(name: 'salary_travelling') double travellingAmount,@JsonKey(name: 'salary_benefit') double benefitAmount,@JsonKey(name: 'salary_bonus') double bonusAmount,@JsonKey(name: 'salary_tax') double taxAmount,@JsonKey(name: 'salary_ssb') double ssbAmount,@JsonKey(name: 'salary_late') double lateAmount,@JsonKey(name: 'salary_under') double underAmount,@JsonKey(name: 'unpaid_leave') double unpaidLeaveAmount,@JsonKey(name: 'unpaid_deduction') double unpaidDeductionAmount, double loanAmount,@JsonKey(name: 'taxable_income') double taxableIncome,@JsonKey(name: 'salary_deduction') double totalDeduction,@JsonKey(name: 'final_salary') double netSalary
});




}
/// @nodoc
class __$PayslipModelCopyWithImpl<$Res>
    implements _$PayslipModelCopyWith<$Res> {
  __$PayslipModelCopyWithImpl(this._self, this._then);

  final _PayslipModel _self;
  final $Res Function(_PayslipModel) _then;

/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeName = null,Object? employeeCode = null,Object? departmentTitle = null,Object? positionTitle = null,Object? startDate = freezed,Object? endDate = freezed,Object? createdAt = freezed,Object? basicSalary = null,Object? attendanceAmount = null,Object? inTimeAmount = null,Object? overtimeAmount = null,Object? overtime1Amount = null,Object? overtime2Amount = null,Object? overtime3Amount = null,Object? offDayAmount = null,Object? mealAmount = null,Object? phoneBillAmount = null,Object? travellingAmount = null,Object? benefitAmount = null,Object? bonusAmount = null,Object? taxAmount = null,Object? ssbAmount = null,Object? lateAmount = null,Object? underAmount = null,Object? unpaidLeaveAmount = null,Object? unpaidDeductionAmount = null,Object? loanAmount = null,Object? taxableIncome = null,Object? totalDeduction = null,Object? netSalary = null,}) {
  return _then(_PayslipModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeName: null == employeeName ? _self.employeeName : employeeName // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,departmentTitle: null == departmentTitle ? _self.departmentTitle : departmentTitle // ignore: cast_nullable_to_non_nullable
as String,positionTitle: null == positionTitle ? _self.positionTitle : positionTitle // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,basicSalary: null == basicSalary ? _self.basicSalary : basicSalary // ignore: cast_nullable_to_non_nullable
as double,attendanceAmount: null == attendanceAmount ? _self.attendanceAmount : attendanceAmount // ignore: cast_nullable_to_non_nullable
as double,inTimeAmount: null == inTimeAmount ? _self.inTimeAmount : inTimeAmount // ignore: cast_nullable_to_non_nullable
as double,overtimeAmount: null == overtimeAmount ? _self.overtimeAmount : overtimeAmount // ignore: cast_nullable_to_non_nullable
as double,overtime1Amount: null == overtime1Amount ? _self.overtime1Amount : overtime1Amount // ignore: cast_nullable_to_non_nullable
as double,overtime2Amount: null == overtime2Amount ? _self.overtime2Amount : overtime2Amount // ignore: cast_nullable_to_non_nullable
as double,overtime3Amount: null == overtime3Amount ? _self.overtime3Amount : overtime3Amount // ignore: cast_nullable_to_non_nullable
as double,offDayAmount: null == offDayAmount ? _self.offDayAmount : offDayAmount // ignore: cast_nullable_to_non_nullable
as double,mealAmount: null == mealAmount ? _self.mealAmount : mealAmount // ignore: cast_nullable_to_non_nullable
as double,phoneBillAmount: null == phoneBillAmount ? _self.phoneBillAmount : phoneBillAmount // ignore: cast_nullable_to_non_nullable
as double,travellingAmount: null == travellingAmount ? _self.travellingAmount : travellingAmount // ignore: cast_nullable_to_non_nullable
as double,benefitAmount: null == benefitAmount ? _self.benefitAmount : benefitAmount // ignore: cast_nullable_to_non_nullable
as double,bonusAmount: null == bonusAmount ? _self.bonusAmount : bonusAmount // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,ssbAmount: null == ssbAmount ? _self.ssbAmount : ssbAmount // ignore: cast_nullable_to_non_nullable
as double,lateAmount: null == lateAmount ? _self.lateAmount : lateAmount // ignore: cast_nullable_to_non_nullable
as double,underAmount: null == underAmount ? _self.underAmount : underAmount // ignore: cast_nullable_to_non_nullable
as double,unpaidLeaveAmount: null == unpaidLeaveAmount ? _self.unpaidLeaveAmount : unpaidLeaveAmount // ignore: cast_nullable_to_non_nullable
as double,unpaidDeductionAmount: null == unpaidDeductionAmount ? _self.unpaidDeductionAmount : unpaidDeductionAmount // ignore: cast_nullable_to_non_nullable
as double,loanAmount: null == loanAmount ? _self.loanAmount : loanAmount // ignore: cast_nullable_to_non_nullable
as double,taxableIncome: null == taxableIncome ? _self.taxableIncome : taxableIncome // ignore: cast_nullable_to_non_nullable
as double,totalDeduction: null == totalDeduction ? _self.totalDeduction : totalDeduction // ignore: cast_nullable_to_non_nullable
as double,netSalary: null == netSalary ? _self.netSalary : netSalary // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
