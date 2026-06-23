// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserBio {

 String get id; String get companyId; String get userId; BasicInfo get basicInfo; ContactInfo get contactInfo; FamilyInfo get familyInfo; WorkInfo get workInfo; bool get isOvertimeEnabled; bool get isOvertime1Enabled; bool get isOvertime2Enabled; bool get isOvertime3Enabled; bool get isAutoAmendEnabled; bool get isDeductionEnabled; bool get isUnderEnabled; List<String> get tags; bool get isDeleted; dynamic get deletedAt; List<dynamic> get workExperience; List<dynamic> get education; String get createdAt; String get updatedAt;
/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBioCopyWith<UserBio> get copyWith => _$UserBioCopyWithImpl<UserBio>(this as UserBio, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBio&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.basicInfo, basicInfo) || other.basicInfo == basicInfo)&&(identical(other.contactInfo, contactInfo) || other.contactInfo == contactInfo)&&(identical(other.familyInfo, familyInfo) || other.familyInfo == familyInfo)&&(identical(other.workInfo, workInfo) || other.workInfo == workInfo)&&(identical(other.isOvertimeEnabled, isOvertimeEnabled) || other.isOvertimeEnabled == isOvertimeEnabled)&&(identical(other.isOvertime1Enabled, isOvertime1Enabled) || other.isOvertime1Enabled == isOvertime1Enabled)&&(identical(other.isOvertime2Enabled, isOvertime2Enabled) || other.isOvertime2Enabled == isOvertime2Enabled)&&(identical(other.isOvertime3Enabled, isOvertime3Enabled) || other.isOvertime3Enabled == isOvertime3Enabled)&&(identical(other.isAutoAmendEnabled, isAutoAmendEnabled) || other.isAutoAmendEnabled == isAutoAmendEnabled)&&(identical(other.isDeductionEnabled, isDeductionEnabled) || other.isDeductionEnabled == isDeductionEnabled)&&(identical(other.isUnderEnabled, isUnderEnabled) || other.isUnderEnabled == isUnderEnabled)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other.workExperience, workExperience)&&const DeepCollectionEquality().equals(other.education, education)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,companyId,userId,basicInfo,contactInfo,familyInfo,workInfo,isOvertimeEnabled,isOvertime1Enabled,isOvertime2Enabled,isOvertime3Enabled,isAutoAmendEnabled,isDeductionEnabled,isUnderEnabled,const DeepCollectionEquality().hash(tags),isDeleted,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(workExperience),const DeepCollectionEquality().hash(education),createdAt,updatedAt]);

@override
String toString() {
  return 'UserBio(id: $id, companyId: $companyId, userId: $userId, basicInfo: $basicInfo, contactInfo: $contactInfo, familyInfo: $familyInfo, workInfo: $workInfo, isOvertimeEnabled: $isOvertimeEnabled, isOvertime1Enabled: $isOvertime1Enabled, isOvertime2Enabled: $isOvertime2Enabled, isOvertime3Enabled: $isOvertime3Enabled, isAutoAmendEnabled: $isAutoAmendEnabled, isDeductionEnabled: $isDeductionEnabled, isUnderEnabled: $isUnderEnabled, tags: $tags, isDeleted: $isDeleted, deletedAt: $deletedAt, workExperience: $workExperience, education: $education, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserBioCopyWith<$Res>  {
  factory $UserBioCopyWith(UserBio value, $Res Function(UserBio) _then) = _$UserBioCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String userId, BasicInfo basicInfo, ContactInfo contactInfo, FamilyInfo familyInfo, WorkInfo workInfo, bool isOvertimeEnabled, bool isOvertime1Enabled, bool isOvertime2Enabled, bool isOvertime3Enabled, bool isAutoAmendEnabled, bool isDeductionEnabled, bool isUnderEnabled, List<String> tags, bool isDeleted, dynamic deletedAt, List<dynamic> workExperience, List<dynamic> education, String createdAt, String updatedAt
});


