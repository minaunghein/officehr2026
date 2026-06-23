// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supervisor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupervisorModel {

@JsonKey(name: '_id') String get id; String get company; List<String> get compspermitted; String get username; String get email; String get phone; String get profileurl; String get role; List<String> get tags; List<dynamic> get promotion; List<dynamic> get tasks; bool get deleted; dynamic get deletedAt; List<UserLeaveModel> get userLeaves; String get createdAt; String get updatedAt;@JsonKey(name: '__v') int get version; String get userbio;
/// Create a copy of SupervisorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupervisorModelCopyWith<SupervisorModel> get copyWith => _$SupervisorModelCopyWithImpl<SupervisorModel>(this as SupervisorModel, _$identity);

  /// Serializes this SupervisorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupervisorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.compspermitted, compspermitted)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileurl, profileurl) || other.profileurl == profileurl)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.promotion, promotion)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other.userLeaves, userLeaves)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.userbio, userbio) || other.userbio == userbio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,const DeepCollectionEquality().hash(compspermitted),username,email,phone,profileurl,role,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(promotion),const DeepCollectionEquality().hash(tasks),deleted,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(userLeaves),createdAt,updatedAt,version,userbio);

@override
String toString() {
  return 'SupervisorModel(id: $id, company: $company, compspermitted: $compspermitted, username: $username, email: $email, phone: $phone, profileurl: $profileurl, role: $role, tags: $tags, promotion: $promotion, tasks: $tasks, deleted: $deleted, deletedAt: $deletedAt, userLeaves: $userLeaves, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, userbio: $userbio)';
}


}

