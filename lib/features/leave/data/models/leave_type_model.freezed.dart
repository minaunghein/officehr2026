// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_type_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveTypeModel {

@JsonKey(readValue: readMongoId) String get id; String get title;@JsonKey(name: 'title_mm') String get titleMm; String get code;@JsonKey(name: 'accrual_type') String get accrualType;@JsonKey(name: 'entitlement_days') double get entitlementDays;@JsonKey(name: 'max_carry_forward') double get maxCarryForward;@JsonKey(name: 'carry_forward_expiry') int get carryForwardExpiry;@JsonKey(name: 'min_service_days') int get minServiceDays;@JsonKey(name: 'requires_approval') bool get requiresApproval;@JsonKey(name: 'requires_attachment') bool get requiresAttachment;@JsonKey(name: 'allow_half_day') bool get allowHalfDay;@JsonKey(name: 'advance_notice_days') int get advanceNoticeDays;@JsonKey(name: 'is_default') bool get isDefault;@JsonKey(name: 'company_id') String get companyId;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of LeaveTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveTypeModelCopyWith<LeaveTypeModel> get copyWith => _$LeaveTypeModelCopyWithImpl<LeaveTypeModel>(this as LeaveTypeModel, _$identity);

  /// Serializes this LeaveTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.code, code) || other.code == code)&&(identical(other.accrualType, accrualType) || other.accrualType == accrualType)&&(identical(other.entitlementDays, entitlementDays) || other.entitlementDays == entitlementDays)&&(identical(other.maxCarryForward, maxCarryForward) || other.maxCarryForward == maxCarryForward)&&(identical(other.carryForwardExpiry, carryForwardExpiry) || other.carryForwardExpiry == carryForwardExpiry)&&(identical(other.minServiceDays, minServiceDays) || other.minServiceDays == minServiceDays)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&(identical(other.requiresAttachment, requiresAttachment) || other.requiresAttachment == requiresAttachment)&&(identical(other.allowHalfDay, allowHalfDay) || other.allowHalfDay == allowHalfDay)&&(identical(other.advanceNoticeDays, advanceNoticeDays) || other.advanceNoticeDays == advanceNoticeDays)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleMm,code,accrualType,entitlementDays,maxCarryForward,carryForwardExpiry,minServiceDays,requiresApproval,requiresAttachment,allowHalfDay,advanceNoticeDays,isDefault,companyId,isActive);

