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

@JsonKey(name: '_id') String get id;@JsonKey(name: 'userid') UserDetailsModel get user; String get company; String? get salary; num get salaryperday; num get salarylate; num get salaryunder; num get salaryot1; num get salaryot2; num get salaryot3; num get salaryot; num get salaryssb; num get unpaidleave; num get unpaiddeduction; num get salarybenefit; num get loan; num get bonus; num get salarydeduction; num get salaryattendance; num get salaryintime; num get finalsalary; String? get salarystartdate; String? get salaryenddate; List<dynamic> get tags; bool get deleted; bool get isackg; dynamic get deletedAt; List<dynamic> get deductiontypes; List<dynamic> get benefittypes; String? get createdAt; String? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PayslipModelCopyWith<PayslipModel> get copyWith => _$PayslipModelCopyWithImpl<PayslipModel>(this as PayslipModel, _$identity);

  /// Serializes this PayslipModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PayslipModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.company, company) || other.company == company)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.salaryperday, salaryperday) || other.salaryperday == salaryperday)&&(identical(other.salarylate, salarylate) || other.salarylate == salarylate)&&(identical(other.salaryunder, salaryunder) || other.salaryunder == salaryunder)&&(identical(other.salaryot1, salaryot1) || other.salaryot1 == salaryot1)&&(identical(other.salaryot2, salaryot2) || other.salaryot2 == salaryot2)&&(identical(other.salaryot3, salaryot3) || other.salaryot3 == salaryot3)&&(identical(other.salaryot, salaryot) || other.salaryot == salaryot)&&(identical(other.salaryssb, salaryssb) || other.salaryssb == salaryssb)&&(identical(other.unpaidleave, unpaidleave) || other.unpaidleave == unpaidleave)&&(identical(other.unpaiddeduction, unpaiddeduction) || other.unpaiddeduction == unpaiddeduction)&&(identical(other.salarybenefit, salarybenefit) || other.salarybenefit == salarybenefit)&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.salarydeduction, salarydeduction) || other.salarydeduction == salarydeduction)&&(identical(other.salaryattendance, salaryattendance) || other.salaryattendance == salaryattendance)&&(identical(other.salaryintime, salaryintime) || other.salaryintime == salaryintime)&&(identical(other.finalsalary, finalsalary) || other.finalsalary == finalsalary)&&(identical(other.salarystartdate, salarystartdate) || other.salarystartdate == salarystartdate)&&(identical(other.salaryenddate, salaryenddate) || other.salaryenddate == salaryenddate)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.isackg, isackg) || other.isackg == isackg)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other.deductiontypes, deductiontypes)&&const DeepCollectionEquality().equals(other.benefittypes, benefittypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,user,company,salary,salaryperday,salarylate,salaryunder,salaryot1,salaryot2,salaryot3,salaryot,salaryssb,unpaidleave,unpaiddeduction,salarybenefit,loan,bonus,salarydeduction,salaryattendance,salaryintime,finalsalary,salarystartdate,salaryenddate,const DeepCollectionEquality().hash(tags),deleted,isackg,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(deductiontypes),const DeepCollectionEquality().hash(benefittypes),createdAt,updatedAt,version]);

