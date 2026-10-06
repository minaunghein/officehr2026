// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveType {

 String get id; String get title; String get titleMm; String get code; String get accrualType; double get entitlementDays; double get maxCarryForward; int get carryForwardExpiry; int get minServiceDays; bool get requiresApproval; bool get requiresAttachment; bool get allowHalfDay; int get advanceNoticeDays; bool get isDefault; String get companyId; bool get isActive;
/// Create a copy of LeaveType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveTypeCopyWith<LeaveType> get copyWith => _$LeaveTypeCopyWithImpl<LeaveType>(this as LeaveType, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.code, code) || other.code == code)&&(identical(other.accrualType, accrualType) || other.accrualType == accrualType)&&(identical(other.entitlementDays, entitlementDays) || other.entitlementDays == entitlementDays)&&(identical(other.maxCarryForward, maxCarryForward) || other.maxCarryForward == maxCarryForward)&&(identical(other.carryForwardExpiry, carryForwardExpiry) || other.carryForwardExpiry == carryForwardExpiry)&&(identical(other.minServiceDays, minServiceDays) || other.minServiceDays == minServiceDays)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&(identical(other.requiresAttachment, requiresAttachment) || other.requiresAttachment == requiresAttachment)&&(identical(other.allowHalfDay, allowHalfDay) || other.allowHalfDay == allowHalfDay)&&(identical(other.advanceNoticeDays, advanceNoticeDays) || other.advanceNoticeDays == advanceNoticeDays)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,titleMm,code,accrualType,entitlementDays,maxCarryForward,carryForwardExpiry,minServiceDays,requiresApproval,requiresAttachment,allowHalfDay,advanceNoticeDays,isDefault,companyId,isActive);

