// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactInfoModel {

@JsonKey(name: 'emergency_contact') dynamic get emergencyContact; String get phone; String get email;@JsonKey(name: 'current_address') AddressModel? get currentAddress;@JsonKey(name: 'permanent_address') AddressModel? get permanentAddress;
/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactInfoModelCopyWith<ContactInfoModel> get copyWith => _$ContactInfoModelCopyWithImpl<ContactInfoModel>(this as ContactInfoModel, _$identity);

  /// Serializes this ContactInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactInfoModel&&const DeepCollectionEquality().equals(other.emergencyContact, emergencyContact)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.permanentAddress, permanentAddress) || other.permanentAddress == permanentAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(emergencyContact),phone,email,currentAddress,permanentAddress);

@override
String toString() {
  return 'ContactInfoModel(emergencyContact: $emergencyContact, phone: $phone, email: $email, currentAddress: $currentAddress, permanentAddress: $permanentAddress)';
}


}

/// @nodoc
abstract mixin class $ContactInfoModelCopyWith<$Res>  {
  factory $ContactInfoModelCopyWith(ContactInfoModel value, $Res Function(ContactInfoModel) _then) = _$ContactInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'emergency_contact') dynamic emergencyContact, String phone, String email,@JsonKey(name: 'current_address') AddressModel? currentAddress,@JsonKey(name: 'permanent_address') AddressModel? permanentAddress
});


$AddressModelCopyWith<$Res>? get currentAddress;$AddressModelCopyWith<$Res>? get permanentAddress;

}
/// @nodoc
class _$ContactInfoModelCopyWithImpl<$Res>
    implements $ContactInfoModelCopyWith<$Res> {
  _$ContactInfoModelCopyWithImpl(this._self, this._then);

  final ContactInfoModel _self;
  final $Res Function(ContactInfoModel) _then;

/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emergencyContact = freezed,Object? phone = null,Object? email = null,Object? currentAddress = freezed,Object? permanentAddress = freezed,}) {
  return _then(_self.copyWith(
emergencyContact: freezed == emergencyContact ? _self.emergencyContact : emergencyContact // ignore: cast_nullable_to_non_nullable
as dynamic,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as AddressModel?,permanentAddress: freezed == permanentAddress ? _self.permanentAddress : permanentAddress // ignore: cast_nullable_to_non_nullable
as AddressModel?,
  ));
}
/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get currentAddress {
    if (_self.currentAddress == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.currentAddress!, (value) {
    return _then(_self.copyWith(currentAddress: value));
  });
}/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get permanentAddress {
    if (_self.permanentAddress == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.permanentAddress!, (value) {
    return _then(_self.copyWith(permanentAddress: value));
  });
}
}


/// Adds pattern-matching-related methods to [ContactInfoModel].
extension ContactInfoModelPatterns on ContactInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _ContactInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContactInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'emergency_contact')  dynamic emergencyContact,  String phone,  String email, @JsonKey(name: 'current_address')  AddressModel? currentAddress, @JsonKey(name: 'permanent_address')  AddressModel? permanentAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactInfoModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'emergency_contact')  dynamic emergencyContact,  String phone,  String email, @JsonKey(name: 'current_address')  AddressModel? currentAddress, @JsonKey(name: 'permanent_address')  AddressModel? permanentAddress)  $default,) {final _that = this;
switch (_that) {
case _ContactInfoModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'emergency_contact')  dynamic emergencyContact,  String phone,  String email, @JsonKey(name: 'current_address')  AddressModel? currentAddress, @JsonKey(name: 'permanent_address')  AddressModel? permanentAddress)?  $default,) {final _that = this;
switch (_that) {
case _ContactInfoModel() when $default != null:
return $default(_that.emergencyContact,_that.phone,_that.email,_that.currentAddress,_that.permanentAddress);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContactInfoModel extends ContactInfoModel {
  const _ContactInfoModel({@JsonKey(name: 'emergency_contact') this.emergencyContact, this.phone = '', this.email = '', @JsonKey(name: 'current_address') this.currentAddress, @JsonKey(name: 'permanent_address') this.permanentAddress}): super._();
  factory _ContactInfoModel.fromJson(Map<String, dynamic> json) => _$ContactInfoModelFromJson(json);

@override@JsonKey(name: 'emergency_contact') final  dynamic emergencyContact;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String email;
@override@JsonKey(name: 'current_address') final  AddressModel? currentAddress;
@override@JsonKey(name: 'permanent_address') final  AddressModel? permanentAddress;

/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactInfoModelCopyWith<_ContactInfoModel> get copyWith => __$ContactInfoModelCopyWithImpl<_ContactInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactInfoModel&&const DeepCollectionEquality().equals(other.emergencyContact, emergencyContact)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.currentAddress, currentAddress) || other.currentAddress == currentAddress)&&(identical(other.permanentAddress, permanentAddress) || other.permanentAddress == permanentAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(emergencyContact),phone,email,currentAddress,permanentAddress);

@override
String toString() {
  return 'ContactInfoModel(emergencyContact: $emergencyContact, phone: $phone, email: $email, currentAddress: $currentAddress, permanentAddress: $permanentAddress)';
}


}

/// @nodoc
abstract mixin class _$ContactInfoModelCopyWith<$Res> implements $ContactInfoModelCopyWith<$Res> {
  factory _$ContactInfoModelCopyWith(_ContactInfoModel value, $Res Function(_ContactInfoModel) _then) = __$ContactInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'emergency_contact') dynamic emergencyContact, String phone, String email,@JsonKey(name: 'current_address') AddressModel? currentAddress,@JsonKey(name: 'permanent_address') AddressModel? permanentAddress
});


@override $AddressModelCopyWith<$Res>? get currentAddress;@override $AddressModelCopyWith<$Res>? get permanentAddress;

}
/// @nodoc
class __$ContactInfoModelCopyWithImpl<$Res>
    implements _$ContactInfoModelCopyWith<$Res> {
  __$ContactInfoModelCopyWithImpl(this._self, this._then);

  final _ContactInfoModel _self;
  final $Res Function(_ContactInfoModel) _then;

/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emergencyContact = freezed,Object? phone = null,Object? email = null,Object? currentAddress = freezed,Object? permanentAddress = freezed,}) {
  return _then(_ContactInfoModel(
emergencyContact: freezed == emergencyContact ? _self.emergencyContact : emergencyContact // ignore: cast_nullable_to_non_nullable
as dynamic,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,currentAddress: freezed == currentAddress ? _self.currentAddress : currentAddress // ignore: cast_nullable_to_non_nullable
as AddressModel?,permanentAddress: freezed == permanentAddress ? _self.permanentAddress : permanentAddress // ignore: cast_nullable_to_non_nullable
as AddressModel?,
  ));
}

/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get currentAddress {
    if (_self.currentAddress == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.currentAddress!, (value) {
    return _then(_self.copyWith(currentAddress: value));
  });
}/// Create a copy of ContactInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressModelCopyWith<$Res>? get permanentAddress {
    if (_self.permanentAddress == null) {
    return null;
  }

  return $AddressModelCopyWith<$Res>(_self.permanentAddress!, (value) {
    return _then(_self.copyWith(permanentAddress: value));
  });
}
}

// dart format on