@override
String toString() {
  return 'PayslipModel(id: $id, user: $user, company: $company, salary: $salary, salaryperday: $salaryperday, salarylate: $salarylate, salaryunder: $salaryunder, salaryot1: $salaryot1, salaryot2: $salaryot2, salaryot3: $salaryot3, salaryot: $salaryot, salaryssb: $salaryssb, unpaidleave: $unpaidleave, unpaiddeduction: $unpaiddeduction, salarybenefit: $salarybenefit, loan: $loan, bonus: $bonus, salarydeduction: $salarydeduction, salaryattendance: $salaryattendance, salaryintime: $salaryintime, finalsalary: $finalsalary, salarystartdate: $salarystartdate, salaryenddate: $salaryenddate, tags: $tags, deleted: $deleted, isackg: $isackg, deletedAt: $deletedAt, deductiontypes: $deductiontypes, benefittypes: $benefittypes, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $PayslipModelCopyWith<$Res>  {
  factory $PayslipModelCopyWith(PayslipModel value, $Res Function(PayslipModel) _then) = _$PayslipModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'userid') UserDetailsModel user, String company, String? salary, num salaryperday, num salarylate, num salaryunder, num salaryot1, num salaryot2, num salaryot3, num salaryot, num salaryssb, num unpaidleave, num unpaiddeduction, num salarybenefit, num loan, num bonus, num salarydeduction, num salaryattendance, num salaryintime, num finalsalary, String? salarystartdate, String? salaryenddate, List<dynamic> tags, bool deleted, bool isackg, dynamic deletedAt, List<dynamic> deductiontypes, List<dynamic> benefittypes, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version
});


$UserDetailsModelCopyWith<$Res> get user;

}
/// @nodoc
class _$PayslipModelCopyWithImpl<$Res>
    implements $PayslipModelCopyWith<$Res> {
  _$PayslipModelCopyWithImpl(this._self, this._then);

  final PayslipModel _self;
  final $Res Function(PayslipModel) _then;

/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? user = null,Object? company = null,Object? salary = freezed,Object? salaryperday = null,Object? salarylate = null,Object? salaryunder = null,Object? salaryot1 = null,Object? salaryot2 = null,Object? salaryot3 = null,Object? salaryot = null,Object? salaryssb = null,Object? unpaidleave = null,Object? unpaiddeduction = null,Object? salarybenefit = null,Object? loan = null,Object? bonus = null,Object? salarydeduction = null,Object? salaryattendance = null,Object? salaryintime = null,Object? finalsalary = null,Object? salarystartdate = freezed,Object? salaryenddate = freezed,Object? tags = null,Object? deleted = null,Object? isackg = null,Object? deletedAt = freezed,Object? deductiontypes = null,Object? benefittypes = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetailsModel,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,salary: freezed == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String?,salaryperday: null == salaryperday ? _self.salaryperday : salaryperday // ignore: cast_nullable_to_non_nullable
as num,salarylate: null == salarylate ? _self.salarylate : salarylate // ignore: cast_nullable_to_non_nullable
as num,salaryunder: null == salaryunder ? _self.salaryunder : salaryunder // ignore: cast_nullable_to_non_nullable
as num,salaryot1: null == salaryot1 ? _self.salaryot1 : salaryot1 // ignore: cast_nullable_to_non_nullable
as num,salaryot2: null == salaryot2 ? _self.salaryot2 : salaryot2 // ignore: cast_nullable_to_non_nullable
as num,salaryot3: null == salaryot3 ? _self.salaryot3 : salaryot3 // ignore: cast_nullable_to_non_nullable
as num,salaryot: null == salaryot ? _self.salaryot : salaryot // ignore: cast_nullable_to_non_nullable
as num,salaryssb: null == salaryssb ? _self.salaryssb : salaryssb // ignore: cast_nullable_to_non_nullable
as num,unpaidleave: null == unpaidleave ? _self.unpaidleave : unpaidleave // ignore: cast_nullable_to_non_nullable
as num,unpaiddeduction: null == unpaiddeduction ? _self.unpaiddeduction : unpaiddeduction // ignore: cast_nullable_to_non_nullable
as num,salarybenefit: null == salarybenefit ? _self.salarybenefit : salarybenefit // ignore: cast_nullable_to_non_nullable
as num,loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as num,bonus: null == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as num,salarydeduction: null == salarydeduction ? _self.salarydeduction : salarydeduction // ignore: cast_nullable_to_non_nullable
as num,salaryattendance: null == salaryattendance ? _self.salaryattendance : salaryattendance // ignore: cast_nullable_to_non_nullable
as num,salaryintime: null == salaryintime ? _self.salaryintime : salaryintime // ignore: cast_nullable_to_non_nullable
as num,finalsalary: null == finalsalary ? _self.finalsalary : finalsalary // ignore: cast_nullable_to_non_nullable
as num,salarystartdate: freezed == salarystartdate ? _self.salarystartdate : salarystartdate // ignore: cast_nullable_to_non_nullable
as String?,salaryenddate: freezed == salaryenddate ? _self.salaryenddate : salaryenddate // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,isackg: null == isackg ? _self.isackg : isackg // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,deductiontypes: null == deductiontypes ? _self.deductiontypes : deductiontypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,benefittypes: null == benefittypes ? _self.benefittypes : benefittypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<$Res> get user {
  
  return $UserDetailsModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'userid')  UserDetailsModel user,  String company,  String? salary,  num salaryperday,  num salarylate,  num salaryunder,  num salaryot1,  num salaryot2,  num salaryot3,  num salaryot,  num salaryssb,  num unpaidleave,  num unpaiddeduction,  num salarybenefit,  num loan,  num bonus,  num salarydeduction,  num salaryattendance,  num salaryintime,  num finalsalary,  String? salarystartdate,  String? salaryenddate,  List<dynamic> tags,  bool deleted,  bool isackg,  dynamic deletedAt,  List<dynamic> deductiontypes,  List<dynamic> benefittypes,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PayslipModel() when $default != null:
