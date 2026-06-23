// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserBioModel {

@JsonKey(name: '_id') String get id; String get company; String get userid; BasicInfoModel get basicinfo; ContactInfoModel get contactinfo; FamilyInfoModel get familyinfo; WorkInfoModel get workinfo; bool get isotenable; bool get isot1enable; bool get isot2enable; bool get isot3enable; bool get isautoammendenable; bool get isdeductionenable; bool get isunderenable; List<String> get tags; bool get deleted; dynamic get deletedAt; List<dynamic> get workexperience; List<dynamic> get education; String get createdAt; String get updatedAt;@JsonKey(name: '__v') int get version;
/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserBioModelCopyWith<UserBioModel> get copyWith => _$UserBioModelCopyWithImpl<UserBioModel>(this as UserBioModel, _$identity);

  /// Serializes this UserBioModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserBioModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.userid, userid) || other.userid == userid)&&(identical(other.basicinfo, basicinfo) || other.basicinfo == basicinfo)&&(identical(other.contactinfo, contactinfo) || other.contactinfo == contactinfo)&&(identical(other.familyinfo, familyinfo) || other.familyinfo == familyinfo)&&(identical(other.workinfo, workinfo) || other.workinfo == workinfo)&&(identical(other.isotenable, isotenable) || other.isotenable == isotenable)&&(identical(other.isot1enable, isot1enable) || other.isot1enable == isot1enable)&&(identical(other.isot2enable, isot2enable) || other.isot2enable == isot2enable)&&(identical(other.isot3enable, isot3enable) || other.isot3enable == isot3enable)&&(identical(other.isautoammendenable, isautoammendenable) || other.isautoammendenable == isautoammendenable)&&(identical(other.isdeductionenable, isdeductionenable) || other.isdeductionenable == isdeductionenable)&&(identical(other.isunderenable, isunderenable) || other.isunderenable == isunderenable)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other.workexperience, workexperience)&&const DeepCollectionEquality().equals(other.education, education)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,userid,basicinfo,contactinfo,familyinfo,workinfo,isotenable,isot1enable,isot2enable,isot3enable,isautoammendenable,isdeductionenable,isunderenable,const DeepCollectionEquality().hash(tags),deleted,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(workexperience),const DeepCollectionEquality().hash(education),createdAt,updatedAt,version]);

@override
String toString() {
  return 'UserBioModel(id: $id, company: $company, userid: $userid, basicinfo: $basicinfo, contactinfo: $contactinfo, familyinfo: $familyinfo, workinfo: $workinfo, isotenable: $isotenable, isot1enable: $isot1enable, isot2enable: $isot2enable, isot3enable: $isot3enable, isautoammendenable: $isautoammendenable, isdeductionenable: $isdeductionenable, isunderenable: $isunderenable, tags: $tags, deleted: $deleted, deletedAt: $deletedAt, workexperience: $workexperience, education: $education, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $UserBioModelCopyWith<$Res>  {
  factory $UserBioModelCopyWith(UserBioModel value, $Res Function(UserBioModel) _then) = _$UserBioModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String company, String userid, BasicInfoModel basicinfo, ContactInfoModel contactinfo, FamilyInfoModel familyinfo, WorkInfoModel workinfo, bool isotenable, bool isot1enable, bool isot2enable, bool isot3enable, bool isautoammendenable, bool isdeductionenable, bool isunderenable, List<String> tags, bool deleted, dynamic deletedAt, List<dynamic> workexperience, List<dynamic> education, String createdAt, String updatedAt,@JsonKey(name: '__v') int version
});


