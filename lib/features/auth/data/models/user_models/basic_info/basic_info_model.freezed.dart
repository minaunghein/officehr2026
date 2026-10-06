// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicInfoModel {

@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; NrcModel? get nrc;@JsonKey(name: 'first_name_mm') String get firstNameMm;@JsonKey(name: 'last_name_mm') String get lastNameMm;@JsonKey(name: 'marital_status') String get maritalStatus; String get gender;@JsonKey(name: 'blood_type') String get bloodType; String get nationality;@JsonKey(name: 'date_of_birth') String? get dateOfBirth; int? get height; int? get weight; String get religion; String get ethnicity;
/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicInfoModelCopyWith<BasicInfoModel> get copyWith => _$BasicInfoModelCopyWithImpl<BasicInfoModel>(this as BasicInfoModel, _$identity);

  /// Serializes this BasicInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.nrc, nrc) || other.nrc == nrc)&&(identical(other.firstNameMm, firstNameMm) || other.firstNameMm == firstNameMm)&&(identical(other.lastNameMm, lastNameMm) || other.lastNameMm == lastNameMm)&&(identical(other.maritalStatus, maritalStatus) || other.maritalStatus == maritalStatus)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.bloodType, bloodType) || other.bloodType == bloodType)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.ethnicity, ethnicity) || other.ethnicity == ethnicity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,nrc,firstNameMm,lastNameMm,maritalStatus,gender,bloodType,nationality,dateOfBirth,height,weight,religion,ethnicity);

@override
String toString() {
  return 'BasicInfoModel(firstName: $firstName, lastName: $lastName, nrc: $nrc, firstNameMm: $firstNameMm, lastNameMm: $lastNameMm, maritalStatus: $maritalStatus, gender: $gender, bloodType: $bloodType, nationality: $nationality, dateOfBirth: $dateOfBirth, height: $height, weight: $weight, religion: $religion, ethnicity: $ethnicity)';
}


}

/// @nodoc
abstract mixin class $BasicInfoModelCopyWith<$Res>  {
  factory $BasicInfoModelCopyWith(BasicInfoModel value, $Res Function(BasicInfoModel) _then) = _$BasicInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, NrcModel? nrc,@JsonKey(name: 'first_name_mm') String firstNameMm,@JsonKey(name: 'last_name_mm') String lastNameMm,@JsonKey(name: 'marital_status') String maritalStatus, String gender,@JsonKey(name: 'blood_type') String bloodType, String nationality,@JsonKey(name: 'date_of_birth') String? dateOfBirth, int? height, int? weight, String religion, String ethnicity
});


$NrcModelCopyWith<$Res>? get nrc;

}
/// @nodoc
class _$BasicInfoModelCopyWithImpl<$Res>
    implements $BasicInfoModelCopyWith<$Res> {
  _$BasicInfoModelCopyWithImpl(this._self, this._then);

  final BasicInfoModel _self;
  final $Res Function(BasicInfoModel) _then;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? nrc = freezed,Object? firstNameMm = null,Object? lastNameMm = null,Object? maritalStatus = null,Object? gender = null,Object? bloodType = null,Object? nationality = null,Object? dateOfBirth = freezed,Object? height = freezed,Object? weight = freezed,Object? religion = null,Object? ethnicity = null,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,nrc: freezed == nrc ? _self.nrc : nrc // ignore: cast_nullable_to_non_nullable
as NrcModel?,firstNameMm: null == firstNameMm ? _self.firstNameMm : firstNameMm // ignore: cast_nullable_to_non_nullable
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
/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NrcModelCopyWith<$Res>? get nrc {
    if (_self.nrc == null) {
    return null;
  }

  return $NrcModelCopyWith<$Res>(_self.nrc!, (value) {
    return _then(_self.copyWith(nrc: value));
  });
}
}


