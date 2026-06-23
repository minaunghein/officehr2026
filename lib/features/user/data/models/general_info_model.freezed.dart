// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralInfoModel {

@JsonKey(name: '_id') String? get id; String? get street; String? get street1; int? get city; int? get state; int? get country; int? get zip; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int? get version; String? get email; String? get phone; String? get registerid; String? get website;
/// Create a copy of GeneralInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralInfoModelCopyWith<GeneralInfoModel> get copyWith => _$GeneralInfoModelCopyWithImpl<GeneralInfoModel>(this as GeneralInfoModel, _$identity);

  /// Serializes this GeneralInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.street, street) || other.street == street)&&(identical(other.street1, street1) || other.street1 == street1)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.registerid, registerid) || other.registerid == registerid)&&(identical(other.website, website) || other.website == website));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,street,street1,city,state,country,zip,createdAt,updatedAt,version,email,phone,registerid,website);

@override
String toString() {
  return 'GeneralInfoModel(id: $id, street: $street, street1: $street1, city: $city, state: $state, country: $country, zip: $zip, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, email: $email, phone: $phone, registerid: $registerid, website: $website)';
}


}

/// @nodoc
abstract mixin class $GeneralInfoModelCopyWith<$Res>  {
  factory $GeneralInfoModelCopyWith(GeneralInfoModel value, $Res Function(GeneralInfoModel) _then) = _$GeneralInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, String? street, String? street1, int? city, int? state, int? country, int? zip, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version, String? email, String? phone, String? registerid, String? website
});




}
/// @nodoc
class _$GeneralInfoModelCopyWithImpl<$Res>
    implements $GeneralInfoModelCopyWith<$Res> {
  _$GeneralInfoModelCopyWithImpl(this._self, this._then);

  final GeneralInfoModel _self;
  final $Res Function(GeneralInfoModel) _then;

/// Create a copy of GeneralInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? street = freezed,Object? street1 = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? zip = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? email = freezed,Object? phone = freezed,Object? registerid = freezed,Object? website = freezed,}) {
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
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,registerid: freezed == registerid ? _self.registerid : registerid // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneralInfoModel].
extension GeneralInfoModelPatterns on GeneralInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _GeneralInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? street,  String? street1,  int? city,  int? state,  int? country,  int? zip,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  String? email,  String? phone,  String? registerid,  String? website)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralInfoModel() when $default != null:
return $default(_that.id,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.createdAt,_that.updatedAt,_that.version,_that.email,_that.phone,_that.registerid,_that.website);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  String? street,  String? street1,  int? city,  int? state,  int? country,  int? zip,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  String? email,  String? phone,  String? registerid,  String? website)  $default,) {final _that = this;
switch (_that) {
case _GeneralInfoModel():
return $default(_that.id,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.createdAt,_that.updatedAt,_that.version,_that.email,_that.phone,_that.registerid,_that.website);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  String? street,  String? street1,  int? city,  int? state,  int? country,  int? zip,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  String? email,  String? phone,  String? registerid,  String? website)?  $default,) {final _that = this;
switch (_that) {
case _GeneralInfoModel() when $default != null:
return $default(_that.id,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.createdAt,_that.updatedAt,_that.version,_that.email,_that.phone,_that.registerid,_that.website);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneralInfoModel implements GeneralInfoModel {
  const _GeneralInfoModel({@JsonKey(name: '_id') this.id, this.street, this.street1, this.city, this.state, this.country, this.zip, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version, this.email, this.phone, this.registerid, this.website});
  factory _GeneralInfoModel.fromJson(Map<String, dynamic> json) => _$GeneralInfoModelFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
@override final  String? street;
@override final  String? street1;
@override final  int? city;
@override final  int? state;
@override final  int? country;
@override final  int? zip;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int? version;
@override final  String? email;
@override final  String? phone;
@override final  String? registerid;
@override final  String? website;

/// Create a copy of GeneralInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralInfoModelCopyWith<_GeneralInfoModel> get copyWith => __$GeneralInfoModelCopyWithImpl<_GeneralInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralInfoModel&&(identical(other.id, id) || other.id == id)&&(identical(other.street, street) || other.street == street)&&(identical(other.street1, street1) || other.street1 == street1)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.registerid, registerid) || other.registerid == registerid)&&(identical(other.website, website) || other.website == website));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,street,street1,city,state,country,zip,createdAt,updatedAt,version,email,phone,registerid,website);

@override
String toString() {
  return 'GeneralInfoModel(id: $id, street: $street, street1: $street1, city: $city, state: $state, country: $country, zip: $zip, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, email: $email, phone: $phone, registerid: $registerid, website: $website)';
}


}

/// @nodoc
abstract mixin class _$GeneralInfoModelCopyWith<$Res> implements $GeneralInfoModelCopyWith<$Res> {
  factory _$GeneralInfoModelCopyWith(_GeneralInfoModel value, $Res Function(_GeneralInfoModel) _then) = __$GeneralInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, String? street, String? street1, int? city, int? state, int? country, int? zip, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version, String? email, String? phone, String? registerid, String? website
});




}
/// @nodoc
class __$GeneralInfoModelCopyWithImpl<$Res>
    implements _$GeneralInfoModelCopyWith<$Res> {
  __$GeneralInfoModelCopyWithImpl(this._self, this._then);

  final _GeneralInfoModel _self;
  final $Res Function(_GeneralInfoModel) _then;

/// Create a copy of GeneralInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? street = freezed,Object? street1 = freezed,Object? city = freezed,Object? state = freezed,Object? country = freezed,Object? zip = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? email = freezed,Object? phone = freezed,Object? registerid = freezed,Object? website = freezed,}) {
  return _then(_GeneralInfoModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,street: freezed == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String?,street1: freezed == street1 ? _self.street1 : street1 // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as int?,zip: freezed == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,registerid: freezed == registerid ? _self.registerid : registerid // ignore: cast_nullable_to_non_nullable
as String?,website: freezed == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
