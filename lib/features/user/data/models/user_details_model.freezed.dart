// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailsModel {

@JsonKey(name: '_id') String get id; CompanyModel get company; List<String> get compspermitted; String get username; String get email; String? get phone; String get profileurl; String get role; List<String> get tags; List<dynamic> get promotion; List<dynamic> get tasks; bool get deleted; DateTime? get deletedAt; List<UserLeaveModel> get userLeaves; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int? get version; UserBioModel? get userbio; bool get isbiocomplete;
/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<UserDetailsModel> get copyWith => _$UserDetailsModelCopyWithImpl<UserDetailsModel>(this as UserDetailsModel, _$identity);

  /// Serializes this UserDetailsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.compspermitted, compspermitted)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileurl, profileurl) || other.profileurl == profileurl)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.promotion, promotion)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&const DeepCollectionEquality().equals(other.userLeaves, userLeaves)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.userbio, userbio) || other.userbio == userbio)&&(identical(other.isbiocomplete, isbiocomplete) || other.isbiocomplete == isbiocomplete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,const DeepCollectionEquality().hash(compspermitted),username,email,phone,profileurl,role,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(promotion),const DeepCollectionEquality().hash(tasks),deleted,deletedAt,const DeepCollectionEquality().hash(userLeaves),createdAt,updatedAt,version,userbio,isbiocomplete]);

@override
String toString() {
  return 'UserDetailsModel(id: $id, company: $company, compspermitted: $compspermitted, username: $username, email: $email, phone: $phone, profileurl: $profileurl, role: $role, tags: $tags, promotion: $promotion, tasks: $tasks, deleted: $deleted, deletedAt: $deletedAt, userLeaves: $userLeaves, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, userbio: $userbio, isbiocomplete: $isbiocomplete)';
}


}

/// @nodoc
abstract mixin class $UserDetailsModelCopyWith<$Res>  {
  factory $UserDetailsModelCopyWith(UserDetailsModel value, $Res Function(UserDetailsModel) _then) = _$UserDetailsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, CompanyModel company, List<String> compspermitted, String username, String email, String? phone, String profileurl, String role, List<String> tags, List<dynamic> promotion, List<dynamic> tasks, bool deleted, DateTime? deletedAt, List<UserLeaveModel> userLeaves, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version, UserBioModel? userbio, bool isbiocomplete
});


