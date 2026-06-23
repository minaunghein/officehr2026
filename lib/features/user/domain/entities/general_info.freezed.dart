// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeneralInfo {

 String? get id; String? get street; String? get street1; int? get city; int? get state; int? get country; int? get zip; DateTime? get createdAt; DateTime? get updatedAt; String? get email; String? get phone; String? get registerId; String? get website;
/// Create a copy of GeneralInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralInfoCopyWith<GeneralInfo> get copyWith => _$GeneralInfoCopyWithImpl<GeneralInfo>(this as GeneralInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.street, street) || other.street == street)&&(identical(other.street1, street1) || other.street1 == street1)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.registerId, registerId) || other.registerId == registerId)&&(identical(other.website, website) || other.website == website));
}


@override
int get hashCode => Object.hash(runtimeType,id,street,street1,city,state,country,zip,createdAt,updatedAt,email,phone,registerId,website);

@override
String toString() {
  return 'GeneralInfo(id: $id, street: $street, street1: $street1, city: $city, state: $state, country: $country, zip: $zip, createdAt: $createdAt, updatedAt: $updatedAt, email: $email, phone: $phone, registerId: $registerId, website: $website)';
}


}

/// @nodoc
abstract mixin class $GeneralInfoCopyWith<$Res>  {
  factory $GeneralInfoCopyWith(GeneralInfo value, $Res Function(GeneralInfo) _then) = _$GeneralInfoCopyWithImpl;
@useResult
$Res call({
 String? id, String? street, String? street1, int? city, int? state, int? country, int? zip, DateTime? createdAt, DateTime? updatedAt, String? email, String? phone, String? registerId, String? website
});




}
/// @nodoc
class _$GeneralInfoCopyWithImpl<$Res>
    implements $GeneralInfoCopyWith<$Res> {
  _$GeneralInfoCopyWithImpl(this._self, this._then);

  final GeneralInfo _self;
  final $Res Function(GeneralInfo) _then;

/// Create a copy of GeneralInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? street = freezed,Object? street1 = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? zip = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? email = freezed,Object? phone = freezed,Object? registerId = freezed,Object? website = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,street1: freezed == street1 ? _self.street1 : street1 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as int?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,registerId: freezed == registerId ? _self.registerId : registerId // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneralInfo].
extension GeneralInfoPatterns on GeneralInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralInfo value)  $default,){
final _that = this;
switch (_that) {
case _GeneralInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralInfo value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? street,  String? street1,  int? city,  int? state,  int? country,  int? zip,  DateTime? createdAt,  DateTime? updatedAt,  String? email,  String? phone,  String? registerId,  String? website)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralInfo() when $default != null:
return $default(_that.id,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.createdAt,_that.updatedAt,_that.email,_that.phone,_that.registerId,_that.website);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? street,  String? street1,  int? city,  int? state,  int? country,  int? zip,  DateTime? createdAt,  DateTime? updatedAt,  String? email,  String? phone,  String? registerId,  String? website)  $default,) {final _that = this;
switch (_that) {
case _GeneralInfo():
return $default(_that.id,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.createdAt,_that.updatedAt,_that.email,_that.phone,_that.registerId,_that.website);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? street,  String? street1,  int? city,  int? state,  int? country,  int? zip,  DateTime? createdAt,  DateTime? updatedAt,  String? email,  String? phone,  String? registerId,  String? website)?  $default,) {final _that = this;
switch (_that) {
case _GeneralInfo() when $default != null:
return $default(_that.id,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.createdAt,_that.updatedAt,_that.email,_that.phone,_that.registerId,_that.website);case _:
  return null;

}
}

}

/// @nodoc


class _GeneralInfo implements GeneralInfo {
  const _GeneralInfo({this.id, this.street, this.street1, this.city, this.state, this.country, this.zip, this.createdAt, this.updatedAt, this.email, this.phone, this.registerId, this.website});
  

@override final  String? id;
@override final  String? street;
@override final  String? street1;
@override final  int? city;
@override final  int? state;
@override final  int? country;
@override final  int? zip;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? email;
@override final  String? phone;
@override final  String? registerId;
@override final  String? website;

/// Create a copy of GeneralInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralInfoCopyWith<_GeneralInfo> get copyWith => __$GeneralInfoCopyWithImpl<_GeneralInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.street, street) || other.street == street)&&(identical(other.street1, street1) || other.street1 == street1)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.registerId, registerId) || other.registerId == registerId)&&(identical(other.website, website) || other.website == website));
}


@override
int get hashCode => Object.hash(runtimeType,id,street,street1,city,state,country,zip,createdAt,updatedAt,email,phone,registerId,website);

@override
String toString() {
  return 'GeneralInfo(id: $id, street: $street, street1: $street1, city: $city, state: $state, country: $country, zip: $zip, createdAt: $createdAt, updatedAt: $updatedAt, email: $email, phone: $phone, registerId: $registerId, website: $website)';
}


}

/// @nodoc
abstract mixin class _$GeneralInfoCopyWith<$Res> implements $GeneralInfoCopyWith<$Res> {
  factory _$GeneralInfoCopyWith(_GeneralInfo value, $Res Function(_GeneralInfo) _then) = __$GeneralInfoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? street, String? street1, int? city, int? state, int? country, int? zip, DateTime? createdAt, DateTime? updatedAt, String? email, String? phone, String? registerId, String? website
});




}
/// @nodoc
class __$GeneralInfoCopyWithImpl<$Res>
    implements _$GeneralInfoCopyWith<$Res> {
  __$GeneralInfoCopyWithImpl(this._self, this._then);

  final _GeneralInfo _self;
  final $Res Function(_GeneralInfo) _then;

/// Create a copy of GeneralInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? street = freezed,Object? street1 = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? zip = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? email = freezed,Object? phone = freezed,Object? registerId = freezed,Object? website = freezed,}) {
  return _then(_GeneralInfo(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,street1: freezed == street1 ? _self.street1 : street1 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as int?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,registerId: freezed == registerId ? _self.registerId : registerId // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
