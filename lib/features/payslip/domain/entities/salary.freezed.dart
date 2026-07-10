// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'salary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtRate {

 String? get id; num get ot1Rate; num get ot2Rate; num get ot3Rate;
/// Create a copy of OtRate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtRateCopyWith<OtRate> get copyWith => _$OtRateCopyWithImpl<OtRate>(this as OtRate, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtRate&&(identical(other.id, id) || other.id == id)&&(identical(other.ot1Rate, ot1Rate) || other.ot1Rate == ot1Rate)&&(identical(other.ot2Rate, ot2Rate) || other.ot2Rate == ot2Rate)&&(identical(other.ot3Rate, ot3Rate) || other.ot3Rate == ot3Rate));
}


@override
int get hashCode => Object.hash(runtimeType,id,ot1Rate,ot2Rate,ot3Rate);

@override
String toString() {
  return 'OtRate(id: $id, ot1Rate: $ot1Rate, ot2Rate: $ot2Rate, ot3Rate: $ot3Rate)';
}


}

/// @nodoc
abstract mixin class $OtRateCopyWith<$Res>  {
  factory $OtRateCopyWith(OtRate value, $Res Function(OtRate) _then) = _$OtRateCopyWithImpl;
@useResult
$Res call({
 String? id, num ot1Rate, num ot2Rate, num ot3Rate
});




}
/// @nodoc
class _$OtRateCopyWithImpl<$Res>
    implements $OtRateCopyWith<$Res> {
  _$OtRateCopyWithImpl(this._self, this._then);

  final OtRate _self;
  final $Res Function(OtRate) _then;

/// Create a copy of OtRate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? ot1Rate = null,Object? ot2Rate = null,Object? ot3Rate = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,ot1Rate: null == ot1Rate ? _self.ot1Rate : ot1Rate // ignore: cast_nullable_to_non_nullable
as num,ot2Rate: null == ot2Rate ? _self.ot2Rate : ot2Rate // ignore: cast_nullable_to_non_nullable
as num,ot3Rate: null == ot3Rate ? _self.ot3Rate : ot3Rate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [OtRate].
extension OtRatePatterns on OtRate {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtRate value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtRate() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtRate value)  $default,){
final _that = this;
switch (_that) {
case _OtRate():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtRate value)?  $default,){
final _that = this;
switch (_that) {
case _OtRate() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  num ot1Rate,  num ot2Rate,  num ot3Rate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtRate() when $default != null:
return $default(_that.id,_that.ot1Rate,_that.ot2Rate,_that.ot3Rate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  num ot1Rate,  num ot2Rate,  num ot3Rate)  $default,) {final _that = this;
switch (_that) {
case _OtRate():
return $default(_that.id,_that.ot1Rate,_that.ot2Rate,_that.ot3Rate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  num ot1Rate,  num ot2Rate,  num ot3Rate)?  $default,) {final _that = this;
switch (_that) {
case _OtRate() when $default != null:
return $default(_that.id,_that.ot1Rate,_that.ot2Rate,_that.ot3Rate);case _:
  return null;

}
}

}

/// @nodoc


class _OtRate implements OtRate {
  const _OtRate({this.id, required this.ot1Rate, required this.ot2Rate, required this.ot3Rate});
  

@override final  String? id;
@override final  num ot1Rate;
@override final  num ot2Rate;
@override final  num ot3Rate;

/// Create a copy of OtRate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtRateCopyWith<_OtRate> get copyWith => __$OtRateCopyWithImpl<_OtRate>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtRate&&(identical(other.id, id) || other.id == id)&&(identical(other.ot1Rate, ot1Rate) || other.ot1Rate == ot1Rate)&&(identical(other.ot2Rate, ot2Rate) || other.ot2Rate == ot2Rate)&&(identical(other.ot3Rate, ot3Rate) || other.ot3Rate == ot3Rate));
}


@override
int get hashCode => Object.hash(runtimeType,id,ot1Rate,ot2Rate,ot3Rate);

@override
String toString() {
  return 'OtRate(id: $id, ot1Rate: $ot1Rate, ot2Rate: $ot2Rate, ot3Rate: $ot3Rate)';
}


}