@override
String toString() {
  return 'LeaveTypeModel(id: $id, title: $title, titleMm: $titleMm, code: $code, accrualType: $accrualType, entitlementDays: $entitlementDays, maxCarryForward: $maxCarryForward, carryForwardExpiry: $carryForwardExpiry, minServiceDays: $minServiceDays, requiresApproval: $requiresApproval, requiresAttachment: $requiresAttachment, allowHalfDay: $allowHalfDay, advanceNoticeDays: $advanceNoticeDays, isDefault: $isDefault, companyId: $companyId, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $LeaveTypeModelCopyWith<$Res>  {
  factory $LeaveTypeModelCopyWith(LeaveTypeModel value, $Res Function(LeaveTypeModel) _then) = _$LeaveTypeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: readMongoId) String id, String title,@JsonKey(name: 'title_mm') String titleMm, String code,@JsonKey(name: 'accrual_type') String accrualType,@JsonKey(name: 'entitlement_days') double entitlementDays,@JsonKey(name: 'max_carry_forward') double maxCarryForward,@JsonKey(name: 'carry_forward_expiry') int carryForwardExpiry,@JsonKey(name: 'min_service_days') int minServiceDays,@JsonKey(name: 'requires_approval') bool requiresApproval,@JsonKey(name: 'requires_attachment') bool requiresAttachment,@JsonKey(name: 'allow_half_day') bool allowHalfDay,@JsonKey(name: 'advance_notice_days') int advanceNoticeDays,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$LeaveTypeModelCopyWithImpl<$Res>
    implements $LeaveTypeModelCopyWith<$Res> {
  _$LeaveTypeModelCopyWithImpl(this._self, this._then);

  final LeaveTypeModel _self;
  final $Res Function(LeaveTypeModel) _then;

/// Create a copy of LeaveTypeModel
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


/// Adds pattern-matching-related methods to [LeaveTypeModel].
extension LeaveTypeModelPatterns on LeaveTypeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveTypeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaveTypeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveTypeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String code, @JsonKey(name: 'accrual_type')  String accrualType, @JsonKey(name: 'entitlement_days')  double entitlementDays, @JsonKey(name: 'max_carry_forward')  double maxCarryForward, @JsonKey(name: 'carry_forward_expiry')  int carryForwardExpiry, @JsonKey(name: 'min_service_days')  int minServiceDays, @JsonKey(name: 'requires_approval')  bool requiresApproval, @JsonKey(name: 'requires_attachment')  bool requiresAttachment, @JsonKey(name: 'allow_half_day')  bool allowHalfDay, @JsonKey(name: 'advance_notice_days')  int advanceNoticeDays, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveTypeModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String code, @JsonKey(name: 'accrual_type')  String accrualType, @JsonKey(name: 'entitlement_days')  double entitlementDays, @JsonKey(name: 'max_carry_forward')  double maxCarryForward, @JsonKey(name: 'carry_forward_expiry')  int carryForwardExpiry, @JsonKey(name: 'min_service_days')  int minServiceDays, @JsonKey(name: 'requires_approval')  bool requiresApproval, @JsonKey(name: 'requires_attachment')  bool requiresAttachment, @JsonKey(name: 'allow_half_day')  bool allowHalfDay, @JsonKey(name: 'advance_notice_days')  int advanceNoticeDays, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _LeaveTypeModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: readMongoId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String code, @JsonKey(name: 'accrual_type')  String accrualType, @JsonKey(name: 'entitlement_days')  double entitlementDays, @JsonKey(name: 'max_carry_forward')  double maxCarryForward, @JsonKey(name: 'carry_forward_expiry')  int carryForwardExpiry, @JsonKey(name: 'min_service_days')  int minServiceDays, @JsonKey(name: 'requires_approval')  bool requiresApproval, @JsonKey(name: 'requires_attachment')  bool requiresAttachment, @JsonKey(name: 'allow_half_day')  bool allowHalfDay, @JsonKey(name: 'advance_notice_days')  int advanceNoticeDays, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _LeaveTypeModel() when $default != null:
return $default(_that.id,_that.title,_that.titleMm,_that.code,_that.accrualType,_that.entitlementDays,_that.maxCarryForward,_that.carryForwardExpiry,_that.minServiceDays,_that.requiresApproval,_that.requiresAttachment,_that.allowHalfDay,_that.advanceNoticeDays,_that.isDefault,_that.companyId,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveTypeModel extends LeaveTypeModel {
  const _LeaveTypeModel({@JsonKey(readValue: readMongoId) this.id = '', this.title = '', @JsonKey(name: 'title_mm') this.titleMm = '', this.code = '', @JsonKey(name: 'accrual_type') this.accrualType = '', @JsonKey(name: 'entitlement_days') this.entitlementDays = 0, @JsonKey(name: 'max_carry_forward') this.maxCarryForward = 0, @JsonKey(name: 'carry_forward_expiry') this.carryForwardExpiry = 0, @JsonKey(name: 'min_service_days') this.minServiceDays = 0, @JsonKey(name: 'requires_approval') this.requiresApproval = true, @JsonKey(name: 'requires_attachment') this.requiresAttachment = false, @JsonKey(name: 'allow_half_day') this.allowHalfDay = true, @JsonKey(name: 'advance_notice_days') this.advanceNoticeDays = 0, @JsonKey(name: 'is_default') this.isDefault = false, @JsonKey(name: 'company_id') this.companyId = '', @JsonKey(name: 'is_active') this.isActive = true}): super._();
  factory _LeaveTypeModel.fromJson(Map<String, dynamic> json) => _$LeaveTypeModelFromJson(json);

@override@JsonKey(readValue: readMongoId) final  String id;
@override@JsonKey() final  String title;
@override@JsonKey(name: 'title_mm') final  String titleMm;
@override@JsonKey() final  String code;
@override@JsonKey(name: 'accrual_type') final  String accrualType;
@override@JsonKey(name: 'entitlement_days') final  double entitlementDays;
@override@JsonKey(name: 'max_carry_forward') final  double maxCarryForward;
@override@JsonKey(name: 'carry_forward_expiry') final  int carryForwardExpiry;
@override@JsonKey(name: 'min_service_days') final  int minServiceDays;
@override@JsonKey(name: 'requires_approval') final  bool requiresApproval;
@override@JsonKey(name: 'requires_attachment') final  bool requiresAttachment;
@override@JsonKey(name: 'allow_half_day') final  bool allowHalfDay;
@override@JsonKey(name: 'advance_notice_days') final  int advanceNoticeDays;
@override@JsonKey(name: 'is_default') final  bool isDefault;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of LeaveTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveTypeModelCopyWith<_LeaveTypeModel> get copyWith => __$LeaveTypeModelCopyWithImpl<_LeaveTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveTypeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.code, code) || other.code == code)&&(identical(other.accrualType, accrualType) || other.accrualType == accrualType)&&(identical(other.entitlementDays, entitlementDays) || other.entitlementDays == entitlementDays)&&(identical(other.maxCarryForward, maxCarryForward) || other.maxCarryForward == maxCarryForward)&&(identical(other.carryForwardExpiry, carryForwardExpiry) || other.carryForwardExpiry == carryForwardExpiry)&&(identical(other.minServiceDays, minServiceDays) || other.minServiceDays == minServiceDays)&&(identical(other.requiresApproval, requiresApproval) || other.requiresApproval == requiresApproval)&&(identical(other.requiresAttachment, requiresAttachment) || other.requiresAttachment == requiresAttachment)&&(identical(other.allowHalfDay, allowHalfDay) || other.allowHalfDay == allowHalfDay)&&(identical(other.advanceNoticeDays, advanceNoticeDays) || other.advanceNoticeDays == advanceNoticeDays)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleMm,code,accrualType,entitlementDays,maxCarryForward,carryForwardExpiry,minServiceDays,requiresApproval,requiresAttachment,allowHalfDay,advanceNoticeDays,isDefault,companyId,isActive);

