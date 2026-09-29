// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmployeeModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(name: 'company_id') String get companyId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'basic_info') BasicInfoModel get basicInfo;@JsonKey(name: 'contact_info') ContactInfoModel get contactInfo;@JsonKey(name: 'family_info') FamilyInfoModel get familyInfo;@JsonKey(name: 'work_info') WorkInfoModel get workInfo; bool get deleted; String? get deletedAt; List<EducationModel> get education;@JsonKey(name: 'work_experience') List<WorkExperienceModel> get workExperience; String? get createdAt; String? get updatedAt;
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeeModelCopyWith<EmployeeModel> get copyWith => _$EmployeeModelCopyWithImpl<EmployeeModel>(this as EmployeeModel, _$identity);

  /// Serializes this EmployeeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.basicInfo, basicInfo) || other.basicInfo == basicInfo)&&(identical(other.contactInfo, contactInfo) || other.contactInfo == contactInfo)&&(identical(other.familyInfo, familyInfo) || other.familyInfo == familyInfo)&&(identical(other.workInfo, workInfo) || other.workInfo == workInfo)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&const DeepCollectionEquality().equals(other.education, education)&&const DeepCollectionEquality().equals(other.workExperience, workExperience)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,userId,basicInfo,contactInfo,familyInfo,workInfo,deleted,deletedAt,const DeepCollectionEquality().hash(education),const DeepCollectionEquality().hash(workExperience),createdAt,updatedAt);

@override
String toString() {
  return 'EmployeeModel(id: $id, companyId: $companyId, userId: $userId, basicInfo: $basicInfo, contactInfo: $contactInfo, familyInfo: $familyInfo, workInfo: $workInfo, deleted: $deleted, deletedAt: $deletedAt, education: $education, workExperience: $workExperience, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $EmployeeModelCopyWith<$Res>  {
  factory $EmployeeModelCopyWith(EmployeeModel value, $Res Function(EmployeeModel) _then) = _$EmployeeModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'basic_info') BasicInfoModel basicInfo,@JsonKey(name: 'contact_info') ContactInfoModel contactInfo,@JsonKey(name: 'family_info') FamilyInfoModel familyInfo,@JsonKey(name: 'work_info') WorkInfoModel workInfo, bool deleted, String? deletedAt, List<EducationModel> education,@JsonKey(name: 'work_experience') List<WorkExperienceModel> workExperience, String? createdAt, String? updatedAt
});


