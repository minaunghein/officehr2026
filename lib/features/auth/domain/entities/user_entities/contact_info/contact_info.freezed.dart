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

 dynamic get emergencyContact; String get phone; String get email; Address? get currentAddress; Address? get permanentAddress;
/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<ContactInfo> get copyWith => _$ContactInfoCopyWithImpl<ContactInfo>(this as ContactInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactInfo&&const DeepCollectionEquality().equals(other.emergencyContact, emergencyContact)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.permanentAddress, permanentAddress) || other.permanentAddress == permanentAddress));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(emergencyContact),phone,email,currentAddress,permanentAddress);

@override
String toString() {
  return 'ContactInfo(emergencyContact: $emergencyContact, phone: $phone, email: $email, currentAddress: $currentAddress, permanentAddress: $permanentAddress)';
}


}

/// @nodoc
abstract mixin class $ContactInfoCopyWith<$Res>  {
  factory $ContactInfoCopyWith(ContactInfo value, $Res Function(ContactInfo) _then) = _$ContactInfoCopyWithImpl;
@useResult
$Res call({
 dynamic emergencyContact, String phone, String email, Address? currentAddress, Address? permanentAddress
});


$AddressCopyWith<$Res>? get currentAddress;$AddressCopyWith<$Res>? get permanentAddress;

}
/// @nodoc
class _$ContactInfoCopyWithImpl<$Res>
    implements $ContactInfoCopyWith<$Res> {
  _$ContactInfoCopyWithImpl(this._self, this._then);

  final ContactInfo _self;
  final $Res Function(ContactInfo) _then;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emergencyContact = freezed,Object? phone = null,Object? email = null,Object? currentAddress = freezed,Object? permanentAddress = freezed,}) {
  return _then(_self.copyWith(
emergencyContact: freezed == emergencyContact ? _self.emergencyContact : emergencyContact // ignore: cast_nullable_to_non_nullable
as dynamic,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as Address?,permanentAddress: freezed == permanentAddress ? _self.permanentAddress : permanentAddress // ignore: cast_nullable_to_non_nullable
as Address?,
  ));
}
/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get currentAddress {
    if (_self.currentAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.currentAddress!, (value) {
    return _then(_self.copyWith(currentAddress: value));
  });
}/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get permanentAddress {
    if (_self.permanentAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.permanentAddress!, (value) {
    return _then(_self.copyWith(permanentAddress: value));
  });
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic emergencyContact,  String phone,  String email,  Address? currentAddress,  Address? permanentAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
return $default(_that.emergencyContact,_that.phone,_that.email,_that.currentAddress,_that.permanentAddress);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic emergencyContact,  String phone,  String email,  Address? currentAddress,  Address? permanentAddress)  $default,) {final _that = this;
switch (_that) {
case _ContactInfo():
return $default(_that.emergencyContact,_that.phone,_that.email,_that.currentAddress,_that.permanentAddress);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic emergencyContact,  String phone,  String email,  Address? currentAddress,  Address? permanentAddress)?  $default,) {final _that = this;
switch (_that) {
case _ContactInfo() when $default != null:
return $default(_that.emergencyContact,_that.phone,_that.email,_that.currentAddress,_that.permanentAddress);case _:
  return null;

}
}

}

/// @nodoc


class _ContactInfo implements ContactInfo {
  const _ContactInfo({this.emergencyContact, required this.phone, required this.email, this.currentAddress, this.permanentAddress});
  

@override final  dynamic emergencyContact;
@override final  String phone;
@override final  String email;
@override final  Address? currentAddress;
@override final  Address? permanentAddress;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactInfoCopyWith<_ContactInfo> get copyWith => __$ContactInfoCopyWithImpl<_ContactInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactInfo&&const DeepCollectionEquality().equals(other.emergencyContact, emergencyContact)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.permanentAddress, permanentAddress) || other.permanentAddress == permanentAddress));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(emergencyContact),phone,email,currentAddress,permanentAddress);

@override
String toString() {
  return 'ContactInfo(emergencyContact: $emergencyContact, phone: $phone, email: $email, currentAddress: $currentAddress, permanentAddress: $permanentAddress)';
}


}

/// @nodoc
abstract mixin class _$ContactInfoCopyWith<$Res> implements $ContactInfoCopyWith<$Res> {
  factory _$ContactInfoCopyWith(_ContactInfo value, $Res Function(_ContactInfo) _then) = __$ContactInfoCopyWithImpl;
@override @useResult
$Res call({
 dynamic emergencyContact, String phone, String email, Address? currentAddress, Address? permanentAddress
});


@override $AddressCopyWith<$Res>? get currentAddress;@override $AddressCopyWith<$Res>? get permanentAddress;

}
/// @nodoc
class __$ContactInfoCopyWithImpl<$Res>
    implements _$ContactInfoCopyWith<$Res> {
  __$ContactInfoCopyWithImpl(this._self, this._then);

  final _ContactInfo _self;
  final $Res Function(_ContactInfo) _then;

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emergencyContact = freezed,Object? phone = null,Object? email = null,Object? currentAddress = freezed,Object? permanentAddress = freezed,}) {
  return _then(_ContactInfo(
emergencyContact: freezed == emergencyContact ? _self.emergencyContact : emergencyContact // ignore: cast_nullable_to_non_nullable
as dynamic,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as Address?,permanentAddress: freezed == permanentAddress ? _self.permanentAddress : permanentAddress // ignore: cast_nullable_to_non_nullable
as Address?,
  ));
}

/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get currentAddress {
    if (_self.currentAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.currentAddress!, (value) {
    return _then(_self.copyWith(currentAddress: value));
  });
}/// Create a copy of ContactInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressCopyWith<$Res>? get permanentAddress {
    if (_self.permanentAddress == null) {
    return null;
  }

  return $AddressCopyWith<$Res>(_self.permanentAddress!, (value) {
    return _then(_self.copyWith(permanentAddress: value));
  });
}
}

// dart format on