return $default(_that.id,_that.user,_that.company,_that.salary,_that.salaryperday,_that.salarylate,_that.salaryunder,_that.salaryot1,_that.salaryot2,_that.salaryot3,_that.salaryot,_that.salaryssb,_that.unpaidleave,_that.unpaiddeduction,_that.salarybenefit,_that.loan,_that.bonus,_that.salarydeduction,_that.salaryattendance,_that.salaryintime,_that.finalsalary,_that.salarystartdate,_that.salaryenddate,_that.tags,_that.deleted,_that.isackg,_that.deletedAt,_that.deductiontypes,_that.benefittypes,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'userid')  UserDetailsModel user,  String company,  String? salary,  num salaryperday,  num salarylate,  num salaryunder,  num salaryot1,  num salaryot2,  num salaryot3,  num salaryot,  num salaryssb,  num unpaidleave,  num unpaiddeduction,  num salarybenefit,  num loan,  num bonus,  num salarydeduction,  num salaryattendance,  num salaryintime,  num finalsalary,  String? salarystartdate,  String? salaryenddate,  List<dynamic> tags,  bool deleted,  bool isackg,  dynamic deletedAt,  List<dynamic> deductiontypes,  List<dynamic> benefittypes,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _PayslipModel():
return $default(_that.id,_that.user,_that.company,_that.salary,_that.salaryperday,_that.salarylate,_that.salaryunder,_that.salaryot1,_that.salaryot2,_that.salaryot3,_that.salaryot,_that.salaryssb,_that.unpaidleave,_that.unpaiddeduction,_that.salarybenefit,_that.loan,_that.bonus,_that.salarydeduction,_that.salaryattendance,_that.salaryintime,_that.finalsalary,_that.salarystartdate,_that.salaryenddate,_that.tags,_that.deleted,_that.isackg,_that.deletedAt,_that.deductiontypes,_that.benefittypes,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'userid')  UserDetailsModel user,  String company,  String? salary,  num salaryperday,  num salarylate,  num salaryunder,  num salaryot1,  num salaryot2,  num salaryot3,  num salaryot,  num salaryssb,  num unpaidleave,  num unpaiddeduction,  num salarybenefit,  num loan,  num bonus,  num salarydeduction,  num salaryattendance,  num salaryintime,  num finalsalary,  String? salarystartdate,  String? salaryenddate,  List<dynamic> tags,  bool deleted,  bool isackg,  dynamic deletedAt,  List<dynamic> deductiontypes,  List<dynamic> benefittypes,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _PayslipModel() when $default != null:
return $default(_that.id,_that.user,_that.company,_that.salary,_that.salaryperday,_that.salarylate,_that.salaryunder,_that.salaryot1,_that.salaryot2,_that.salaryot3,_that.salaryot,_that.salaryssb,_that.unpaidleave,_that.unpaiddeduction,_that.salarybenefit,_that.loan,_that.bonus,_that.salarydeduction,_that.salaryattendance,_that.salaryintime,_that.finalsalary,_that.salarystartdate,_that.salaryenddate,_that.tags,_that.deleted,_that.isackg,_that.deletedAt,_that.deductiontypes,_that.benefittypes,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PayslipModel implements PayslipModel {
  const _PayslipModel({@JsonKey(name: '_id') required this.id, @JsonKey(name: 'userid') required this.user, required this.company, this.salary, this.salaryperday = 0, this.salarylate = 0, this.salaryunder = 0, this.salaryot1 = 0, this.salaryot2 = 0, this.salaryot3 = 0, this.salaryot = 0, this.salaryssb = 0, this.unpaidleave = 0, this.unpaiddeduction = 0, this.salarybenefit = 0, this.loan = 0, this.bonus = 0, this.salarydeduction = 0, this.salaryattendance = 0, this.salaryintime = 0, this.finalsalary = 0, this.salarystartdate, this.salaryenddate, final  List<dynamic> tags = const [], this.deleted = false, this.isackg = false, this.deletedAt, final  List<dynamic> deductiontypes = const [], final  List<dynamic> benefittypes = const [], this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version}): _tags = tags,_deductiontypes = deductiontypes,_benefittypes = benefittypes;
  factory _PayslipModel.fromJson(Map<String, dynamic> json) => _$PayslipModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'userid') final  UserDetailsModel user;
@override final  String company;
@override final  String? salary;
@override@JsonKey() final  num salaryperday;
@override@JsonKey() final  num salarylate;
@override@JsonKey() final  num salaryunder;
@override@JsonKey() final  num salaryot1;
@override@JsonKey() final  num salaryot2;
@override@JsonKey() final  num salaryot3;
@override@JsonKey() final  num salaryot;
@override@JsonKey() final  num salaryssb;
@override@JsonKey() final  num unpaidleave;
@override@JsonKey() final  num unpaiddeduction;
@override@JsonKey() final  num salarybenefit;
@override@JsonKey() final  num loan;
@override@JsonKey() final  num bonus;
@override@JsonKey() final  num salarydeduction;
@override@JsonKey() final  num salaryattendance;
@override@JsonKey() final  num salaryintime;
@override@JsonKey() final  num finalsalary;
@override final  String? salarystartdate;
@override final  String? salaryenddate;
 final  List<dynamic> _tags;
@override@JsonKey() List<dynamic> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey() final  bool deleted;
@override@JsonKey() final  bool isackg;
@override final  dynamic deletedAt;
 final  List<dynamic> _deductiontypes;
@override@JsonKey() List<dynamic> get deductiontypes {
  if (_deductiontypes is EqualUnmodifiableListView) return _deductiontypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_deductiontypes);
}

 final  List<dynamic> _benefittypes;