$BasicInfoModelCopyWith<$Res> get basicInfo;$ContactInfoModelCopyWith<$Res> get contactInfo;$FamilyInfoModelCopyWith<$Res> get familyInfo;$WorkInfoModelCopyWith<$Res> get workInfo;

}
/// @nodoc
class _$EmployeeModelCopyWithImpl<$Res>
    implements $EmployeeModelCopyWith<$Res> {
  _$EmployeeModelCopyWithImpl(this._self, this._then);

  final EmployeeModel _self;
  final $Res Function(EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? basicInfo = null,Object? contactInfo = null,Object? familyInfo = null,Object? workInfo = null,Object? deleted = null,Object? deletedAt = freezed,Object? education = null,Object? workExperience = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,basicInfo: null == basicInfo ? _self.basicInfo : basicInfo // ignore: cast_nullable_to_non_nullable
as BasicInfoModel,contactInfo: null == contactInfo ? _self.contactInfo : contactInfo // ignore: cast_nullable_to_non_nullable
as ContactInfoModel,familyInfo: null == familyInfo ? _self.familyInfo : familyInfo // ignore: cast_nullable_to_non_nullable
as FamilyInfoModel,workInfo: null == workInfo ? _self.workInfo : workInfo // ignore: cast_nullable_to_non_nullable
as WorkInfoModel,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as List<EducationModel>,workExperience: null == workExperience ? _self.workExperience : workExperience // ignore: cast_nullable_to_non_nullable
as List<WorkExperienceModel>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicInfoModelCopyWith<$Res> get basicInfo {
  
  return $BasicInfoModelCopyWith<$Res>(_self.basicInfo, (value) {
    return _then(_self.copyWith(basicInfo: value));
  });
}/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoModelCopyWith<$Res> get contactInfo {
  
  return $ContactInfoModelCopyWith<$Res>(_self.contactInfo, (value) {
    return _then(_self.copyWith(contactInfo: value));
  });
}/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyInfoModelCopyWith<$Res> get familyInfo {
  
  return $FamilyInfoModelCopyWith<$Res>(_self.familyInfo, (value) {
    return _then(_self.copyWith(familyInfo: value));
  });
}/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkInfoModelCopyWith<$Res> get workInfo {
  
  return $WorkInfoModelCopyWith<$Res>(_self.workInfo, (value) {
    return _then(_self.copyWith(workInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [EmployeeModel].
extension EmployeeModelPatterns on EmployeeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmployeeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmployeeModel value)  $default,){
final _that = this;
switch (_that) {
case _EmployeeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmployeeModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'basic_info')  BasicInfoModel basicInfo, @JsonKey(name: 'contact_info')  ContactInfoModel contactInfo, @JsonKey(name: 'family_info')  FamilyInfoModel familyInfo, @JsonKey(name: 'work_info')  WorkInfoModel workInfo,  bool deleted,  String? deletedAt,  List<EducationModel> education, @JsonKey(name: 'work_experience')  List<WorkExperienceModel> workExperience,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.deleted,_that.deletedAt,_that.education,_that.workExperience,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'basic_info')  BasicInfoModel basicInfo, @JsonKey(name: 'contact_info')  ContactInfoModel contactInfo, @JsonKey(name: 'family_info')  FamilyInfoModel familyInfo, @JsonKey(name: 'work_info')  WorkInfoModel workInfo,  bool deleted,  String? deletedAt,  List<EducationModel> education, @JsonKey(name: 'work_experience')  List<WorkExperienceModel> workExperience,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel():
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.deleted,_that.deletedAt,_that.education,_that.workExperience,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'basic_info')  BasicInfoModel basicInfo, @JsonKey(name: 'contact_info')  ContactInfoModel contactInfo, @JsonKey(name: 'family_info')  FamilyInfoModel familyInfo, @JsonKey(name: 'work_info')  WorkInfoModel workInfo,  bool deleted,  String? deletedAt,  List<EducationModel> education, @JsonKey(name: 'work_experience')  List<WorkExperienceModel> workExperience,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _EmployeeModel() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.deleted,_that.deletedAt,_that.education,_that.workExperience,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmployeeModel extends EmployeeModel {
  const _EmployeeModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(name: 'company_id') this.companyId = '', @JsonKey(name: 'user_id') this.userId = '', @JsonKey(name: 'basic_info') required this.basicInfo, @JsonKey(name: 'contact_info') required this.contactInfo, @JsonKey(name: 'family_info') required this.familyInfo, @JsonKey(name: 'work_info') required this.workInfo, this.deleted = false, this.deletedAt, final  List<EducationModel> education = const <EducationModel>[], @JsonKey(name: 'work_experience') final  List<WorkExperienceModel> workExperience = const <WorkExperienceModel>[], this.createdAt, this.updatedAt}): _education = education,_workExperience = workExperience,super._();
  factory _EmployeeModel.fromJson(Map<String, dynamic> json) => _$EmployeeModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'basic_info') final  BasicInfoModel basicInfo;
@override@JsonKey(name: 'contact_info') final  ContactInfoModel contactInfo;
@override@JsonKey(name: 'family_info') final  FamilyInfoModel familyInfo;
@override@JsonKey(name: 'work_info') final  WorkInfoModel workInfo;
@override@JsonKey() final  bool deleted;
@override final  String? deletedAt;
 final  List<EducationModel> _education;
@override@JsonKey() List<EducationModel> get education {
  if (_education is EqualUnmodifiableListView) return _education;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_education);
}

 final  List<WorkExperienceModel> _workExperience;
@override@JsonKey(name: 'work_experience') List<WorkExperienceModel> get workExperience {
  if (_workExperience is EqualUnmodifiableListView) return _workExperience;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workExperience);
}