$CompanyModelCopyWith<$Res> get company;$UserBioModelCopyWith<$Res>? get userbio;

}
/// @nodoc
class _$UserDetailsModelCopyWithImpl<$Res>
    implements $UserDetailsModelCopyWith<$Res> {
  _$UserDetailsModelCopyWithImpl(this._self, this._then);

  final UserDetailsModel _self;
  final $Res Function(UserDetailsModel) _then;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? compspermitted = null,Object? username = null,Object? email = null,Object? phone = freezed,Object? profileurl = null,Object? role = null,Object? tags = null,Object? promotion = null,Object? tasks = null,Object? deleted = null,Object? deletedAt = freezed,Object? userLeaves = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? userbio = freezed,Object? isbiocomplete = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel,compspermitted: null == compspermitted ? _self.compspermitted : compspermitted // ignore: cast_nullable_to_non_nullable
as List<String>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,profileurl: null == profileurl ? _self.profileurl : profileurl // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,promotion: null == promotion ? _self.promotion : promotion // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userLeaves: null == userLeaves ? _self.userLeaves : userLeaves // ignore: cast_nullable_to_non_nullable
as List<UserLeaveModel>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,userbio: freezed == userbio ? _self.userbio : userbio // ignore: cast_nullable_to_non_nullable
as UserBioModel?,isbiocomplete: null == isbiocomplete ? _self.isbiocomplete : isbiocomplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get company {
  
  return $CompanyModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserBioModelCopyWith<$Res>? get userbio {
    if (_self.userbio == null) {
    return null;
  }

  return $UserBioModelCopyWith<$Res>(_self.userbio!, (value) {
    return _then(_self.copyWith(userbio: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDetailsModel].
extension UserDetailsModelPatterns on UserDetailsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetailsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetailsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetailsModel value)  $default,){
final _that = this;
switch (_that) {
case _UserDetailsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetailsModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetailsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  CompanyModel company,  List<String> compspermitted,  String username,  String email,  String? phone,  String profileurl,  String role,  List<String> tags,  List<dynamic> promotion,  List<dynamic> tasks,  bool deleted,  DateTime? deletedAt,  List<UserLeaveModel> userLeaves,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  UserBioModel? userbio,  bool isbiocomplete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetailsModel() when $default != null:
return $default(_that.id,_that.company,_that.compspermitted,_that.username,_that.email,_that.phone,_that.profileurl,_that.role,_that.tags,_that.promotion,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.version,_that.userbio,_that.isbiocomplete);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  CompanyModel company,  List<String> compspermitted,  String username,  String email,  String? phone,  String profileurl,  String role,  List<String> tags,  List<dynamic> promotion,  List<dynamic> tasks,  bool deleted,  DateTime? deletedAt,  List<UserLeaveModel> userLeaves,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  UserBioModel? userbio,  bool isbiocomplete)  $default,) {final _that = this;
switch (_that) {
case _UserDetailsModel():
return $default(_that.id,_that.company,_that.compspermitted,_that.username,_that.email,_that.phone,_that.profileurl,_that.role,_that.tags,_that.promotion,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.version,_that.userbio,_that.isbiocomplete);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  CompanyModel company,  List<String> compspermitted,  String username,  String email,  String? phone,  String profileurl,  String role,  List<String> tags,  List<dynamic> promotion,  List<dynamic> tasks,  bool deleted,  DateTime? deletedAt,  List<UserLeaveModel> userLeaves,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version,  UserBioModel? userbio,  bool isbiocomplete)?  $default,) {final _that = this;
switch (_that) {
case _UserDetailsModel() when $default != null:
return $default(_that.id,_that.company,_that.compspermitted,_that.username,_that.email,_that.phone,_that.profileurl,_that.role,_that.tags,_that.promotion,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.version,_that.userbio,_that.isbiocomplete);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDetailsModel implements UserDetailsModel {
  const _UserDetailsModel({@JsonKey(name: '_id') required this.id, required this.company, final  List<String> compspermitted = const [], required this.username, required this.email, this.phone, this.profileurl = '', required this.role, final  List<String> tags = const [], final  List<dynamic> promotion = const [], final  List<dynamic> tasks = const [], this.deleted = false, this.deletedAt, final  List<UserLeaveModel> userLeaves = const [], this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version, this.userbio, this.isbiocomplete = false}): _compspermitted = compspermitted,_tags = tags,_promotion = promotion,_tasks = tasks,_userLeaves = userLeaves;
  factory _UserDetailsModel.fromJson(Map<String, dynamic> json) => _$UserDetailsModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  CompanyModel company;
 final  List<String> _compspermitted;
@override@JsonKey() List<String> get compspermitted {
  if (_compspermitted is EqualUnmodifiableListView) return _compspermitted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_compspermitted);
}

@override final  String username;
@override final  String email;
@override final  String? phone;
@override@JsonKey() final  String profileurl;
@override final  String role;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<dynamic> _promotion;
@override@JsonKey() List<dynamic> get promotion {
  if (_promotion is EqualUnmodifiableListView) return _promotion;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_promotion);
}

 final  List<dynamic> _tasks;
@override@JsonKey() List<dynamic> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

@override@JsonKey() final  bool deleted;
@override final  DateTime? deletedAt;
 final  List<UserLeaveModel> _userLeaves;
@override@JsonKey() List<UserLeaveModel> get userLeaves {
  if (_userLeaves is EqualUnmodifiableListView) return _userLeaves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userLeaves);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int? version;
@override final  UserBioModel? userbio;
@override@JsonKey() final  bool isbiocomplete;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailsModelCopyWith<_UserDetailsModel> get copyWith => __$UserDetailsModelCopyWithImpl<_UserDetailsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDetailsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetailsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._compspermitted, _compspermitted)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileurl, profileurl) || other.profileurl == profileurl)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._promotion, _promotion)&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&const DeepCollectionEquality().equals(other._userLeaves, _userLeaves)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.userbio, userbio) || other.userbio == userbio)&&(identical(other.isbiocomplete, isbiocomplete) || other.isbiocomplete == isbiocomplete));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,const DeepCollectionEquality().hash(_compspermitted),username,email,phone,profileurl,role,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_promotion),const DeepCollectionEquality().hash(_tasks),deleted,deletedAt,const DeepCollectionEquality().hash(_userLeaves),createdAt,updatedAt,version,userbio,isbiocomplete]);

