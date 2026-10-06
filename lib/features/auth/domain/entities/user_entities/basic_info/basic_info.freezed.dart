// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BasicInfo {

 String get firstName; String get lastName; Nrc? get nrc; String get firstNameMm; String get lastNameMm; String get maritalStatus; String get gender; String get bloodType; String get nationality; String? get dateOfBirth; int? get height; int? get weight; String get religion; String get ethnicity;
/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicInfoCopyWith<BasicInfo> get copyWith => _$BasicInfoCopyWithImpl<BasicInfo>(this as BasicInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfo&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.nrc, nrc) || other.nrc == nrc)&&(identical(other.firstNameMm, firstNameMm) || other.firstNameMm == firstNameMm)&&(identical(other.lastNameMm, lastNameMm) || other.lastNameMm == lastNameMm)&&(identical(other.maritalStatus, maritalStatus) || other.maritalStatus == maritalStatus)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.bloodType, bloodType) || other.bloodType == bloodType)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.ethnicity, ethnicity) || other.ethnicity == ethnicity));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,nrc,firstNameMm,lastNameMm,maritalStatus,gender,bloodType,nationality,dateOfBirth,height,weight,religion,ethnicity);

@override
String toString() {
  return 'BasicInfo(firstName: $firstName, lastName: $lastName, nrc: $nrc, firstNameMm: $firstNameMm, lastNameMm: $lastNameMm, maritalStatus: $maritalStatus, gender: $gender, bloodType: $bloodType, nationality: $nationality, dateOfBirth: $dateOfBirth, height: $height, weight: $weight, religion: $religion, ethnicity: $ethnicity)';
}


}

/// @nodoc
abstract mixin class $BasicInfoCopyWith<$Res>  {
  factory $BasicInfoCopyWith(BasicInfo value, $Res Function(BasicInfo) _then) = _$BasicInfoCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, Nrc? nrc, String firstNameMm, String lastNameMm, String maritalStatus, String gender, String bloodType, String nationality, String? dateOfBirth, int? height, int? weight, String religion, String ethnicity
});


$NrcCopyWith<$Res>? get nrc;

}
/// @nodoc
class _$BasicInfoCopyWithImpl<$Res>
    implements $BasicInfoCopyWith<$Res> {
  _$BasicInfoCopyWithImpl(this._self, this._then);

  final BasicInfo _self;
  final $Res Function(BasicInfo) _then;

/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? nrc = freezed,Object? firstNameMm = null,Object? lastNameMm = null,Object? maritalStatus = null,Object? gender = null,Object? bloodType = null,Object? nationality = null,Object? dateOfBirth = freezed,Object? height = freezed,Object? weight = freezed,Object? religion = null,Object? ethnicity = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,nrc: freezed == nrc ? _self.nrc : nrc // ignore: cast_nullable_to_non_nullable
as Nrc?,firstNameMm: null == firstNameMm ? _self.firstNameMm : firstNameMm // ignore: cast_nullable_to_non_nullable
as String,lastNameMm: null == lastNameMm ? _self.lastNameMm : lastNameMm // ignore: cast_nullable_to_non_nullable
as String,maritalStatus: null == maritalStatus ? _self.maritalStatus : maritalStatus // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,bloodType: null == bloodType ? _self.bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as String,nationality: null == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String,ethnicity: null == ethnicity ? _self.ethnicity : ethnicity // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NrcCopyWith<$Res>? get nrc {
    if (_self.nrc == null) {
    return null;
  }

  return $NrcCopyWith<$Res>(_self.nrc!, (value) {
    return _then(_self.copyWith(nrc: value));
  });
}
}