@override
String toString() {
  return 'LeaveTypeModel(id: $id, title: $title, titleMm: $titleMm, code: $code, accrualType: $accrualType, entitlementDays: $entitlementDays, maxCarryForward: $maxCarryForward, carryForwardExpiry: $carryForwardExpiry, minServiceDays: $minServiceDays, requiresApproval: $requiresApproval, requiresAttachment: $requiresAttachment, allowHalfDay: $allowHalfDay, advanceNoticeDays: $advanceNoticeDays, isDefault: $isDefault, companyId: $companyId, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$LeaveTypeModelCopyWith<$Res> implements $LeaveTypeModelCopyWith<$Res> {
  factory _$LeaveTypeModelCopyWith(_LeaveTypeModel value, $Res Function(_LeaveTypeModel) _then) = __$LeaveTypeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: readMongoId) String id, String title,@JsonKey(name: 'title_mm') String titleMm, String code,@JsonKey(name: 'accrual_type') String accrualType,@JsonKey(name: 'entitlement_days') double entitlementDays,@JsonKey(name: 'max_carry_forward') double maxCarryForward,@JsonKey(name: 'carry_forward_expiry') int carryForwardExpiry,@JsonKey(name: 'min_service_days') int minServiceDays,@JsonKey(name: 'requires_approval') bool requiresApproval,@JsonKey(name: 'requires_attachment') bool requiresAttachment,@JsonKey(name: 'allow_half_day') bool allowHalfDay,@JsonKey(name: 'advance_notice_days') int advanceNoticeDays,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$LeaveTypeModelCopyWithImpl<$Res>
    implements _$LeaveTypeModelCopyWith<$Res> {
  __$LeaveTypeModelCopyWithImpl(this._self, this._then);

  final _LeaveTypeModel _self;
  final $Res Function(_LeaveTypeModel) _then;

/// Create a copy of LeaveTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? titleMm = null,Object? code = null,Object? accrualType = null,Object? entitlementDays = null,Object? maxCarryForward = null,Object? carryForwardExpiry = null,Object? minServiceDays = null,Object? requiresApproval = null,Object? requiresAttachment = null,Object? allowHalfDay = null,Object? advanceNoticeDays = null,Object? isDefault = null,Object? companyId = null,Object? isActive = null,}) {
  return _then(_LeaveTypeModel(
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
