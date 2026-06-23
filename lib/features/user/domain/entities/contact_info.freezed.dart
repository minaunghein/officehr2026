// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ContactInfo {

 String get id; String get phone; String get officePhone; String get permanentState; String get permanentTownship; String get permanentCity; List<String> get permanentStreetAddresses; String get currentState; String get currentTownship; String get currentCity; List<String> get currentStreetAddresses;
/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<ContactInfo> get copyWith => _$ContactInfoCopyWithImpl<ContactInfo>(this as ContactInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.officePhone, officePhone) || other.officePhone == officePhone)&&(identical(other.permanentState, permanentState) || other.permanentState == permanentState)&&(identical(other.permanentTownship, permanentTownship) || other.permanentTownship == permanentTownship)&&(identical(other.permanentCity, permanentCity) || other.permanentCity == permanentCity)&&const DeepCollectionEquality().equals(other.permanentStreetAddresses, permanentStreetAddresses)&&(identical(other.currentState, currentState) || other.currentState == currentState)&&(identical(other.currentTownship, currentTownship) || other.currentTownship == currentTownship)&&(identical(other.currentCity, currentCity) || other.currentCity == currentCity)&&const DeepCollectionEquality().equals(other.currentStreetAddresses, currentStreetAddresses));
}


@override
int get hashCode => Object.hash(runtimeType,id,phone,officePhone,permanentState,permanentTownship,permanentCity,const DeepCollectionEquality().hash(permanentStreetAddresses),currentState,currentTownship,currentCity,const DeepCollectionEquality().hash(currentStreetAddresses));

@override
String toString() {
  return 'ContactInfo(id: $id, phone: $phone, officePhone: $officePhone, permanentState: $permanentState, permanentTownship: $permanentTownship, permanentCity: $permanentCity, permanentStreetAddresses: $permanentStreetAddresses, currentState: $currentState, currentTownship: $currentTownship, currentCity: $currentCity, currentStreetAddresses: $currentStreetAddresses)';
}


}

/// @nodoc
abstract mixin class $ContactInfoCopyWith<$Res>  {
  factory $ContactInfoCopyWith(ContactInfo value, $Res Function(ContactInfo) _then) = _$ContactInfoCopyWithImpl;
@useResult
$Res call({
 String id, String phone, String officePhone, String permanentState, String permanentTownship, String permanentCity, List<String> permanentStreetAddresses, String currentState, String currentTownship, String currentCity, List<String> currentStreetAddresses
});




}
/// @nodoc
class _$ContactInfoCopyWithImpl<$Res>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._self, this._then);

  final ContactInfo _self;
  final $Res Function(ContactInfo) _then;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = null,Object? officePhone = null,Object? permanentState = null,Object? permanentTownship = null,Object? permanentCity = null,Object? permanentStreetAddresses = null,Object? currentState = null,Object? currentTownship = null,Object? currentCity = null,Object? currentStreetAddresses = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,officePhone: null == officePhone ? _self.officePhone : officePhone // ignore: cast_nullable_to_non_nullable
as String,permanentState: null == permanentState ? _self.permanentState : permanentState // ignore: cast_nullable_to_non_nullable
as String,permanentTownship: null == permanentTownship ? _self.permanentTownship : permanentTownship // ignore: cast_nullable_to_non_nullable
as String,permanentCity: null == permanentCity ? _self.permanentCity : permanentCity // ignore: cast_nullable_to_non_nullable
as String,permanentStreetAddresses: null == permanentStreetAddresses ? _self.permanentStreetAddresses : permanentStreetAddresses // ignore: cast_nullable_to_non_nullable
as List<String>,currentState: null == currentState ? _self.currentState : currentState // ignore: cast_nullable_to_non_nullable
as String,currentTownship: null == currentTownship ? _self.currentTownship : currentTownship // ignore: cast_nullable_to_non_nullable
as String,currentCity: null == currentCity ? _self.currentCity : currentCity // ignore: cast_nullable_to_non_nullable
as String,currentStreetAddresses: null == currentStreetAddresses ? _self.currentStreetAddresses : currentStreetAddresses // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactInfo].
extension ContactInfoPatterns on ContactInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactInfo value)  $default,){
final _that = this;
switch (_that) {
case _ContactInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactInfo value)?  $default,){
final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String phone,  String officePhone,  String permanentState,  String permanentTownship,  String permanentCity,  List<String> permanentStreetAddresses,  String currentState,  String currentTownship,  String currentCity,  List<String> currentStreetAddresses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
return $default(_that.id,_that.phone,_that.officePhone,_that.permanentState,_that.permanentTownship,_that.permanentCity,_that.permanentStreetAddresses,_that.currentState,_that.currentTownship,_that.currentCity,_that.currentStreetAddresses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String phone,  String officePhone,  String permanentState,  String permanentTownship,  String permanentCity,  List<String> permanentStreetAddresses,  String currentState,  String currentTownship,  String currentCity,  List<String> currentStreetAddresses)  $default,) {final _that = this;
switch (_that) {
case _ContactInfo():
return $default(_that.id,_that.phone,_that.officePhone,_that.permanentState,_that.permanentTownship,_that.permanentCity,_that.permanentStreetAddresses,_that.currentState,_that.currentTownship,_that.currentCity,_that.currentStreetAddresses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String phone,  String officePhone,  String permanentState,  String permanentTownship,  String permanentCity,  List<String> permanentStreetAddresses,  String currentState,  String currentTownship,  String currentCity,  List<String> currentStreetAddresses)?  $default,) {final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
return $default(_that.id,_that.phone,_that.officePhone,_that.permanentState,_that.permanentTownship,_that.permanentCity,_that.permanentStreetAddresses,_that.currentState,_that.currentTownship,_that.currentCity,_that.currentStreetAddresses);case _:
  return null;

}
}

}