/// Adds pattern-matching-related methods to [BasicInfoModel].
extension BasicInfoModelPatterns on BasicInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasicInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasicInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _BasicInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasicInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  NrcModel? nrc, @JsonKey(name: 'first_name_mm')  String firstNameMm, @JsonKey(name: 'last_name_mm')  String lastNameMm, @JsonKey(name: 'marital_status')  String maritalStatus,  String gender, @JsonKey(name: 'blood_type')  String bloodType,  String nationality, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  int? height,  int? weight,  String religion,  String ethnicity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  NrcModel? nrc, @JsonKey(name: 'first_name_mm')  String firstNameMm, @JsonKey(name: 'last_name_mm')  String lastNameMm, @JsonKey(name: 'marital_status')  String maritalStatus,  String gender, @JsonKey(name: 'blood_type')  String bloodType,  String nationality, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  int? height,  int? weight,  String religion,  String ethnicity)  $default,) {final _that = this;
switch (_that) {
case _BasicInfoModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  NrcModel? nrc, @JsonKey(name: 'first_name_mm')  String firstNameMm, @JsonKey(name: 'last_name_mm')  String lastNameMm, @JsonKey(name: 'marital_status')  String maritalStatus,  String gender, @JsonKey(name: 'blood_type')  String bloodType,  String nationality, @JsonKey(name: 'date_of_birth')  String? dateOfBirth,  int? height,  int? weight,  String religion,  String ethnicity)?  $default,) {final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.nrc,_that.firstNameMm,_that.lastNameMm,_that.maritalStatus,_that.gender,_that.bloodType,_that.nationality,_that.dateOfBirth,_that.height,_that.weight,_that.religion,_that.ethnicity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BasicInfoModel extends BasicInfoModel {
  const _BasicInfoModel({@JsonKey(name: 'first_name') this.firstName = '', @JsonKey(name: 'last_name') this.lastName = '', this.nrc, @JsonKey(name: 'first_name_mm') this.firstNameMm = '', @JsonKey(name: 'last_name_mm') this.lastNameMm = '', @JsonKey(name: 'marital_status') this.maritalStatus = '', this.gender = '', @JsonKey(name: 'blood_type') this.bloodType = '', this.nationality = '', @JsonKey(name: 'date_of_birth') this.dateOfBirth, this.height, this.weight, this.religion = '', this.ethnicity = ''}): super._();
  factory _BasicInfoModel.fromJson(Map<String, dynamic> json) => _$BasicInfoModelFromJson(json);

@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  NrcModel? nrc;
@override@JsonKey(name: 'first_name_mm') final  String firstNameMm;
@override@JsonKey(name: 'last_name_mm') final  String lastNameMm;
@override@JsonKey(name: 'marital_status') final  String maritalStatus;
@override@JsonKey() final  String gender;
@override@JsonKey(name: 'blood_type') final  String bloodType;
@override@JsonKey() final  String nationality;
@override@JsonKey(name: 'date_of_birth') final  String? dateOfBirth;
@override final  int? height;
@override final  int? weight;
@override@JsonKey() final  String religion;
@override@JsonKey() final  String ethnicity;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasicInfoModelCopyWith<_BasicInfoModel> get copyWith => __$BasicInfoModelCopyWithImpl<_BasicInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasicInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasicInfoModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.nrc, nrc) || other.nrc == nrc)&&(identical(other.firstNameMm, firstNameMm) || other.firstNameMm == firstNameMm)&&(identical(other.lastNameMm, lastNameMm) || other.lastNameMm == lastNameMm)&&(identical(other.maritalStatus, maritalStatus) || other.maritalStatus == maritalStatus)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.bloodType, bloodType) || other.bloodType == bloodType)&&(identical(other.nationality, nationality) || other.nationality == nationality)&&(identical(other.dateOfBirth, dateOfBirth) || other.dateOfBirth == dateOfBirth)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.religion, religion) || other.religion == religion)&&(identical(other.ethnicity, ethnicity) || other.ethnicity == ethnicity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,nrc,firstNameMm,lastNameMm,maritalStatus,gender,bloodType,nationality,dateOfBirth,height,weight,religion,ethnicity);

@override
String toString() {
  return 'BasicInfoModel(firstName: $firstName, lastName: $lastName, nrc: $nrc, firstNameMm: $firstNameMm, lastNameMm: $lastNameMm, maritalStatus: $maritalStatus, gender: $gender, bloodType: $bloodType, nationality: $nationality, dateOfBirth: $dateOfBirth, height: $height, weight: $weight, religion: $religion, ethnicity: $ethnicity)';
}


}

/// @nodoc
abstract mixin class _$BasicInfoModelCopyWith<$Res> implements $BasicInfoModelCopyWith<$Res> {
  factory _$BasicInfoModelCopyWith(_BasicInfoModel value, $Res Function(_BasicInfoModel) _then) = __$BasicInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, NrcModel? nrc,@JsonKey(name: 'first_name_mm') String firstNameMm,@JsonKey(name: 'last_name_mm') String lastNameMm,@JsonKey(name: 'marital_status') String maritalStatus, String gender,@JsonKey(name: 'blood_type') String bloodType, String nationality,@JsonKey(name: 'date_of_birth') String? dateOfBirth, int? height, int? weight, String religion, String ethnicity
});


@override $NrcModelCopyWith<$Res>? get nrc;

}
/// @nodoc
class __$BasicInfoModelCopyWithImpl<$Res>
    implements _$BasicInfoModelCopyWith<$Res> {
  __$BasicInfoModelCopyWithImpl(this._self, this._then);

  final _BasicInfoModel _self;
  final $Res Function(_BasicInfoModel) _then;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? nrc = freezed,Object? firstNameMm = null,Object? lastNameMm = null,Object? maritalStatus = null,Object? gender = null,Object? bloodType = null,Object? nationality = null,Object? dateOfBirth = freezed,Object? height = freezed,Object? weight = freezed,Object? religion = null,Object? ethnicity = null,}) {
  return _then(_BasicInfoModel(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,nrc: freezed == nrc ? _self.nrc : nrc // ignore: cast_nullable_to_non_nullable
as NrcModel?,firstNameMm: null == firstNameMm ? _self.firstNameMm : firstNameMm // ignore: cast_nullable_to_non_nullable
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

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NrcModelCopyWith<$Res>? get nrc {
    if (_self.nrc == null) {
    return null;
  }

  return $NrcModelCopyWith<$Res>(_self.nrc!, (value) {
    return _then(_self.copyWith(nrc: value));
  });
}
}

// dart format on