/// @nodoc
abstract mixin class _$OtRateCopyWith<$Res> implements $OtRateCopyWith<$Res> {
  factory _$OtRateCopyWith(_OtRate value, $Res Function(_OtRate) _then) = __$OtRateCopyWithImpl;
@override @useResult
$Res call({
 String? id, num ot1Rate, num ot2Rate, num ot3Rate
});




}
/// @nodoc
class __$OtRateCopyWithImpl<$Res>
    implements _$OtRateCopyWith<$Res> {
  __$OtRateCopyWithImpl(this._self, this._then);

  final _OtRate _self;
  final $Res Function(_OtRate) _then;

/// Create a copy of OtRate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? ot1Rate = null,Object? ot2Rate = null,Object? ot3Rate = null,}) {
  return _then(_OtRate(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,ot1Rate: null == ot1Rate ? _self.ot1Rate : ot1Rate // ignore: cast_nullable_to_non_nullable
as num,ot2Rate: null == ot2Rate ? _self.ot2Rate : ot2Rate // ignore: cast_nullable_to_non_nullable
as num,ot3Rate: null == ot3Rate ? _self.ot3Rate : ot3Rate // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

/// @nodoc
mixin _$Salary {

 String get id; String get userId; String get companyId; num get salary; bool get ssb; OtRate? get otRate; num get otAmount; bool get isOtFlat; List<dynamic> get tags; bool get isDeleted; dynamic get deletedAt; String? get createdAt; String? get updatedAt; int? get paymentCode; int? get paymentNum;
/// Create a copy of Salary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalaryCopyWith<Salary> get copyWith => _$SalaryCopyWithImpl<Salary>(this as Salary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Salary&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.ssb, ssb) || other.ssb == ssb)&&(identical(other.otRate, otRate) || other.otRate == otRate)&&(identical(other.otAmount, otAmount) || other.otAmount == otAmount)&&(identical(other.isOtFlat, isOtFlat) || other.isOtFlat == isOtFlat)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentNum, paymentNum) || other.paymentNum == paymentNum));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,salary,ssb,otRate,otAmount,isOtFlat,const DeepCollectionEquality().hash(tags),isDeleted,const DeepCollectionEquality().hash(deletedAt),createdAt,updatedAt,paymentCode,paymentNum);

@override
String toString() {
  return 'Salary(id: $id, userId: $userId, companyId: $companyId, salary: $salary, ssb: $ssb, otRate: $otRate, otAmount: $otAmount, isOtFlat: $isOtFlat, tags: $tags, isDeleted: $isDeleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, paymentCode: $paymentCode, paymentNum: $paymentNum)';
}


}

/// @nodoc
abstract mixin class $SalaryCopyWith<$Res>  {
  factory $SalaryCopyWith(Salary value, $Res Function(Salary) _then) = _$SalaryCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String companyId, num salary, bool ssb, OtRate? otRate, num otAmount, bool isOtFlat, List<dynamic> tags, bool isDeleted, dynamic deletedAt, String? createdAt, String? updatedAt, int? paymentCode, int? paymentNum
});


$OtRateCopyWith<$Res>? get otRate;

}
/// @nodoc
class _$SalaryCopyWithImpl<$Res>
    implements $SalaryCopyWith<$Res> {
  _$SalaryCopyWithImpl(this._self, this._then);

  final Salary _self;
  final $Res Function(Salary) _then;

/// Create a copy of Salary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? salary = null,Object? ssb = null,Object? otRate = freezed,Object? otAmount = null,Object? isOtFlat = null,Object? tags = null,Object? isDeleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? paymentCode = freezed,Object? paymentNum = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as num,ssb: null == ssb ? _self.ssb : ssb // ignore: cast_nullable_to_non_nullable
as bool,otRate: freezed == otRate ? _self.otRate : otRate // ignore: cast_nullable_to_non_nullable
as OtRate?,otAmount: null == otAmount ? _self.otAmount : otAmount // ignore: cast_nullable_to_non_nullable
as num,isOtFlat: null == isOtFlat ? _self.isOtFlat : isOtFlat // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,paymentCode: freezed == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as int?,paymentNum: freezed == paymentNum ? _self.paymentNum : paymentNum // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of Salary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtRateCopyWith<$Res>? get otRate {
    if (_self.otRate == null) {
    return null;
  }

  return $OtRateCopyWith<$Res>(_self.otRate!, (value) {
    return _then(_self.copyWith(otRate: value));
  });
}
}


/// Adds pattern-matching-related methods to [Salary].
extension SalaryPatterns on Salary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Salary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Salary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Salary value)  $default,){
final _that = this;
switch (_that) {
case _Salary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Salary value)?  $default,){
final _that = this;
switch (_that) {
case _Salary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String companyId,  num salary,  bool ssb,  OtRate? otRate,  num otAmount,  bool isOtFlat,  List<dynamic> tags,  bool isDeleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt,  int? paymentCode,  int? paymentNum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Salary() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.salary,_that.ssb,_that.otRate,_that.otAmount,_that.isOtFlat,_that.tags,_that.isDeleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.paymentCode,_that.paymentNum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String companyId,  num salary,  bool ssb,  OtRate? otRate,  num otAmount,  bool isOtFlat,  List<dynamic> tags,  bool isDeleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt,  int? paymentCode,  int? paymentNum)  $default,) {final _that = this;
switch (_that) {
case _Salary():
return $default(_that.id,_that.userId,_that.companyId,_that.salary,_that.ssb,_that.otRate,_that.otAmount,_that.isOtFlat,_that.tags,_that.isDeleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.paymentCode,_that.paymentNum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String companyId,  num salary,  bool ssb,  OtRate? otRate,  num otAmount,  bool isOtFlat,  List<dynamic> tags,  bool isDeleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt,  int? paymentCode,  int? paymentNum)?  $default,) {final _that = this;
switch (_that) {
case _Salary() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.salary,_that.ssb,_that.otRate,_that.otAmount,_that.isOtFlat,_that.tags,_that.isDeleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.paymentCode,_that.paymentNum);case _:
  return null;

}
}

}