/// Adds pattern-matching-related methods to [BasicInfo].
extension BasicInfoPatterns on BasicInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasicInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasicInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasicInfo value)  $default,){
final _that = this;
switch (_that) {
case _BasicInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasicInfo value)?  $default,){
final _that = this;
switch (_that) {
case _BasicInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String firstName,  String lastName,  Nrc? nrc,  String firstNameMm,  String lastNameMm,  String maritalStatus,  String gender,  String bloodType,  String nationality,  String? dateOfBirth,  int? height,  int? weight,  String religion,  String ethnicity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasicInfo() when $default != null:
return $default(_that.firstName,_that.lastName,_that.nrc,_that.firstNameMm,_that.lastNameMm,_that.maritalStatus,_that.gender,_that.bloodType,_that.nationality,_that.dateOfBirth,_that.height,_that.weight,_that.religion,_that.ethnicity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String firstName,  String lastName,  Nrc? nrc,  String firstNameMm,  String lastNameMm,  String maritalStatus,  String gender,  String bloodType,  String nationality,  String? dateOfBirth,  int? height,  int? weight,  String religion,  String ethnicity)  $default,) {final _that = this;
switch (_that) {
case _BasicInfo():
return $default(_that.firstName,_that.lastName,_that.nrc,_that.firstNameMm,_that.lastNameMm,_that.maritalStatus,_that.gender,_that.bloodType,_that.nationality,_that.dateOfBirth,_that.height,_that.weight,_that.religion,_that.ethnicity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String firstName,  String lastName,  Nrc? nrc,  String firstNameMm,  String lastNameMm,  String maritalStatus,  String gender,  String bloodType,  String nationality,  String? dateOfBirth,  int? height,  int? weight,  String religion,  String ethnicity)?  $default,) {final _that = this;
switch (_that) {
case _BasicInfo() when $default != null:
return $default(_that.firstName,_that.lastName,_that.nrc,_that.firstNameMm,_that.lastNameMm,_that.maritalStatus,_that.gender,_that.bloodType,_that.nationality,_that.dateOfBirth,_that.height,_that.weight,_that.religion,_that.ethnicity);case _:
  return null;

}
}

}

/// @nodoc


class _BasicInfo implements BasicInfo {
  const _BasicInfo({required this.firstName, required this.lastName, this.nrc, required this.firstNameMm, required this.lastNameMm, required this.maritalStatus, required this.gender, required this.bloodType, required this.nationality, this.dateOfBirth, this.height, this.weight, required this.religion, required this.ethnicity});
  

@override final  String firstName;
@override final  String lastName;
@override final  Nrc? nrc;
@override final  String firstNameMm;
@override final  String lastNameMm;
@override final  String maritalStatus;
@override final  String gender;
@override final  String bloodType;
@override final  String nationality;
@override final  String? dateOfBirth;
@override final  int? height;
@override final  int? weight;
@override final  String religion;
@override final  String ethnicity;

/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasicInfoCopyWith<_BasicInfo> get copyWith => __$BasicInfoCopyWithImpl<_BasicInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasicInfo&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.nrc, nrc) || other.nrc == nrc)&&(identical(other.firstNameMm, firstNameMm) || other.firstNameMm == firstNameMm)&&(identical(other.lastNameMm, lastNameMm) || other.lastNameMm == lastNameMm)&&(identical(other.maritalStatus, maritalStatus) || other.maritalStatus == maritalStatus)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.bloodType, bloodType) || other.bloodType == bloodType)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.ethnicity, ethnicity) || other.ethnicity == ethnicity));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,nrc,firstNameMm,lastNameMm,maritalStatus,gender,bloodType,nationality,dateOfBirth,height,weight,religion,ethnicity);

@override
String toString() {
  return 'BasicInfo(firstName: $firstName, lastName: $lastName, nrc: $nrc, firstNameMm: $firstNameMm, lastNameMm: $lastNameMm, maritalStatus: $maritalStatus, gender: $gender, bloodType: $bloodType, nationality: $nationality, dateOfBirth: $dateOfBirth, height: $height, weight: $weight, religion: $religion, ethnicity: $ethnicity)';
}


}

/// @nodoc
abstract mixin class _$BasicInfoCopyWith<$Res> implements $BasicInfoCopyWith<$Res> {
  factory _$BasicInfoCopyWith(_BasicInfo value, $Res Function(_BasicInfo) _then) = __$BasicInfoCopyWithImpl;
@override @useResult
$Res call({
 String firstName, String lastName, Nrc? nrc, String firstNameMm, String lastNameMm, String maritalStatus, String gender, String bloodType, String nationality, String? dateOfBirth, int? height, int? weight, String religion, String ethnicity
});


@override $NrcCopyWith<$Res>? get nrc;

}
/// @nodoc
class __$BasicInfoCopyWithImpl<$Res>
    implements _$BasicInfoCopyWith<$Res> {
  __$BasicInfoCopyWithImpl(this._self, this._then);

  final _BasicInfo _self;
  final $Res Function(_BasicInfo) _then;

/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? nrc = freezed,Object? firstNameMm = null,Object? lastNameMm = null,Object? maritalStatus = null,Object? gender = null,Object? bloodType = null,Object? nationality = null,Object? dateOfBirth = freezed,Object? height = freezed,Object? weight = freezed,Object? religion = null,Object? ethnicity = null,}) {
  return _then(_BasicInfo(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,nrc: freezed == nrc ? _self.nrc : nrc // ignore: cast_nullable_to_non_nullable
as Nrc?,firstNameMm: null == firstNameMm ? _self.firstNameMm : firstNameMm // ignore: cast_nullable_to_non_nullable
as String,lastNameMm: null == lastNameMm ? _self.lastNameMm : lastNameMm // ignore: cast_nullable_to_non_nullable
as String,maritalStatus: null == maritalStatus ? _self.maritalStatus : maritalStatus // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,bloodType: null == bloodType ? _self.bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as String,nationality: null == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as String,dateOfBirth: freezed == dateOfBirth ? _self.dateOfBirth : dateOfBirth // ignore: cast_nullable_to_non_nullable
as String?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as String,ethnicity: null == ethnicity ? _self.ethnicity : ethnicity // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of BasicInfo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NrcCopyWith<$Res>? get nrc {
    if (_self.nrc == null) {
    return null;
  }

  return $NrcCopyWith<$Res>(_self.nrc!, (value) {
    return _then(_self.copyWith(nrc: value));
  });
}
}

// dart format on