$BasicInfoCopyWith<$Res> get basicInfo;$ContactInfoCopyWith<$Res> get contactInfo;$FamilyInfoCopyWith<$Res> get familyInfo;$WorkInfoCopyWith<$Res> get workInfo;

}
/// @nodoc
class _$UserBioCopyWithImpl<$Res>
    implements $UserBioCopyWith<$Res> {
  _$UserBioCopyWithImpl(this._self, this._then);

  final UserBio _self;
  final $Res Function(UserBio) _then;

/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? basicInfo = null,Object? contactInfo = null,Object? familyInfo = null,Object? workInfo = null,Object? isOvertimeEnabled = null,Object? isOvertime1Enabled = null,Object? isOvertime2Enabled = null,Object? isOvertime3Enabled = null,Object? isAutoAmendEnabled = null,Object? isDeductionEnabled = null,Object? isUnderEnabled = null,Object? tags = null,Object? isDeleted = null,Object? deletedAt = freezed,Object? workExperience = null,Object? education = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,basicInfo: null == basicInfo ? _self.basicInfo : basicInfo // ignore: cast_nullable_to_non_nullable
as BasicInfo,contactInfo: null == contactInfo ? _self.contactInfo : contactInfo // ignore: cast_nullable_to_non_nullable
as ContactInfo,familyInfo: null == familyInfo ? _self.familyInfo : familyInfo // ignore: cast_nullable_to_non_nullable
as FamilyInfo,workInfo: null == workInfo ? _self.workInfo : workInfo // ignore: cast_nullable_to_non_nullable
as WorkInfo,isOvertimeEnabled: null == isOvertimeEnabled ? _self.isOvertimeEnabled : isOvertimeEnabled // ignore: cast_nullable_to_non_nullable
as bool,isOvertime1Enabled: null == isOvertime1Enabled ? _self.isOvertime1Enabled : isOvertime1Enabled // ignore: cast_nullable_to_non_nullable
as bool,isOvertime2Enabled: null == isOvertime2Enabled ? _self.isOvertime2Enabled : isOvertime2Enabled // ignore: cast_nullable_to_non_nullable
as bool,isOvertime3Enabled: null == isOvertime3Enabled ? _self.isOvertime3Enabled : isOvertime3Enabled // ignore: cast_nullable_to_non_nullable
as bool,isAutoAmendEnabled: null == isAutoAmendEnabled ? _self.isAutoAmendEnabled : isAutoAmendEnabled // ignore: cast_nullable_to_non_nullable
as bool,isDeductionEnabled: null == isDeductionEnabled ? _self.isDeductionEnabled : isDeductionEnabled // ignore: cast_nullable_to_non_nullable
as bool,isUnderEnabled: null == isUnderEnabled ? _self.isUnderEnabled : isUnderEnabled // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,workExperience: null == workExperience ? _self.workExperience : workExperience // ignore: cast_nullable_to_non_nullable
as List<dynamic>,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicInfoCopyWith<$Res> get basicInfo {
  
  return $BasicInfoCopyWith<$Res>(_self.basicInfo, (value) {
    return _then(_self.copyWith(basicInfo: value));
  });
}/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<$Res> get contactInfo {
  
  return $ContactInfoCopyWith<$Res>(_self.contactInfo, (value) {
    return _then(_self.copyWith(contactInfo: value));
  });
}/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyInfoCopyWith<$Res> get familyInfo {
  
  return $FamilyInfoCopyWith<$Res>(_self.familyInfo, (value) {
    return _then(_self.copyWith(familyInfo: value));
  });
}/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkInfoCopyWith<$Res> get workInfo {
  
  return $WorkInfoCopyWith<$Res>(_self.workInfo, (value) {
    return _then(_self.copyWith(workInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserBio].
extension UserBioPatterns on UserBio {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserBio value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserBio() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserBio value)  $default,){
final _that = this;
switch (_that) {
case _UserBio():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserBio value)?  $default,){
final _that = this;
switch (_that) {
case _UserBio() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String userId,  BasicInfo basicInfo,  ContactInfo contactInfo,  FamilyInfo familyInfo,  WorkInfo workInfo,  bool isOvertimeEnabled,  bool isOvertime1Enabled,  bool isOvertime2Enabled,  bool isOvertime3Enabled,  bool isAutoAmendEnabled,  bool isDeductionEnabled,  bool isUnderEnabled,  List<String> tags,  bool isDeleted,  dynamic deletedAt,  List<dynamic> workExperience,  List<dynamic> education,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserBio() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.isOvertimeEnabled,_that.isOvertime1Enabled,_that.isOvertime2Enabled,_that.isOvertime3Enabled,_that.isAutoAmendEnabled,_that.isDeductionEnabled,_that.isUnderEnabled,_that.tags,_that.isDeleted,_that.deletedAt,_that.workExperience,_that.education,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String userId,  BasicInfo basicInfo,  ContactInfo contactInfo,  FamilyInfo familyInfo,  WorkInfo workInfo,  bool isOvertimeEnabled,  bool isOvertime1Enabled,  bool isOvertime2Enabled,  bool isOvertime3Enabled,  bool isAutoAmendEnabled,  bool isDeductionEnabled,  bool isUnderEnabled,  List<String> tags,  bool isDeleted,  dynamic deletedAt,  List<dynamic> workExperience,  List<dynamic> education,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserBio():
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.isOvertimeEnabled,_that.isOvertime1Enabled,_that.isOvertime2Enabled,_that.isOvertime3Enabled,_that.isAutoAmendEnabled,_that.isDeductionEnabled,_that.isUnderEnabled,_that.tags,_that.isDeleted,_that.deletedAt,_that.workExperience,_that.education,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String userId,  BasicInfo basicInfo,  ContactInfo contactInfo,  FamilyInfo familyInfo,  WorkInfo workInfo,  bool isOvertimeEnabled,  bool isOvertime1Enabled,  bool isOvertime2Enabled,  bool isOvertime3Enabled,  bool isAutoAmendEnabled,  bool isDeductionEnabled,  bool isUnderEnabled,  List<String> tags,  bool isDeleted,  dynamic deletedAt,  List<dynamic> workExperience,  List<dynamic> education,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserBio() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.basicInfo,_that.contactInfo,_that.familyInfo,_that.workInfo,_that.isOvertimeEnabled,_that.isOvertime1Enabled,_that.isOvertime2Enabled,_that.isOvertime3Enabled,_that.isAutoAmendEnabled,_that.isDeductionEnabled,_that.isUnderEnabled,_that.tags,_that.isDeleted,_that.deletedAt,_that.workExperience,_that.education,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserBio implements UserBio {
  const _UserBio({required this.id, required this.companyId, required this.userId, required this.basicInfo, required this.contactInfo, required this.familyInfo, required this.workInfo, required this.isOvertimeEnabled, required this.isOvertime1Enabled, required this.isOvertime2Enabled, required this.isOvertime3Enabled, required this.isAutoAmendEnabled, required this.isDeductionEnabled, required this.isUnderEnabled, required final  List<String> tags, required this.isDeleted, required this.deletedAt, required final  List<dynamic> workExperience, required final  List<dynamic> education, required this.createdAt, required this.updatedAt}): _tags = tags,_workExperience = workExperience,_education = education;
  

@override final  String id;
@override final  String companyId;
@override final  String userId;
@override final  BasicInfo basicInfo;
@override final  ContactInfo contactInfo;
@override final  FamilyInfo familyInfo;
@override final  WorkInfo workInfo;
@override final  bool isOvertimeEnabled;
@override final  bool isOvertime1Enabled;
@override final  bool isOvertime2Enabled;
@override final  bool isOvertime3Enabled;
@override final  bool isAutoAmendEnabled;
@override final  bool isDeductionEnabled;
@override final  bool isUnderEnabled;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  bool isDeleted;
@override final  dynamic deletedAt;
 final  List<dynamic> _workExperience;
@override List<dynamic> get workExperience {
  if (_workExperience is EqualUnmodifiableListView) return _workExperience;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workExperience);
}

 final  List<dynamic> _education;
@override List<dynamic> get education {
  if (_education is EqualUnmodifiableListView) return _education;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_education);
}

@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserBioCopyWith<_UserBio> get copyWith => __$UserBioCopyWithImpl<_UserBio>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserBio&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.basicInfo, basicInfo) || other.basicInfo == basicInfo)&&(identical(other.contactInfo, contactInfo) || other.contactInfo == contactInfo)&&(identical(other.familyInfo, familyInfo) || other.familyInfo == familyInfo)&&(identical(other.workInfo, workInfo) || other.workInfo == workInfo)&&(identical(other.isOvertimeEnabled, isOvertimeEnabled) || other.isOvertimeEnabled == isOvertimeEnabled)&&(identical(other.isOvertime1Enabled, isOvertime1Enabled) || other.isOvertime1Enabled == isOvertime1Enabled)&&(identical(other.isOvertime2Enabled, isOvertime2Enabled) || other.isOvertime2Enabled == isOvertime2Enabled)&&(identical(other.isOvertime3Enabled, isOvertime3Enabled) || other.isOvertime3Enabled == isOvertime3Enabled)&&(identical(other.isAutoAmendEnabled, isAutoAmendEnabled) || other.isAutoAmendEnabled == isAutoAmendEnabled)&&(identical(other.isDeductionEnabled, isDeductionEnabled) || other.isDeductionEnabled == isDeductionEnabled)&&(identical(other.isUnderEnabled, isUnderEnabled) || other.isUnderEnabled == isUnderEnabled)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other._workExperience, _workExperience)&&const DeepCollectionEquality().equals(other._education, _education)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,companyId,userId,basicInfo,contactInfo,familyInfo,workInfo,isOvertimeEnabled,isOvertime1Enabled,isOvertime2Enabled,isOvertime3Enabled,isAutoAmendEnabled,isDeductionEnabled,isUnderEnabled,const DeepCollectionEquality().hash(_tags),isDeleted,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(_workExperience),const DeepCollectionEquality().hash(_education),createdAt,updatedAt]);