/// @nodoc


class _Salary implements Salary {
  const _Salary({required this.id, required this.userId, required this.companyId, required this.salary, required this.ssb, this.otRate, required this.otAmount, required this.isOtFlat, final  List<dynamic> tags = const [], required this.isDeleted, this.deletedAt, this.createdAt, this.updatedAt, this.paymentCode, this.paymentNum}): _tags = tags;
  

@override final  String id;
@override final  String userId;
@override final  String companyId;
@override final  num salary;
@override final  bool ssb;
@override final  OtRate? otRate;
@override final  num otAmount;
@override final  bool isOtFlat;
 final  List<dynamic> _tags;
@override@JsonKey() List<dynamic> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  bool isDeleted;
@override final  dynamic deletedAt;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  int? paymentCode;
@override final  int? paymentNum;

/// Create a copy of Salary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalaryCopyWith<_Salary> get copyWith => __$SalaryCopyWithImpl<_Salary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Salary&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.salary, salary) || other.salary == salary)&&(identical(other.ssb, ssb) || other.ssb == ssb)&&(identical(other.otRate, otRate) || other.otRate == otRate)&&(identical(other.otAmount, otAmount) || other.otAmount == otAmount)&&(identical(other.isOtFlat, isOtFlat) || other.isOtFlat == isOtFlat)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.paymentCode, paymentCode) || other.paymentCode == paymentCode)&&(identical(other.paymentNum, paymentNum) || other.paymentNum == paymentNum));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,salary,ssb,otRate,otAmount,isOtFlat,const DeepCollectionEquality().hash(_tags),isDeleted,const DeepCollectionEquality().hash(deletedAt),createdAt,updatedAt,paymentCode,paymentNum);

@override
String toString() {
  return 'Salary(id: $id, userId: $userId, companyId: $companyId, salary: $salary, ssb: $ssb, otRate: $otRate, otAmount: $otAmount, isOtFlat: $isOtFlat, tags: $tags, isDeleted: $isDeleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, paymentCode: $paymentCode, paymentNum: $paymentNum)';
}


}

/// @nodoc
abstract mixin class _$SalaryCopyWith<$Res> implements $SalaryCopyWith<$Res> {
  factory _$SalaryCopyWith(_Salary value, $Res Function(_Salary) _then) = __$SalaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String companyId, num salary, bool ssb, OtRate? otRate, num otAmount, bool isOtFlat, List<dynamic> tags, bool isDeleted, dynamic deletedAt, String? createdAt, String? updatedAt, int? paymentCode, int? paymentNum
});


@override $OtRateCopyWith<$Res>? get otRate;

}
/// @nodoc
class __$SalaryCopyWithImpl<$Res>
    implements _$SalaryCopyWith<$Res> {
  __$SalaryCopyWithImpl(this._self, this._then);

  final _Salary _self;
  final $Res Function(_Salary) _then;

/// Create a copy of Salary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? salary = null,Object? ssb = null,Object? otRate = freezed,Object? otAmount = null,Object? isOtFlat = null,Object? tags = null,Object? isDeleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? paymentCode = freezed,Object? paymentNum = freezed,}) {
  return _then(_Salary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,salary: null == salary ? _self.salary : salary // ignore: cast_nullable_to_non_nullable
as num,ssb: null == ssb ? _self.ssb : ssb // ignore: cast_nullable_to_non_nullable
as bool,otRate: freezed == otRate ? _self.otRate : otRate // ignore: cast_nullable_to_non_nullable
as OtRate?,otAmount: null == otAmount ? _self.otAmount : otAmount // ignore: cast_nullable_to_non_nullable
as num,isOtFlat: null == isOtFlat ? _self.isOtFlat : isOtFlat // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<dynamic>,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,paymentCode: freezed == paymentCode ? _self.paymentCode : paymentCode // ignore: cast_nullable_to_non_nullable
as int?,paymentNum: freezed == paymentNum ? _self.paymentNum : paymentNum // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of Salary
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OtRateCopyWith<$Res>? get otRate {
    if (_self.otRate == null) {
    return null;
  }

  return $OtRateCopyWith<$Res>(_self.otRate!, (value) {
    return _then(_self.copyWith(otRate: value));
  });
}
}

// dart format on