@override
String toString() {
  return 'LeaveType(id: $id, title: $title, titleMm: $titleMm, code: $code, accrualType: $accrualType, entitlementDays: $entitlementDays, maxCarryForward: $maxCarryForward, carryForwardExpiry: $carryForwardExpiry, minServiceDays: $minServiceDays, requiresApproval: $requiresApproval, requiresAttachment: $requiresAttachment, allowHalfDay: $allowHalfDay, advanceNoticeDays: $advanceNoticeDays, isDefault: $isDefault, companyId: $companyId, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $LeaveTypeCopyWith<$Res>  {
  factory $LeaveTypeCopyWith(LeaveType value, $Res Function(LeaveType) _then) = _$LeaveTypeCopyWithImpl;
@useResult
$Res call({
 String id, String title, String titleMm, String code, String accrualType, double entitlementDays, double maxCarryForward, int carryForwardExpiry, int minServiceDays, bool requiresApproval, bool requiresAttachment, bool allowHalfDay, int advanceNoticeDays, bool isDefault, String companyId, bool isActive
});




}
/// @nodoc
class _$LeaveTypeCopyWithImpl<$Res>
    implements $LeaveTypeCopyWith<$Res> {
  _$LeaveTypeCopyWithImpl(this._self, this._then);

  final LeaveType _self;
  final $Res Function(LeaveType) _then;

/// Create a copy of LeaveType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? titleMm = null,Object? code = null,Object? accrualType = null,Object? entitlementDays = null,Object? maxCarryForward = null,Object? carryForwardExpiry = null,Object? minServiceDays = null,Object? requiresApproval = null,Object? requiresAttachment = null,Object? allowHalfDay = null,Object? advanceNoticeDays = null,Object? isDefault = null,Object? companyId = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,accrualType: null == accrualType ? _self.accrualType : accrualType // ignore: cast_nullable_to_non_nullable
as String,entitlementDays: null == entitlementDays ? _self.entitlementDays : entitlementDays // ignore: cast_nullable_to_non_nullable
as double,maxCarryForward: null == maxCarryForward ? _self.maxCarryForward : maxCarryForward // ignore: cast_nullable_to_non_nullable
as double,carryForwardExpiry: null == carryForwardExpiry ? _self.carryForwardExpiry : carryForwardExpiry // ignore: cast_nullable_to_non_nullable
as int,minServiceDays: null == minServiceDays ? _self.minServiceDays : minServiceDays // ignore: cast_nullable_to_non_nullable
as int,requiresApproval: null == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool,requiresAttachment: null == requiresAttachment ? _self.requiresAttachment : requiresAttachment // ignore: cast_nullable_to_non_nullable
as bool,allowHalfDay: null == allowHalfDay ? _self.allowHalfDay : allowHalfDay // ignore: cast_nullable_to_non_nullable
as bool,advanceNoticeDays: null == advanceNoticeDays ? _self.advanceNoticeDays : advanceNoticeDays // ignore: cast_nullable_to_non_nullable
as int,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveType].
extension LeaveTypePatterns on LeaveType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveType value)  $default,){
final _that = this;
switch (_that) {
case _LeaveType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveType value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String titleMm,  String code,  String accrualType,  double entitlementDays,  double maxCarryForward,  int carryForwardExpiry,  int minServiceDays,  bool requiresApproval,  bool requiresAttachment,  bool allowHalfDay,  int advanceNoticeDays,  bool isDefault,  String companyId,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveType() when $default != null:
return $default(_that.id,_that.title,_that.titleMm,_that.code,_that.accrualType,_that.entitlementDays,_that.maxCarryForward,_that.carryForwardExpiry,_that.minServiceDays,_that.requiresApproval,_that.requiresAttachment,_that.allowHalfDay,_that.advanceNoticeDays,_that.isDefault,_that.companyId,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String titleMm,  String code,  String accrualType,  double entitlementDays,  double maxCarryForward,  int carryForwardExpiry,  int minServiceDays,  bool requiresApproval,  bool requiresAttachment,  bool allowHalfDay,  int advanceNoticeDays,  bool isDefault,  String companyId,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _LeaveType():
return $default(_that.id,_that.title,_that.titleMm,_that.code,_that.accrualType,_that.entitlementDays,_that.maxCarryForward,_that.carryForwardExpiry,_that.minServiceDays,_that.requiresApproval,_that.requiresAttachment,_that.allowHalfDay,_that.advanceNoticeDays,_that.isDefault,_that.companyId,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String titleMm,  String code,  String accrualType,  double entitlementDays,  double maxCarryForward,  int carryForwardExpiry,  int minServiceDays,  bool requiresApproval,  bool requiresAttachment,  bool allowHalfDay,  int advanceNoticeDays,  bool isDefault,  String companyId,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _LeaveType() when $default != null:
return $default(_that.id,_that.title,_that.titleMm,_that.code,_that.accrualType,_that.entitlementDays,_that.maxCarryForward,_that.carryForwardExpiry,_that.minServiceDays,_that.requiresApproval,_that.requiresAttachment,_that.allowHalfDay,_that.advanceNoticeDays,_that.isDefault,_that.companyId,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveType extends LeaveType {
  const _LeaveType({required this.id, this.title = '', this.titleMm = '', this.code = '', this.accrualType = '', this.entitlementDays = 0, this.maxCarryForward = 0, this.carryForwardExpiry = 0, this.minServiceDays = 0, this.requiresApproval = true, this.requiresAttachment = false, this.allowHalfDay = true, this.advanceNoticeDays = 0, this.isDefault = false, this.companyId = '', this.isActive = true}): super._();
  

@override final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String titleMm;
@override@JsonKey() final  String code;
@override@JsonKey() final  String accrualType;
@override@JsonKey() final  double entitlementDays;
@override@JsonKey() final  double maxCarryForward;
@override@JsonKey() final  int carryForwardExpiry;
@override@JsonKey() final  int minServiceDays;
@override@JsonKey() final  bool requiresApproval;
@override@JsonKey() final  bool requiresAttachment;
@override@JsonKey() final  bool allowHalfDay;
@override@JsonKey() final  int advanceNoticeDays;
@override@JsonKey() final  bool isDefault;
@override@JsonKey() final  String companyId;
@override@JsonKey() final  bool isActive;

/// Create a copy of LeaveType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveTypeCopyWith<_LeaveType> get copyWith => __$LeaveTypeCopyWithImpl<_LeaveType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveType&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.code, code) || other.code == code)&&(identical(other.accrualType, accrualType) || other.accrualType == accrualType)&&(identical(other.entitlementDays, entitlementDays) || other.entitlementDays == entitlementDays)&&(identical(other.maxCarryForward, maxCarryForward) || other.maxCarryForward == maxCarryForward)&&(identical(other.carryForwardExpiry, carryForwardExpiry) || other.carryForwardExpiry == carryForwardExpiry)&&(identical(other.minServiceDays, minServiceDays) || other.minServiceDays == minServiceDays)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&(identical(other.requiresAttachment, requiresAttachment) || other.requiresAttachment == requiresAttachment)&&(identical(other.allowHalfDay, allowHalfDay) || other.allowHalfDay == allowHalfDay)&&(identical(other.advanceNoticeDays, advanceNoticeDays) || other.advanceNoticeDays == advanceNoticeDays)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,titleMm,code,accrualType,entitlementDays,maxCarryForward,carryForwardExpiry,minServiceDays,requiresApproval,requiresAttachment,allowHalfDay,advanceNoticeDays,isDefault,companyId,isActive);

@override
String toString() {
  return 'LeaveType(id: $id, title: $title, titleMm: $titleMm, code: $code, accrualType: $accrualType, entitlementDays: $entitlementDays, maxCarryForward: $maxCarryForward, carryForwardExpiry: $carryForwardExpiry, minServiceDays: $minServiceDays, requiresApproval: $requiresApproval, requiresAttachment: $requiresAttachment, allowHalfDay: $allowHalfDay, advanceNoticeDays: $advanceNoticeDays, isDefault: $isDefault, companyId: $companyId, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$LeaveTypeCopyWith<$Res> implements $LeaveTypeCopyWith<$Res> {
  factory _$LeaveTypeCopyWith(_LeaveType value, $Res Function(_LeaveType) _then) = __$LeaveTypeCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String titleMm, String code, String accrualType, double entitlementDays, double maxCarryForward, int carryForwardExpiry, int minServiceDays, bool requiresApproval, bool requiresAttachment, bool allowHalfDay, int advanceNoticeDays, bool isDefault, String companyId, bool isActive
});




}
/// @nodoc
class __$LeaveTypeCopyWithImpl<$Res>
    implements _$LeaveTypeCopyWith<$Res> {
  __$LeaveTypeCopyWithImpl(this._self, this._then);

  final _LeaveType _self;
  final $Res Function(_LeaveType) _then;

/// Create a copy of LeaveType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? titleMm = null,Object? code = null,Object? accrualType = null,Object? entitlementDays = null,Object? maxCarryForward = null,Object? carryForwardExpiry = null,Object? minServiceDays = null,Object? requiresApproval = null,Object? requiresAttachment = null,Object? allowHalfDay = null,Object? advanceNoticeDays = null,Object? isDefault = null,Object? companyId = null,Object? isActive = null,}) {
  return _then(_LeaveType(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,accrualType: null == accrualType ? _self.accrualType : accrualType // ignore: cast_nullable_to_non_nullable
as String,entitlementDays: null == entitlementDays ? _self.entitlementDays : entitlementDays // ignore: cast_nullable_to_non_nullable
as double,maxCarryForward: null == maxCarryForward ? _self.maxCarryForward : maxCarryForward // ignore: cast_nullable_to_non_nullable
as double,carryForwardExpiry: null == carryForwardExpiry ? _self.carryForwardExpiry : carryForwardExpiry // ignore: cast_nullable_to_non_nullable
as int,minServiceDays: null == minServiceDays ? _self.minServiceDays : minServiceDays // ignore: cast_nullable_to_non_nullable
as int,requiresApproval: null == requiresApproval ? _self.requiresApproval : requiresApproval // ignore: cast_nullable_to_non_nullable
as bool,requiresAttachment: null == requiresAttachment ? _self.requiresAttachment : requiresAttachment // ignore: cast_nullable_to_non_nullable
as bool,allowHalfDay: null == allowHalfDay ? _self.allowHalfDay : allowHalfDay // ignore: cast_nullable_to_non_nullable
as bool,advanceNoticeDays: null == advanceNoticeDays ? _self.advanceNoticeDays : advanceNoticeDays // ignore: cast_nullable_to_non_nullable
as int,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
