// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CompanyInfo {

 String get shortCode; String? get logo; String get name; String get street; String get street1; int get cityId; int get stateId; int get countryId; int get zipCode; int get sequence; bool get isActive;
/// Create a copy of CompanyInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyInfoCopyWith<CompanyInfo> get copyWith => _$CompanyInfoCopyWithImpl<CompanyInfo>(this as CompanyInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyInfo&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.name, name) || other.name == name)&&(identical(other.street, street) || other.street == street)&&(identical(other.street1, street1) || other.street1 == street1)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.stateId, stateId) || other.stateId == stateId)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,shortCode,logo,name,street,street1,cityId,stateId,countryId,zipCode,sequence,isActive);

@override
String toString() {
  return 'CompanyInfo(shortCode: $shortCode, logo: $logo, name: $name, street: $street, street1: $street1, cityId: $cityId, stateId: $stateId, countryId: $countryId, zipCode: $zipCode, sequence: $sequence, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $CompanyInfoCopyWith<$Res>  {
  factory $CompanyInfoCopyWith(CompanyInfo value, $Res Function(CompanyInfo) _then) = _$CompanyInfoCopyWithImpl;
@useResult
$Res call({
 String shortCode, String? logo, String name, String street, String street1, int cityId, int stateId, int countryId, int zipCode, int sequence, bool isActive
});




}
/// @nodoc
class _$CompanyInfoCopyWithImpl<$Res>
    implements $CompanyInfoCopyWith<$Res> {
  _$CompanyInfoCopyWithImpl(this._self, this._then);

  final CompanyInfo _self;
  final $Res Function(CompanyInfo) _then;

/// Create a copy of CompanyInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shortCode = null,Object? logo = freezed,Object? name = null,Object? street = null,Object? street1 = null,Object? cityId = null,Object? stateId = null,Object? countryId = null,Object? zipCode = null,Object? sequence = null,Object? isActive = null,}) {
  return _then(_self.copyWith(
shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,street1: null == street1 ? _self.street1 : street1 // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as int,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyInfo].
extension CompanyInfoPatterns on CompanyInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyInfo value)  $default,){
final _that = this;
switch (_that) {
case _CompanyInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyInfo value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String shortCode,  String? logo,  String name,  String street,  String street1,  int cityId,  int stateId,  int countryId,  int zipCode,  int sequence,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyInfo() when $default != null:
return $default(_that.shortCode,_that.logo,_that.name,_that.street,_that.street1,_that.cityId,_that.stateId,_that.countryId,_that.zipCode,_that.sequence,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String shortCode,  String? logo,  String name,  String street,  String street1,  int cityId,  int stateId,  int countryId,  int zipCode,  int sequence,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _CompanyInfo():
return $default(_that.shortCode,_that.logo,_that.name,_that.street,_that.street1,_that.cityId,_that.stateId,_that.countryId,_that.zipCode,_that.sequence,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String shortCode,  String? logo,  String name,  String street,  String street1,  int cityId,  int stateId,  int countryId,  int zipCode,  int sequence,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _CompanyInfo() when $default != null:
return $default(_that.shortCode,_that.logo,_that.name,_that.street,_that.street1,_that.cityId,_that.stateId,_that.countryId,_that.zipCode,_that.sequence,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _CompanyInfo implements CompanyInfo {
  const _CompanyInfo({required this.shortCode, required this.logo, required this.name, required this.street, required this.street1, required this.cityId, required this.stateId, required this.countryId, required this.zipCode, required this.sequence, required this.isActive});
  

@override final  String shortCode;
@override final  String? logo;
@override final  String name;
@override final  String street;
@override final  String street1;
@override final  int cityId;
@override final  int stateId;
@override final  int countryId;
@override final  int zipCode;
@override final  int sequence;
@override final  bool isActive;

/// Create a copy of CompanyInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyInfoCopyWith<_CompanyInfo> get copyWith => __$CompanyInfoCopyWithImpl<_CompanyInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyInfo&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.name, name) || other.name == name)&&(identical(other.street, street) || other.street == street)&&(identical(other.street1, street1) || other.street1 == street1)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.stateId, stateId) || other.stateId == stateId)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.zipCode, zipCode) || other.zipCode == zipCode)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,shortCode,logo,name,street,street1,cityId,stateId,countryId,zipCode,sequence,isActive);

@override
String toString() {
  return 'CompanyInfo(shortCode: $shortCode, logo: $logo, name: $name, street: $street, street1: $street1, cityId: $cityId, stateId: $stateId, countryId: $countryId, zipCode: $zipCode, sequence: $sequence, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$CompanyInfoCopyWith<$Res> implements $CompanyInfoCopyWith<$Res> {
  factory _$CompanyInfoCopyWith(_CompanyInfo value, $Res Function(_CompanyInfo) _then) = __$CompanyInfoCopyWithImpl;
@override @useResult
$Res call({
 String shortCode, String? logo, String name, String street, String street1, int cityId, int stateId, int countryId, int zipCode, int sequence, bool isActive
});




}
/// @nodoc
class __$CompanyInfoCopyWithImpl<$Res>
    implements _$CompanyInfoCopyWith<$Res> {
  __$CompanyInfoCopyWithImpl(this._self, this._then);

  final _CompanyInfo _self;
  final $Res Function(_CompanyInfo) _then;

/// Create a copy of CompanyInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shortCode = null,Object? logo = freezed,Object? name = null,Object? street = null,Object? street1 = null,Object? cityId = null,Object? stateId = null,Object? countryId = null,Object? zipCode = null,Object? sequence = null,Object? isActive = null,}) {
  return _then(_CompanyInfo(
shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,street1: null == street1 ? _self.street1 : street1 // ignore: cast_nullable_to_non_nullable
as String,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int,zipCode: null == zipCode ? _self.zipCode : zipCode // ignore: cast_nullable_to_non_nullable
as int,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