@override
String toString() {
  return 'UserBio(id: $id, companyId: $companyId, userId: $userId, basicInfo: $basicInfo, contactInfo: $contactInfo, familyInfo: $familyInfo, workInfo: $workInfo, isOvertimeEnabled: $isOvertimeEnabled, isOvertime1Enabled: $isOvertime1Enabled, isOvertime2Enabled: $isOvertime2Enabled, isOvertime3Enabled: $isOvertime3Enabled, isAutoAmendEnabled: $isAutoAmendEnabled, isDeductionEnabled: $isDeductionEnabled, isUnderEnabled: $isUnderEnabled, tags: $tags, isDeleted: $isDeleted, deletedAt: $deletedAt, workExperience: $workExperience, education: $education, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserBioCopyWith<$Res> implements $UserBioCopyWith<$Res> {
  factory _$UserBioCopyWith(_UserBio value, $Res Function(_UserBio) _then) = __$UserBioCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String userId, BasicInfo basicInfo, ContactInfo contactInfo, FamilyInfo familyInfo, WorkInfo workInfo, bool isOvertimeEnabled, bool isOvertime1Enabled, bool isOvertime2Enabled, bool isOvertime3Enabled, bool isAutoAmendEnabled, bool isDeductionEnabled, bool isUnderEnabled, List<String> tags, bool isDeleted, dynamic deletedAt, List<dynamic> workExperience, List<dynamic> education, String createdAt, String updatedAt
});