@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeeModelCopyWith<_EmployeeModel> get copyWith => __$EmployeeModelCopyWithImpl<_EmployeeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmployeeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.basicInfo, basicInfo) || other.basicInfo == basicInfo)&&(identical(other.contactInfo, contactInfo) || other.contactInfo == contactInfo)&&(identical(other.familyInfo, familyInfo) || other.familyInfo == familyInfo)&&(identical(other.workInfo, workInfo) || other.workInfo == workInfo)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&const DeepCollectionEquality().equals(other._education, _education)&&const DeepCollectionEquality().equals(other._workExperience, _workExperience)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,userId,basicInfo,contactInfo,familyInfo,workInfo,deleted,deletedAt,const DeepCollectionEquality().hash(_education),const DeepCollectionEquality().hash(_workExperience),createdAt,updatedAt);

@override
String toString() {
  return 'EmployeeModel(id: $id, companyId: $companyId, userId: $userId, basicInfo: $basicInfo, contactInfo: $contactInfo, familyInfo: $familyInfo, workInfo: $workInfo, deleted: $deleted, deletedAt: $deletedAt, education: $education, workExperience: $workExperience, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$EmployeeModelCopyWith<$Res> implements $EmployeeModelCopyWith<$Res> {
  factory _$EmployeeModelCopyWith(_EmployeeModel value, $Res Function(_EmployeeModel) _then) = __$EmployeeModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'basic_info') BasicInfoModel basicInfo,@JsonKey(name: 'contact_info') ContactInfoModel contactInfo,@JsonKey(name: 'family_info') FamilyInfoModel familyInfo,@JsonKey(name: 'work_info') WorkInfoModel workInfo, bool deleted, String? deletedAt, List<EducationModel> education,@JsonKey(name: 'work_experience') List<WorkExperienceModel> workExperience, String? createdAt, String? updatedAt
});


@override $BasicInfoModelCopyWith<$Res> get basicInfo;@override $ContactInfoModelCopyWith<$Res> get contactInfo;@override $FamilyInfoModelCopyWith<$Res> get familyInfo;@override $WorkInfoModelCopyWith<$Res> get workInfo;

}
/// @nodoc
class __$EmployeeModelCopyWithImpl<$Res>
    implements _$EmployeeModelCopyWith<$Res> {
  __$EmployeeModelCopyWithImpl(this._self, this._then);

  final _EmployeeModel _self;
  final $Res Function(_EmployeeModel) _then;

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? basicInfo = null,Object? contactInfo = null,Object? familyInfo = null,Object? workInfo = null,Object? deleted = null,Object? deletedAt = freezed,Object? education = null,Object? workExperience = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_EmployeeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,basicInfo: null == basicInfo ? _self.basicInfo : basicInfo // ignore: cast_nullable_to_non_nullable
as BasicInfoModel,contactInfo: null == contactInfo ? _self.contactInfo : contactInfo // ignore: cast_nullable_to_non_nullable
as ContactInfoModel,familyInfo: null == familyInfo ? _self.familyInfo : familyInfo // ignore: cast_nullable_to_non_nullable
as FamilyInfoModel,workInfo: null == workInfo ? _self.workInfo : workInfo // ignore: cast_nullable_to_non_nullable
as WorkInfoModel,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,education: null == education ? _self._education : education // ignore: cast_nullable_to_non_nullable
as List<EducationModel>,workExperience: null == workExperience ? _self._workExperience : workExperience // ignore: cast_nullable_to_non_nullable
as List<WorkExperienceModel>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicInfoModelCopyWith<$Res> get basicInfo {
  
  return $BasicInfoModelCopyWith<$Res>(_self.basicInfo, (value) {
    return _then(_self.copyWith(basicInfo: value));
  });
}/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoModelCopyWith<$Res> get contactInfo {
  
  return $ContactInfoModelCopyWith<$Res>(_self.contactInfo, (value) {
    return _then(_self.copyWith(contactInfo: value));
  });
}/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyInfoModelCopyWith<$Res> get familyInfo {
  
  return $FamilyInfoModelCopyWith<$Res>(_self.familyInfo, (value) {
    return _then(_self.copyWith(familyInfo: value));
  });
}/// Create a copy of EmployeeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkInfoModelCopyWith<$Res> get workInfo {
  
  return $WorkInfoModelCopyWith<$Res>(_self.workInfo, (value) {
    return _then(_self.copyWith(workInfo: value));
  });
}
}

// dart format on