@override@JsonKey() List<dynamic> get benefittypes {
  if (_benefittypes is EqualUnmodifiableListView) return _benefittypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_benefittypes);
}

@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PayslipModel&&(identical(other.id, id) || other.id == id)&&(identical(other.user, user) || other.user == user)&&(identical(other.company, company) || other.company == company)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.salaryperday, salaryperday) || other.salaryperday == salaryperday)&&(identical(other.salarylate, salarylate) || other.salarylate == salarylate)&&(identical(other.salaryunder, salaryunder) || other.salaryunder == salaryunder)&&(identical(other.salaryot1, salaryot1) || other.salaryot1 == salaryot1)&&(identical(other.salaryot2, salaryot2) || other.salaryot2 == salaryot2)&&(identical(other.salaryot3, salaryot3) || other.salaryot3 == salaryot3)&&(identical(other.salaryot, salaryot) || other.salaryot == salaryot)&&(identical(other.salaryssb, salaryssb) || other.salaryssb == salaryssb)&&(identical(other.unpaidleave, unpaidleave) || other.unpaidleave == unpaidleave)&&(identical(other.unpaiddeduction, unpaiddeduction) || other.unpaiddeduction == unpaiddeduction)&&(identical(other.salarybenefit, salarybenefit) || other.salarybenefit == salarybenefit)&&(identical(other.loan, loan) || other.loan == loan)&&(identical(other.bonus, bonus) || other.bonus == bonus)&&(identical(other.salarydeduction, salarydeduction) || other.salarydeduction == salarydeduction)&&(identical(other.salaryattendance, salaryattendance) || other.salaryattendance == salaryattendance)&&(identical(other.salaryintime, salaryintime) || other.salaryintime == salaryintime)&&(identical(other.finalsalary, finalsalary) || other.finalsalary == finalsalary)&&(identical(other.salarystartdate, salarystartdate) || other.salarystartdate == salarystartdate)&&(identical(other.salaryenddate, salaryenddate) || other.salaryenddate == salaryenddate)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.isackg, isackg) || other.isackg == isackg)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other._deductiontypes, _deductiontypes)&&const DeepCollectionEquality().equals(other._benefittypes, _benefittypes)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,user,company,salary,salaryperday,salarylate,salaryunder,salaryot1,salaryot2,salaryot3,salaryot,salaryssb,unpaidleave,unpaiddeduction,salarybenefit,loan,bonus,salarydeduction,salaryattendance,salaryintime,finalsalary,salarystartdate,salaryenddate,const DeepCollectionEquality().hash(_tags),deleted,isackg,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(_deductiontypes),const DeepCollectionEquality().hash(_benefittypes),createdAt,updatedAt,version]);