@override $BasicInfoCopyWith<$Res> get basicInfo;@override $ContactInfoCopyWith<$Res> get contactInfo;@override $FamilyInfoCopyWith<$Res> get familyInfo;@override $WorkInfoCopyWith<$Res> get workInfo;

}
/// @nodoc
class __$UserBioCopyWithImpl<$Res>
    implements _$UserBioCopyWith<$Res> {
  __$UserBioCopyWithImpl(this._self, this._then);

  final _UserBio _self;
  final $Res Function(_UserBio) _then;

/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? basicInfo = null,Object? contactInfo = null,Object? familyInfo = null,Object? workInfo = null,Object? isOvertimeEnabled = null,Object? isOvertime1Enabled = null,Object? isOvertime2Enabled = null,Object? isOvertime3Enabled = null,Object? isAutoAmendEnabled = null,Object? isDeductionEnabled = null,Object? isUnderEnabled = null,Object? tags = null,Object? isDeleted = null,Object? deletedAt = freezed,Object? workExperience = null,Object? education = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_UserBio(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,basicInfo: null == basicInfo ? _self.basicInfo : basicInfo // ignore: cast_nullable_to_non_nullable
as BasicInfo,contactInfo: null == contactInfo ? _self.contactInfo : contactInfo // ignore: cast_nullable_to_non_nullable
as ContactInfo,familyInfo: null == familyInfo ? _self.familyInfo : familyInfo // ignore: cast_nullable_to_non_nullable
as FamilyInfo,workInfo: null == workInfo ? _self.workInfo : workInfo // ignore: cast_nullable_to_non_nullable
as WorkInfo,isOvertimeEnabled: null == isOvertimeEnabled ? _self.isOvertimeEnabled : isOvertimeEnabled // ignore: cast_nullable_to_non_nullable
as bool,isOvertime1Enabled: null == isOvertime1Enabled ? _self.isOvertime1Enabled : isOvertime1Enabled // ignore: cast_nullable_to_non_nullable
as bool,isOvertime2Enabled: null == isOvertime2Enabled ? _self.isOvertime2Enabled : isOvertime2Enabled // ignore: cast_nullable_to_non_nullable
as bool,isOvertime3Enabled: null == isOvertime3Enabled ? _self.isOvertime3Enabled : isOvertime3Enabled // ignore: cast_nullable_to_non_nullable
as bool,isAutoAmendEnabled: null == isAutoAmendEnabled ? _self.isAutoAmendEnabled : isAutoAmendEnabled // ignore: cast_nullable_to_non_nullable
as bool,isDeductionEnabled: null == isDeductionEnabled ? _self.isDeductionEnabled : isDeductionEnabled // ignore: cast_nullable_to_non_nullable
as bool,isUnderEnabled: null == isUnderEnabled ? _self.isUnderEnabled : isUnderEnabled // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,workExperience: null == workExperience ? _self._workExperience : workExperience // ignore: cast_nullable_to_non_nullable
as List<dynamic>,education: null == education ? _self._education : education // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicInfoCopyWith<$Res> get basicInfo {
  
  return $BasicInfoCopyWith<$Res>(_self.basicInfo, (value) {
    return _then(_self.copyWith(basicInfo: value));
  });
}/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoCopyWith<$Res> get contactInfo {
  
  return $ContactInfoCopyWith<$Res>(_self.contactInfo, (value) {
    return _then(_self.copyWith(contactInfo: value));
  });
}/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyInfoCopyWith<$Res> get familyInfo {
  
  return $FamilyInfoCopyWith<$Res>(_self.familyInfo, (value) {
    return _then(_self.copyWith(familyInfo: value));
  });
}/// Create a copy of UserBio
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkInfoCopyWith<$Res> get workInfo {
  
  return $WorkInfoCopyWith<$Res>(_self.workInfo, (value) {
    return _then(_self.copyWith(workInfo: value));
  });
}
}

// dart format on