/// @nodoc


class _ContactInfo implements ContactInfo {
  const _ContactInfo({required this.id, required this.phone, required this.officePhone, required this.permanentState, required this.permanentTownship, required this.permanentCity, required final  List<String> permanentStreetAddresses, required this.currentState, required this.currentTownship, required this.currentCity, required final  List<String> currentStreetAddresses}): _permanentStreetAddresses = permanentStreetAddresses,_currentStreetAddresses = currentStreetAddresses;
  

@override final  String id;
@override final  String phone;
@override final  String officePhone;
@override final  String permanentState;
@override final  String permanentTownship;
@override final  String permanentCity;
 final  List<String> _permanentStreetAddresses;
@override List<String> get permanentStreetAddresses {
  if (_permanentStreetAddresses is EqualUnmodifiableListView) return _permanentStreetAddresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permanentStreetAddresses);
}

@override final  String currentState;
@override final  String currentTownship;
@override final  String currentCity;
 final  List<String> _currentStreetAddresses;
@override List<String> get currentStreetAddresses {
  if (_currentStreetAddresses is EqualUnmodifiableListView) return _currentStreetAddresses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currentStreetAddresses);
}


/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactInfoCopyWith<_ContactInfo> get copyWith => __$ContactInfoCopyWithImpl<_ContactInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactInfo&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.officePhone, officePhone) || other.officePhone == officePhone)&&(identical(other.permanentState, permanentState) || other.permanentState == permanentState)&&(identical(other.permanentTownship, permanentTownship) || other.permanentTownship == permanentTownship)&&(identical(other.permanentCity, permanentCity) || other.permanentCity == permanentCity)&&const DeepCollectionEquality().equals(other._permanentStreetAddresses, _permanentStreetAddresses)&&(identical(other.currentState, currentState) || other.currentState == currentState)&&(identical(other.currentTownship, currentTownship) || other.currentTownship == currentTownship)&&(identical(other.currentCity, currentCity) || other.currentCity == currentCity)&&const DeepCollectionEquality().equals(other._currentStreetAddresses, _currentStreetAddresses));
}


@override
int get hashCode => Object.hash(runtimeType,id,phone,officePhone,permanentState,permanentTownship,permanentCity,const DeepCollectionEquality().hash(_permanentStreetAddresses),currentState,currentTownship,currentCity,const DeepCollectionEquality().hash(_currentStreetAddresses));

@override
String toString() {
  return 'ContactInfo(id: $id, phone: $phone, officePhone: $officePhone, permanentState: $permanentState, permanentTownship: $permanentTownship, permanentCity: $permanentCity, permanentStreetAddresses: $permanentStreetAddresses, currentState: $currentState, currentTownship: $currentTownship, currentCity: $currentCity, currentStreetAddresses: $currentStreetAddresses)';
}


}

/// @nodoc
abstract mixin class _$ContactInfoCopyWith<$Res> implements $ContactInfoCopyWith<$Res> {
  factory _$ContactInfoCopyWith(_ContactInfo value, $Res Function(_ContactInfo) _then) = __$ContactInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, String phone, String officePhone, String permanentState, String permanentTownship, String permanentCity, List<String> permanentStreetAddresses, String currentState, String currentTownship, String currentCity, List<String> currentStreetAddresses
});




}
/// @nodoc
class __$ContactInfoCopyWithImpl<$Res>
    implements _$ContactInfoCopyWith<$Res> {
  __$ContactInfoCopyWithImpl(this._self, this._then);

  final _ContactInfo _self;
  final $Res Function(_ContactInfo) _then;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = null,Object? officePhone = null,Object? permanentState = null,Object? permanentTownship = null,Object? permanentCity = null,Object? permanentStreetAddresses = null,Object? currentState = null,Object? currentTownship = null,Object? currentCity = null,Object? currentStreetAddresses = null,}) {
  return _then(_ContactInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,officePhone: null == officePhone ? _self.officePhone : officePhone // ignore: cast_nullable_to_non_nullable
as String,permanentState: null == permanentState ? _self.permanentState : permanentState // ignore: cast_nullable_to_non_nullable
as String,permanentTownship: null == permanentTownship ? _self.permanentTownship : permanentTownship // ignore: cast_nullable_to_non_nullable
as String,permanentCity: null == permanentCity ? _self.permanentCity : permanentCity // ignore: cast_nullable_to_non_nullable
as String,permanentStreetAddresses: null == permanentStreetAddresses ? _self._permanentStreetAddresses : permanentStreetAddresses // ignore: cast_nullable_to_non_nullable
as List<String>,currentState: null == currentState ? _self.currentState : currentState // ignore: cast_nullable_to_non_nullable
as String,currentTownship: null == currentTownship ? _self.currentTownship : currentTownship // ignore: cast_nullable_to_non_nullable
as String,currentCity: null == currentCity ? _self.currentCity : currentCity // ignore: cast_nullable_to_non_nullable
as String,currentStreetAddresses: null == currentStreetAddresses ? _self._currentStreetAddresses : currentStreetAddresses // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
