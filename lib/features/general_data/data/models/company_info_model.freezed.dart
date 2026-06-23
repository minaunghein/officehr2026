// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyInfoModel {

 String get sc; dynamic get logo; String get name; String get street; String get street1; int get city; int get state; int get country; int get zip; int get sequence; bool get active;
/// Create a copy of CompanyInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyInfoModelCopyWith<CompanyInfoModel> get copyWith => _$CompanyInfoModelCopyWithImpl<CompanyInfoModel>(this as CompanyInfoModel, _$identity);

  /// Serializes this CompanyInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyInfoModel&&(identical(other.sc, sc) || other.sc == sc)&&const DeepCollectionEquality().equals(other.logo, logo)&&(identical(other.name, name) || other.name == name)&&(identical(other.street, street) || other.street == street)&&(identical(other.street1, street1) || other.street1 == street1)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sc,const DeepCollectionEquality().hash(logo),name,street,street1,city,state,country,zip,sequence,active);

@override
String toString() {
  return 'CompanyInfoModel(sc: $sc, logo: $logo, name: $name, street: $street, street1: $street1, city: $city, state: $state, country: $country, zip: $zip, sequence: $sequence, active: $active)';
}


}

/// @nodoc
abstract mixin class $CompanyInfoModelCopyWith<$Res>  {
  factory $CompanyInfoModelCopyWith(CompanyInfoModel value, $Res Function(CompanyInfoModel) _then) = _$CompanyInfoModelCopyWithImpl;
@useResult
$Res call({
 String sc, dynamic logo, String name, String street, String street1, int city, int state, int country, int zip, int sequence, bool active
});




}
/// @nodoc
class _$CompanyInfoModelCopyWithImpl<$Res>
    implements $CompanyInfoModelCopyWith<$Res> {
  _$CompanyInfoModelCopyWithImpl(this._self, this._then);

  final CompanyInfoModel _self;
  final $Res Function(CompanyInfoModel) _then;

/// Create a copy of CompanyInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sc = null,Object? logo = freezed,Object? name = null,Object? street = null,Object? street1 = null,Object? city = null,Object? state = null,Object? country = null,Object? zip = null,Object? sequence = null,Object? active = null,}) {
  return _then(_self.copyWith(
sc: null == sc ? _self.sc : sc // ignore: cast_nullable_to_non_nullable
as String,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as dynamic,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,street1: null == street1 ? _self.street1 : street1 // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as int,zip: null == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as int,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyInfoModel].
extension CompanyInfoModelPatterns on CompanyInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _CompanyInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sc,  dynamic logo,  String name,  String street,  String street1,  int city,  int state,  int country,  int zip,  int sequence,  bool active)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyInfoModel() when $default != null:
return $default(_that.sc,_that.logo,_that.name,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.sequence,_that.active);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sc,  dynamic logo,  String name,  String street,  String street1,  int city,  int state,  int country,  int zip,  int sequence,  bool active)  $default,) {final _that = this;
switch (_that) {
case _CompanyInfoModel():
return $default(_that.sc,_that.logo,_that.name,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.sequence,_that.active);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sc,  dynamic logo,  String name,  String street,  String street1,  int city,  int state,  int country,  int zip,  int sequence,  bool active)?  $default,) {final _that = this;
switch (_that) {
case _CompanyInfoModel() when $default != null:
return $default(_that.sc,_that.logo,_that.name,_that.street,_that.street1,_that.city,_that.state,_that.country,_that.zip,_that.sequence,_that.active);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyInfoModel implements CompanyInfoModel {
  const _CompanyInfoModel({required this.sc, required this.logo, required this.name, required this.street, required this.street1, required this.city, required this.state, required this.country, required this.zip, required this.sequence, required this.active});
  factory _CompanyInfoModel.fromJson(Map<String, dynamic> json) => _$CompanyInfoModelFromJson(json);

@override final  String sc;
@override final  dynamic logo;
@override final  String name;
@override final  String street;
@override final  String street1;
@override final  int city;
@override final  int state;
@override final  int country;
@override final  int zip;
@override final  int sequence;
@override final  bool active;

/// Create a copy of CompanyInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyInfoModelCopyWith<_CompanyInfoModel> get copyWith => __$CompanyInfoModelCopyWithImpl<_CompanyInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyInfoModel&&(identical(other.sc, sc) || other.sc == sc)&&const DeepCollectionEquality().equals(other.logo, logo)&&(identical(other.name, name) || other.name == name)&&(identical(other.street, street) || other.street == street)&&(identical(other.street1, street1) || other.street1 == street1)&&(identical(other.city, city) || other.city == city)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.zip, zip) || other.zip == zip)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.active, active) || other.active == active));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,sc,const DeepCollectionEquality().hash(logo),name,street,street1,city,state,country,zip,sequence,active);

@override
String toString() {
  return 'CompanyInfoModel(sc: $sc, logo: $logo, name: $name, street: $street, street1: $street1, city: $city, state: $state, country: $country, zip: $zip, sequence: $sequence, active: $active)';
}


}

/// @nodoc
abstract mixin class _$CompanyInfoModelCopyWith<$Res> implements $CompanyInfoModelCopyWith<$Res> {
  factory _$CompanyInfoModelCopyWith(_CompanyInfoModel value, $Res Function(_CompanyInfoModel) _then) = __$CompanyInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String sc, dynamic logo, String name, String street, String street1, int city, int state, int country, int zip, int sequence, bool active
});




}
/// @nodoc
class __$CompanyInfoModelCopyWithImpl<$Res>
    implements _$CompanyInfoModelCopyWith<$Res> {
  __$CompanyInfoModelCopyWithImpl(this._self, this._then);

  final _CompanyInfoModel _self;
  final $Res Function(_CompanyInfoModel) _then;

/// Create a copy of CompanyInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sc = null,Object? logo = freezed,Object? name = null,Object? street = null,Object? street1 = null,Object? city = null,Object? state = null,Object? country = null,Object? zip = null,Object? sequence = null,Object? active = null,}) {
  return _then(_CompanyInfoModel(
sc: null == sc ? _self.sc : sc // ignore: cast_nullable_to_non_nullable
as String,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as dynamic,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,street: null == street ? _self.street : street // ignore: cast_nullable_to_non_nullable
as String,street1: null == street1 ? _self.street1 : street1 // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as int,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as int,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as int,zip: null == zip ? _self.zip : zip // ignore: cast_nullable_to_non_nullable
as int,sequence: null == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int,active: null == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