@override
String toString() {
  return 'PayslipModel(id: $id, user: $user, company: $company, salary: $salary, salaryperday: $salaryperday, salarylate: $salarylate, salaryunder: $salaryunder, salaryot1: $salaryot1, salaryot2: $salaryot2, salaryot3: $salaryot3, salaryot: $salaryot, salaryssb: $salaryssb, unpaidleave: $unpaidleave, unpaiddeduction: $unpaiddeduction, salarybenefit: $salarybenefit, loan: $loan, bonus: $bonus, salarydeduction: $salarydeduction, salaryattendance: $salaryattendance, salaryintime: $salaryintime, finalsalary: $finalsalary, salarystartdate: $salarystartdate, salaryenddate: $salaryenddate, tags: $tags, deleted: $deleted, isackg: $isackg, deletedAt: $deletedAt, deductiontypes: $deductiontypes, benefittypes: $benefittypes, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$PayslipModelCopyWith<$Res> implements $PayslipModelCopyWith<$Res> {
  factory _$PayslipModelCopyWith(_PayslipModel value, $Res Function(_PayslipModel) _then) = __$PayslipModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'userid') UserDetailsModel user, String company, String? salary, num salaryperday, num salarylate, num salaryunder, num salaryot1, num salaryot2, num salaryot3, num salaryot, num salaryssb, num unpaidleave, num unpaiddeduction, num salarybenefit, num loan, num bonus, num salarydeduction, num salaryattendance, num salaryintime, num finalsalary, String? salarystartdate, String? salaryenddate, List<dynamic> tags, bool deleted, bool isackg, dynamic deletedAt, List<dynamic> deductiontypes, List<dynamic> benefittypes, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version
});