$BasicInfoModelCopyWith<$Res> get basicinfo;$ContactInfoModelCopyWith<$Res> get contactinfo;$FamilyInfoModelCopyWith<$Res> get familyinfo;$WorkInfoModelCopyWith<$Res> get workinfo;

}
/// @nodoc
class _$UserBioModelCopyWithImpl<$Res>
    implements $UserBioModelCopyWith<$Res> {
  _$UserBioModelCopyWithImpl(this._self, this._then);

  final UserBioModel _self;
  final $Res Function(UserBioModel) _then;

/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? userid = null,Object? basicinfo = null,Object? contactinfo = null,Object? familyinfo = null,Object? workinfo = null,Object? isotenable = null,Object? isot1enable = null,Object? isot2enable = null,Object? isot3enable = null,Object? isautoammendenable = null,Object? isdeductionenable = null,Object? isunderenable = null,Object? tags = null,Object? deleted = null,Object? deletedAt = freezed,Object? workexperience = null,Object? education = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,userid: null == userid ? _self.userid : userid // ignore: cast_nullable_to_non_nullable
as String,basicinfo: null == basicinfo ? _self.basicinfo : basicinfo // ignore: cast_nullable_to_non_nullable
as BasicInfoModel,contactinfo: null == contactinfo ? _self.contactinfo : contactinfo // ignore: cast_nullable_to_non_nullable
as ContactInfoModel,familyinfo: null == familyinfo ? _self.familyinfo : familyinfo // ignore: cast_nullable_to_non_nullable
as FamilyInfoModel,workinfo: null == workinfo ? _self.workinfo : workinfo // ignore: cast_nullable_to_non_nullable
as WorkInfoModel,isotenable: null == isotenable ? _self.isotenable : isotenable // ignore: cast_nullable_to_non_nullable
as bool,isot1enable: null == isot1enable ? _self.isot1enable : isot1enable // ignore: cast_nullable_to_non_nullable
as bool,isot2enable: null == isot2enable ? _self.isot2enable : isot2enable // ignore: cast_nullable_to_non_nullable
as bool,isot3enable: null == isot3enable ? _self.isot3enable : isot3enable // ignore: cast_nullable_to_non_nullable
as bool,isautoammendenable: null == isautoammendenable ? _self.isautoammendenable : isautoammendenable // ignore: cast_nullable_to_non_nullable
as bool,isdeductionenable: null == isdeductionenable ? _self.isdeductionenable : isdeductionenable // ignore: cast_nullable_to_non_nullable
as bool,isunderenable: null == isunderenable ? _self.isunderenable : isunderenable // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,workexperience: null == workexperience ? _self.workexperience : workexperience // ignore: cast_nullable_to_non_nullable
as List<dynamic>,education: null == education ? _self.education : education // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicInfoModelCopyWith<$Res> get basicinfo {
  
  return $BasicInfoModelCopyWith<$Res>(_self.basicinfo, (value) {
    return _then(_self.copyWith(basicinfo: value));
  });
}/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoModelCopyWith<$Res> get contactinfo {
  
  return $ContactInfoModelCopyWith<$Res>(_self.contactinfo, (value) {
    return _then(_self.copyWith(contactinfo: value));
  });
}/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyInfoModelCopyWith<$Res> get familyinfo {
  
  return $FamilyInfoModelCopyWith<$Res>(_self.familyinfo, (value) {
    return _then(_self.copyWith(familyinfo: value));
  });
}/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkInfoModelCopyWith<$Res> get workinfo {
  
  return $WorkInfoModelCopyWith<$Res>(_self.workinfo, (value) {
    return _then(_self.copyWith(workinfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserBioModel].
extension UserBioModelPatterns on UserBioModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserBioModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserBioModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserBioModel value)  $default,){
final _that = this;
switch (_that) {
case _UserBioModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserBioModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserBioModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  String userid,  BasicInfoModel basicinfo,  ContactInfoModel contactinfo,  FamilyInfoModel familyinfo,  WorkInfoModel workinfo,  bool isotenable,  bool isot1enable,  bool isot2enable,  bool isot3enable,  bool isautoammendenable,  bool isdeductionenable,  bool isunderenable,  List<String> tags,  bool deleted,  dynamic deletedAt,  List<dynamic> workexperience,  List<dynamic> education,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserBioModel() when $default != null:
return $default(_that.id,_that.company,_that.userid,_that.basicinfo,_that.contactinfo,_that.familyinfo,_that.workinfo,_that.isotenable,_that.isot1enable,_that.isot2enable,_that.isot3enable,_that.isautoammendenable,_that.isdeductionenable,_that.isunderenable,_that.tags,_that.deleted,_that.deletedAt,_that.workexperience,_that.education,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  String userid,  BasicInfoModel basicinfo,  ContactInfoModel contactinfo,  FamilyInfoModel familyinfo,  WorkInfoModel workinfo,  bool isotenable,  bool isot1enable,  bool isot2enable,  bool isot3enable,  bool isautoammendenable,  bool isdeductionenable,  bool isunderenable,  List<String> tags,  bool deleted,  dynamic deletedAt,  List<dynamic> workexperience,  List<dynamic> education,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version)  $default,) {final _that = this;
switch (_that) {
case _UserBioModel():
return $default(_that.id,_that.company,_that.userid,_that.basicinfo,_that.contactinfo,_that.familyinfo,_that.workinfo,_that.isotenable,_that.isot1enable,_that.isot2enable,_that.isot3enable,_that.isautoammendenable,_that.isdeductionenable,_that.isunderenable,_that.tags,_that.deleted,_that.deletedAt,_that.workexperience,_that.education,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String company,  String userid,  BasicInfoModel basicinfo,  ContactInfoModel contactinfo,  FamilyInfoModel familyinfo,  WorkInfoModel workinfo,  bool isotenable,  bool isot1enable,  bool isot2enable,  bool isot3enable,  bool isautoammendenable,  bool isdeductionenable,  bool isunderenable,  List<String> tags,  bool deleted,  dynamic deletedAt,  List<dynamic> workexperience,  List<dynamic> education,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version)?  $default,) {final _that = this;
switch (_that) {
case _UserBioModel() when $default != null:
return $default(_that.id,_that.company,_that.userid,_that.basicinfo,_that.contactinfo,_that.familyinfo,_that.workinfo,_that.isotenable,_that.isot1enable,_that.isot2enable,_that.isot3enable,_that.isautoammendenable,_that.isdeductionenable,_that.isunderenable,_that.tags,_that.deleted,_that.deletedAt,_that.workexperience,_that.education,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserBioModel implements UserBioModel {
  const _UserBioModel({@JsonKey(name: '_id') required this.id, required this.company, required this.userid, required this.basicinfo, required this.contactinfo, required this.familyinfo, required this.workinfo, required this.isotenable, required this.isot1enable, required this.isot2enable, required this.isot3enable, required this.isautoammendenable, required this.isdeductionenable, required this.isunderenable, required final  List<String> tags, required this.deleted, required this.deletedAt, required final  List<dynamic> workexperience, required final  List<dynamic> education, required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') required this.version}): _tags = tags,_workexperience = workexperience,_education = education;
  factory _UserBioModel.fromJson(Map<String, dynamic> json) => _$UserBioModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String company;
@override final  String userid;
@override final  BasicInfoModel basicinfo;
@override final  ContactInfoModel contactinfo;
@override final  FamilyInfoModel familyinfo;
@override final  WorkInfoModel workinfo;
@override final  bool isotenable;
@override final  bool isot1enable;
@override final  bool isot2enable;
@override final  bool isot3enable;
@override final  bool isautoammendenable;
@override final  bool isdeductionenable;
@override final  bool isunderenable;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  bool deleted;
@override final  dynamic deletedAt;
 final  List<dynamic> _workexperience;
@override List<dynamic> get workexperience {
  if (_workexperience is EqualUnmodifiableListView) return _workexperience;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workexperience);
}

 final  List<dynamic> _education;
@override List<dynamic> get education {
  if (_education is EqualUnmodifiableListView) return _education;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_education);
}

@override final  String createdAt;
@override final  String updatedAt;
@override@JsonKey(name: '__v') final  int version;

/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserBioModelCopyWith<_UserBioModel> get copyWith => __$UserBioModelCopyWithImpl<_UserBioModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserBioModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserBioModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.userid, userid) || other.userid == userid)&&(identical(other.basicinfo, basicinfo) || other.basicinfo == basicinfo)&&(identical(other.contactinfo, contactinfo) || other.contactinfo == contactinfo)&&(identical(other.familyinfo, familyinfo) || other.familyinfo == familyinfo)&&(identical(other.workinfo, workinfo) || other.workinfo == workinfo)&&(identical(other.isotenable, isotenable) || other.isotenable == isotenable)&&(identical(other.isot1enable, isot1enable) || other.isot1enable == isot1enable)&&(identical(other.isot2enable, isot2enable) || other.isot2enable == isot2enable)&&(identical(other.isot3enable, isot3enable) || other.isot3enable == isot3enable)&&(identical(other.isautoammendenable, isautoammendenable) || other.isautoammendenable == isautoammendenable)&&(identical(other.isdeductionenable, isdeductionenable) || other.isdeductionenable == isdeductionenable)&&(identical(other.isunderenable, isunderenable) || other.isunderenable == isunderenable)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other._workexperience, _workexperience)&&const DeepCollectionEquality().equals(other._education, _education)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,userid,basicinfo,contactinfo,familyinfo,workinfo,isotenable,isot1enable,isot2enable,isot3enable,isautoammendenable,isdeductionenable,isunderenable,const DeepCollectionEquality().hash(_tags),deleted,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(_workexperience),const DeepCollectionEquality().hash(_education),createdAt,updatedAt,version]);

@override
String toString() {
  return 'UserBioModel(id: $id, company: $company, userid: $userid, basicinfo: $basicinfo, contactinfo: $contactinfo, familyinfo: $familyinfo, workinfo: $workinfo, isotenable: $isotenable, isot1enable: $isot1enable, isot2enable: $isot2enable, isot3enable: $isot3enable, isautoammendenable: $isautoammendenable, isdeductionenable: $isdeductionenable, isunderenable: $isunderenable, tags: $tags, deleted: $deleted, deletedAt: $deletedAt, workexperience: $workexperience, education: $education, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$UserBioModelCopyWith<$Res> implements $UserBioModelCopyWith<$Res> {
  factory _$UserBioModelCopyWith(_UserBioModel value, $Res Function(_UserBioModel) _then) = __$UserBioModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String company, String userid, BasicInfoModel basicinfo, ContactInfoModel contactinfo, FamilyInfoModel familyinfo, WorkInfoModel workinfo, bool isotenable, bool isot1enable, bool isot2enable, bool isot3enable, bool isautoammendenable, bool isdeductionenable, bool isunderenable, List<String> tags, bool deleted, dynamic deletedAt, List<dynamic> workexperience, List<dynamic> education, String createdAt, String updatedAt,@JsonKey(name: '__v') int version
});


@override $BasicInfoModelCopyWith<$Res> get basicinfo;@override $ContactInfoModelCopyWith<$Res> get contactinfo;@override $FamilyInfoModelCopyWith<$Res> get familyinfo;@override $WorkInfoModelCopyWith<$Res> get workinfo;

}
/// @nodoc
class __$UserBioModelCopyWithImpl<$Res>
    implements _$UserBioModelCopyWith<$Res> {
  __$UserBioModelCopyWithImpl(this._self, this._then);

  final _UserBioModel _self;
  final $Res Function(_UserBioModel) _then;

/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? userid = null,Object? basicinfo = null,Object? contactinfo = null,Object? familyinfo = null,Object? workinfo = null,Object? isotenable = null,Object? isot1enable = null,Object? isot2enable = null,Object? isot3enable = null,Object? isautoammendenable = null,Object? isdeductionenable = null,Object? isunderenable = null,Object? tags = null,Object? deleted = null,Object? deletedAt = freezed,Object? workexperience = null,Object? education = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(_UserBioModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,userid: null == userid ? _self.userid : userid // ignore: cast_nullable_to_non_nullable
as String,basicinfo: null == basicinfo ? _self.basicinfo : basicinfo // ignore: cast_nullable_to_non_nullable
as BasicInfoModel,contactinfo: null == contactinfo ? _self.contactinfo : contactinfo // ignore: cast_nullable_to_non_nullable
as ContactInfoModel,familyinfo: null == familyinfo ? _self.familyinfo : familyinfo // ignore: cast_nullable_to_non_nullable
as FamilyInfoModel,workinfo: null == workinfo ? _self.workinfo : workinfo // ignore: cast_nullable_to_non_nullable
as WorkInfoModel,isotenable: null == isotenable ? _self.isotenable : isotenable // ignore: cast_nullable_to_non_nullable
as bool,isot1enable: null == isot1enable ? _self.isot1enable : isot1enable // ignore: cast_nullable_to_non_nullable
as bool,isot2enable: null == isot2enable ? _self.isot2enable : isot2enable // ignore: cast_nullable_to_non_nullable
as bool,isot3enable: null == isot3enable ? _self.isot3enable : isot3enable // ignore: cast_nullable_to_non_nullable
as bool,isautoammendenable: null == isautoammendenable ? _self.isautoammendenable : isautoammendenable // ignore: cast_nullable_to_non_nullable
as bool,isdeductionenable: null == isdeductionenable ? _self.isdeductionenable : isdeductionenable // ignore: cast_nullable_to_non_nullable
as bool,isunderenable: null == isunderenable ? _self.isunderenable : isunderenable // ignore: cast_nullable_to_non_nullable
as bool,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,workexperience: null == workexperience ? _self._workexperience : workexperience // ignore: cast_nullable_to_non_nullable
as List<dynamic>,education: null == education ? _self._education : education // ignore: cast_nullable_to_non_nullable
as List<dynamic>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BasicInfoModelCopyWith<$Res> get basicinfo {
  
  return $BasicInfoModelCopyWith<$Res>(_self.basicinfo, (value) {
    return _then(_self.copyWith(basicinfo: value));
  });
}/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactInfoModelCopyWith<$Res> get contactinfo {
  
  return $ContactInfoModelCopyWith<$Res>(_self.contactinfo, (value) {
    return _then(_self.copyWith(contactinfo: value));
  });
}/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamilyInfoModelCopyWith<$Res> get familyinfo {
  
  return $FamilyInfoModelCopyWith<$Res>(_self.familyinfo, (value) {
    return _then(_self.copyWith(familyinfo: value));
  });
}/// Create a copy of UserBioModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WorkInfoModelCopyWith<$Res> get workinfo {
  
  return $WorkInfoModelCopyWith<$Res>(_self.workinfo, (value) {
    return _then(_self.copyWith(workinfo: value));
  });
}
}

// dart format on