@override
String toString() {
  return 'UserDetailsModel(id: $id, company: $company, compspermitted: $compspermitted, username: $username, email: $email, phone: $phone, profileurl: $profileurl, role: $role, tags: $tags, promotion: $promotion, tasks: $tasks, deleted: $deleted, deletedAt: $deletedAt, userLeaves: $userLeaves, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, userbio: $userbio, isbiocomplete: $isbiocomplete)';
}


}

/// @nodoc
abstract mixin class _$UserDetailsModelCopyWith<$Res> implements $UserDetailsModelCopyWith<$Res> {
  factory _$UserDetailsModelCopyWith(_UserDetailsModel value, $Res Function(_UserDetailsModel) _then) = __$UserDetailsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, CompanyModel company, List<String> compspermitted, String username, String email, String? phone, String profileurl, String role, List<String> tags, List<dynamic> promotion, List<dynamic> tasks, bool deleted, DateTime? deletedAt, List<UserLeaveModel> userLeaves, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version, UserBioModel? userbio, bool isbiocomplete
});


@override $CompanyModelCopyWith<$Res> get company;@override $UserBioModelCopyWith<$Res>? get userbio;

}
/// @nodoc
class __$UserDetailsModelCopyWithImpl<$Res>
    implements _$UserDetailsModelCopyWith<$Res> {
  __$UserDetailsModelCopyWithImpl(this._self, this._then);

  final _UserDetailsModel _self;
  final $Res Function(_UserDetailsModel) _then;

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? compspermitted = null,Object? username = null,Object? email = null,Object? phone = freezed,Object? profileurl = null,Object? role = null,Object? tags = null,Object? promotion = null,Object? tasks = null,Object? deleted = null,Object? deletedAt = freezed,Object? userLeaves = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? userbio = freezed,Object? isbiocomplete = null,}) {
  return _then(_UserDetailsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyModel,compspermitted: null == compspermitted ? _self._compspermitted : compspermitted // ignore: cast_nullable_to_non_nullable
as List<String>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,profileurl: null == profileurl ? _self.profileurl : profileurl // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,promotion: null == promotion ? _self._promotion : promotion // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userLeaves: null == userLeaves ? _self._userLeaves : userLeaves // ignore: cast_nullable_to_non_nullable
as List<UserLeaveModel>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,userbio: freezed == userbio ? _self.userbio : userbio // ignore: cast_nullable_to_non_nullable
as UserBioModel?,isbiocomplete: null == isbiocomplete ? _self.isbiocomplete : isbiocomplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get company {
  
  return $CompanyModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}/// Create a copy of UserDetailsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserBioModelCopyWith<$Res>? get userbio {
    if (_self.userbio == null) {
    return null;
  }

  return $UserBioModelCopyWith<$Res>(_self.userbio!, (value) {
    return _then(_self.copyWith(userbio: value));
  });
}
}

// dart format on