@override $UserDetailsModelCopyWith<$Res> get user;

}
/// @nodoc
class __$PayslipModelCopyWithImpl<$Res>
    implements _$PayslipModelCopyWith<$Res> {
  __$PayslipModelCopyWithImpl(this._self, this._then);

  final _PayslipModel _self;
  final $Res Function(_PayslipModel) _then;

/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? user = null,Object? company = null,Object? salary = freezed,Object? salaryperday = null,Object? salarylate = null,Object? salaryunder = null,Object? salaryot1 = null,Object? salaryot2 = null,Object? salaryot3 = null,Object? salaryot = null,Object? salaryssb = null,Object? unpaidleave = null,Object? unpaiddeduction = null,Object? salarybenefit = null,Object? loan = null,Object? bonus = null,Object? salarydeduction = null,Object? salaryattendance = null,Object? salaryintime = null,Object? finalsalary = null,Object? salarystartdate = freezed,Object? salaryenddate = freezed,Object? tags = null,Object? deleted = null,Object? isackg = null,Object? deletedAt = freezed,Object? deductiontypes = null,Object? benefittypes = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_PayslipModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetailsModel,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,salary: freezed == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as String?,salaryperday: null == salaryperday ? _self.salaryperday : salaryperday // ignore: cast_nullable_to_non_nullable
as num,salarylate: null == salarylate ? _self.salarylate : salarylate // ignore: cast_nullable_to_non_nullable
as num,salaryunder: null == salaryunder ? _self.salaryunder : salaryunder // ignore: cast_nullable_to_non_nullable
as num,salaryot1: null == salaryot1 ? _self.salaryot1 : salaryot1 // ignore: cast_nullable_to_non_nullable
as num,salaryot2: null == salaryot2 ? _self.salaryot2 : salaryot2 // ignore: cast_nullable_to_non_nullable
as num,salaryot3: null == salaryot3 ? _self.salaryot3 : salaryot3 // ignore: cast_nullable_to_non_nullable
as num,salaryot: null == salaryot ? _self.salaryot : salaryot // ignore: cast_nullable_to_non_nullable
as num,salaryssb: null == salaryssb ? _self.salaryssb : salaryssb // ignore: cast_nullable_to_non_nullable
as num,unpaidleave: null == unpaidleave ? _self.unpaidleave : unpaidleave // ignore: cast_nullable_to_non_nullable
as num,unpaiddeduction: null == unpaiddeduction ? _self.unpaiddeduction : unpaiddeduction // ignore: cast_nullable_to_non_nullable
as num,salarybenefit: null == salarybenefit ? _self.salarybenefit : salarybenefit // ignore: cast_nullable_to_non_nullable
as num,loan: null == loan ? _self.loan : loan // ignore: cast_nullable_to_non_nullable
as num,bonus: null == bonus ? _self.bonus : bonus // ignore: cast_nullable_to_non_nullable
as num,salarydeduction: null == salarydeduction ? _self.salarydeduction : salarydeduction // ignore: cast_nullable_to_non_nullable
as num,salaryattendance: null == salaryattendance ? _self.salaryattendance : salaryattendance // ignore: cast_nullable_to_non_nullable
as num,salaryintime: null == salaryintime ? _self.salaryintime : salaryintime // ignore: cast_nullable_to_non_nullable
as num,finalsalary: null == finalsalary ? _self.finalsalary : finalsalary // ignore: cast_nullable_to_non_nullable
as num,salarystartdate: freezed == salarystartdate ? _self.salarystartdate : salarystartdate // ignore: cast_nullable_to_non_nullable
as String?,salaryenddate: freezed == salaryenddate ? _self.salaryenddate : salaryenddate // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,isackg: null == isackg ? _self.isackg : isackg // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,deductiontypes: null == deductiontypes ? _self._deductiontypes : deductiontypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,benefittypes: null == benefittypes ? _self._benefittypes : benefittypes // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of PayslipModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<$Res> get user {
  
  return $UserDetailsModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