/// @nodoc
abstract mixin class $SupervisorModelCopyWith<$Res>  {
  factory $SupervisorModelCopyWith(SupervisorModel value, $Res Function(SupervisorModel) _then) = _$SupervisorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String company, List<String> compspermitted, String username, String email, String phone, String profileurl, String role, List<String> tags, List<dynamic> promotion, List<dynamic> tasks, bool deleted, dynamic deletedAt, List<UserLeaveModel> userLeaves, String createdAt, String updatedAt,@JsonKey(name: '__v') int version, String userbio
});




}
/// @nodoc
class _$SupervisorModelCopyWithImpl<$Res>
    implements $SupervisorModelCopyWith<$Res> {
  _$SupervisorModelCopyWithImpl(this._self, this._then);

  final SupervisorModel _self;
  final $Res Function(SupervisorModel) _then;

/// Create a copy of SupervisorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? compspermitted = null,Object? username = null,Object? email = null,Object? phone = null,Object? profileurl = null,Object? role = null,Object? tags = null,Object? promotion = null,Object? tasks = null,Object? deleted = null,Object? deletedAt = freezed,Object? userLeaves = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,Object? userbio = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,compspermitted: null == compspermitted ? _self.compspermitted : compspermitted // ignore: cast_nullable_to_non_nullable
as List<String>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,profileurl: null == profileurl ? _self.profileurl : profileurl // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,promotion: null == promotion ? _self.promotion : promotion // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,userLeaves: null == userLeaves ? _self.userLeaves : userLeaves // ignore: cast_nullable_to_non_nullable
as List<UserLeaveModel>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,userbio: null == userbio ? _self.userbio : userbio // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SupervisorModel].
extension SupervisorModelPatterns on SupervisorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupervisorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupervisorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupervisorModel value)  $default,){
final _that = this;
switch (_that) {
case _SupervisorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupervisorModel value)?  $default,){
final _that = this;
switch (_that) {
case _SupervisorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  List<String> compspermitted,  String username,  String email,  String phone,  String profileurl,  String role,  List<String> tags,  List<dynamic> promotion,  List<dynamic> tasks,  bool deleted,  dynamic deletedAt,  List<UserLeaveModel> userLeaves,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version,  String userbio)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupervisorModel() when $default != null:
return $default(_that.id,_that.company,_that.compspermitted,_that.username,_that.email,_that.phone,_that.profileurl,_that.role,_that.tags,_that.promotion,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.version,_that.userbio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  List<String> compspermitted,  String username,  String email,  String phone,  String profileurl,  String role,  List<String> tags,  List<dynamic> promotion,  List<dynamic> tasks,  bool deleted,  dynamic deletedAt,  List<UserLeaveModel> userLeaves,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version,  String userbio)  $default,) {final _that = this;
switch (_that) {
case _SupervisorModel():
return $default(_that.id,_that.company,_that.compspermitted,_that.username,_that.email,_that.phone,_that.profileurl,_that.role,_that.tags,_that.promotion,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.version,_that.userbio);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String company,  List<String> compspermitted,  String username,  String email,  String phone,  String profileurl,  String role,  List<String> tags,  List<dynamic> promotion,  List<dynamic> tasks,  bool deleted,  dynamic deletedAt,  List<UserLeaveModel> userLeaves,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version,  String userbio)?  $default,) {final _that = this;
switch (_that) {
case _SupervisorModel() when $default != null:
return $default(_that.id,_that.company,_that.compspermitted,_that.username,_that.email,_that.phone,_that.profileurl,_that.role,_that.tags,_that.promotion,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.version,_that.userbio);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupervisorModel implements SupervisorModel {
  const _SupervisorModel({@JsonKey(name: '_id') required this.id, required this.company, required final  List<String> compspermitted, required this.username, required this.email, required this.phone, required this.profileurl, required this.role, required final  List<String> tags, required final  List<dynamic> promotion, required final  List<dynamic> tasks, required this.deleted, required this.deletedAt, required final  List<UserLeaveModel> userLeaves, required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') required this.version, required this.userbio}): _compspermitted = compspermitted,_tags = tags,_promotion = promotion,_tasks = tasks,_userLeaves = userLeaves;
  factory _SupervisorModel.fromJson(Map<String, dynamic> json) => _$SupervisorModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String company;
 final  List<String> _compspermitted;
@override List<String> get compspermitted {
  if (_compspermitted is EqualUnmodifiableListView) return _compspermitted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_compspermitted);
}

@override final  String username;
@override final  String email;
@override final  String phone;
@override final  String profileurl;
@override final  String role;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<dynamic> _promotion;
@override List<dynamic> get promotion {
  if (_promotion is EqualUnmodifiableListView) return _promotion;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_promotion);
}

 final  List<dynamic> _tasks;
@override List<dynamic> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

@override final  bool deleted;
@override final  dynamic deletedAt;
 final  List<UserLeaveModel> _userLeaves;
@override List<UserLeaveModel> get userLeaves {
  if (_userLeaves is EqualUnmodifiableListView) return _userLeaves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userLeaves);
}

@override final  String createdAt;
@override final  String updatedAt;
@override@JsonKey(name: '__v') final  int version;
@override final  String userbio;

/// Create a copy of SupervisorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupervisorModelCopyWith<_SupervisorModel> get copyWith => __$SupervisorModelCopyWithImpl<_SupervisorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupervisorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupervisorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._compspermitted, _compspermitted)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileurl, profileurl) || other.profileurl == profileurl)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._promotion, _promotion)&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other._userLeaves, _userLeaves)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&(identical(other.userbio, userbio) || other.userbio == userbio));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,const DeepCollectionEquality().hash(_compspermitted),username,email,phone,profileurl,role,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_promotion),const DeepCollectionEquality().hash(_tasks),deleted,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(_userLeaves),createdAt,updatedAt,version,userbio);

@override
String toString() {
  return 'SupervisorModel(id: $id, company: $company, compspermitted: $compspermitted, username: $username, email: $email, phone: $phone, profileurl: $profileurl, role: $role, tags: $tags, promotion: $promotion, tasks: $tasks, deleted: $deleted, deletedAt: $deletedAt, userLeaves: $userLeaves, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, userbio: $userbio)';
}


}

/// @nodoc
abstract mixin class _$SupervisorModelCopyWith<$Res> implements $SupervisorModelCopyWith<$Res> {
  factory _$SupervisorModelCopyWith(_SupervisorModel value, $Res Function(_SupervisorModel) _then) = __$SupervisorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String company, List<String> compspermitted, String username, String email, String phone, String profileurl, String role, List<String> tags, List<dynamic> promotion, List<dynamic> tasks, bool deleted, dynamic deletedAt, List<UserLeaveModel> userLeaves, String createdAt, String updatedAt,@JsonKey(name: '__v') int version, String userbio
});




}
/// @nodoc
class __$SupervisorModelCopyWithImpl<$Res>
    implements _$SupervisorModelCopyWith<$Res> {
  __$SupervisorModelCopyWithImpl(this._self, this._then);

  final _SupervisorModel _self;
  final $Res Function(_SupervisorModel) _then;

/// Create a copy of SupervisorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? compspermitted = null,Object? username = null,Object? email = null,Object? phone = null,Object? profileurl = null,Object? role = null,Object? tags = null,Object? promotion = null,Object? tasks = null,Object? deleted = null,Object? deletedAt = freezed,Object? userLeaves = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,Object? userbio = null,}) {
  return _then(_SupervisorModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,compspermitted: null == compspermitted ? _self._compspermitted : compspermitted // ignore: cast_nullable_to_non_nullable
as List<String>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,profileurl: null == profileurl ? _self.profileurl : profileurl // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,promotion: null == promotion ? _self._promotion : promotion // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,userLeaves: null == userLeaves ? _self._userLeaves : userLeaves // ignore: cast_nullable_to_non_nullable
as List<UserLeaveModel>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,userbio: null == userbio ? _self.userbio : userbio // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
