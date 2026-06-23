// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supervisor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Supervisor {

 String get id; String get companyId; List<String> get companiesPermitted; String get username; String get email; String get phone; String get profileUrl; String get role; List<String> get tags; List<dynamic> get promotions; List<dynamic> get tasks; bool get isDeleted; dynamic get deletedAt; List<UserLeave> get userLeaves; String get createdAt; String get updatedAt; String get userBioId;
/// Create a copy of Supervisor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupervisorCopyWith<Supervisor> get copyWith => _$SupervisorCopyWithImpl<Supervisor>(this as Supervisor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Supervisor&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&const DeepCollectionEquality().equals(other.companiesPermitted, companiesPermitted)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.promotions, promotions)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other.userLeaves, userLeaves)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.userBioId, userBioId) || other.userBioId == userBioId));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,const DeepCollectionEquality().hash(companiesPermitted),username,email,phone,profileUrl,role,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(promotions),const DeepCollectionEquality().hash(tasks),isDeleted,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(userLeaves),createdAt,updatedAt,userBioId);

@override
String toString() {
  return 'Supervisor(id: $id, companyId: $companyId, companiesPermitted: $companiesPermitted, username: $username, email: $email, phone: $phone, profileUrl: $profileUrl, role: $role, tags: $tags, promotions: $promotions, tasks: $tasks, isDeleted: $isDeleted, deletedAt: $deletedAt, userLeaves: $userLeaves, createdAt: $createdAt, updatedAt: $updatedAt, userBioId: $userBioId)';
}


}

/// @nodoc
abstract mixin class $SupervisorCopyWith<$Res>  {
  factory $SupervisorCopyWith(Supervisor value, $Res Function(Supervisor) _then) = _$SupervisorCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, List<String> companiesPermitted, String username, String email, String phone, String profileUrl, String role, List<String> tags, List<dynamic> promotions, List<dynamic> tasks, bool isDeleted, dynamic deletedAt, List<UserLeave> userLeaves, String createdAt, String updatedAt, String userBioId
});




}
/// @nodoc
class _$SupervisorCopyWithImpl<$Res>
    implements $SupervisorCopyWith<$Res> {
  _$SupervisorCopyWithImpl(this._self, this._then);

  final Supervisor _self;
  final $Res Function(Supervisor) _then;

/// Create a copy of Supervisor
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? companiesPermitted = null,Object? username = null,Object? email = null,Object? phone = null,Object? profileUrl = null,Object? role = null,Object? tags = null,Object? promotions = null,Object? tasks = null,Object? isDeleted = null,Object? deletedAt = freezed,Object? userLeaves = null,Object? createdAt = null,Object? updatedAt = null,Object? userBioId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,companiesPermitted: null == companiesPermitted ? _self.companiesPermitted : companiesPermitted // ignore: cast_nullable_to_non_nullable
as List<String>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,profileUrl: null == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,promotions: null == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<dynamic>,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,userLeaves: null == userLeaves ? _self.userLeaves : userLeaves // ignore: cast_nullable_to_non_nullable
as List<UserLeave>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,userBioId: null == userBioId ? _self.userBioId : userBioId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Supervisor].
extension SupervisorPatterns on Supervisor {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Supervisor value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Supervisor() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Supervisor value)  $default,){
final _that = this;
switch (_that) {
case _Supervisor():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Supervisor value)?  $default,){
final _that = this;
switch (_that) {
case _Supervisor() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  List<String> companiesPermitted,  String username,  String email,  String phone,  String profileUrl,  String role,  List<String> tags,  List<dynamic> promotions,  List<dynamic> tasks,  bool isDeleted,  dynamic deletedAt,  List<UserLeave> userLeaves,  String createdAt,  String updatedAt,  String userBioId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Supervisor() when $default != null:
return $default(_that.id,_that.companyId,_that.companiesPermitted,_that.username,_that.email,_that.phone,_that.profileUrl,_that.role,_that.tags,_that.promotions,_that.tasks,_that.isDeleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.userBioId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  List<String> companiesPermitted,  String username,  String email,  String phone,  String profileUrl,  String role,  List<String> tags,  List<dynamic> promotions,  List<dynamic> tasks,  bool isDeleted,  dynamic deletedAt,  List<UserLeave> userLeaves,  String createdAt,  String updatedAt,  String userBioId)  $default,) {final _that = this;
switch (_that) {
case _Supervisor():
return $default(_that.id,_that.companyId,_that.companiesPermitted,_that.username,_that.email,_that.phone,_that.profileUrl,_that.role,_that.tags,_that.promotions,_that.tasks,_that.isDeleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.userBioId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  List<String> companiesPermitted,  String username,  String email,  String phone,  String profileUrl,  String role,  List<String> tags,  List<dynamic> promotions,  List<dynamic> tasks,  bool isDeleted,  dynamic deletedAt,  List<UserLeave> userLeaves,  String createdAt,  String updatedAt,  String userBioId)?  $default,) {final _that = this;
switch (_that) {
case _Supervisor() when $default != null:
return $default(_that.id,_that.companyId,_that.companiesPermitted,_that.username,_that.email,_that.phone,_that.profileUrl,_that.role,_that.tags,_that.promotions,_that.tasks,_that.isDeleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.userBioId);case _:
  return null;

}
}

}

/// @nodoc


class _Supervisor implements Supervisor {
  const _Supervisor({required this.id, required this.companyId, required final  List<String> companiesPermitted, required this.username, required this.email, required this.phone, required this.profileUrl, required this.role, required final  List<String> tags, required final  List<dynamic> promotions, required final  List<dynamic> tasks, required this.isDeleted, required this.deletedAt, required final  List<UserLeave> userLeaves, required this.createdAt, required this.updatedAt, required this.userBioId}): _companiesPermitted = companiesPermitted,_tags = tags,_promotions = promotions,_tasks = tasks,_userLeaves = userLeaves;
  

@override final  String id;
@override final  String companyId;
 final  List<String> _companiesPermitted;
@override List<String> get companiesPermitted {
  if (_companiesPermitted is EqualUnmodifiableListView) return _companiesPermitted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_companiesPermitted);
}

@override final  String username;
@override final  String email;
@override final  String phone;
@override final  String profileUrl;
@override final  String role;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<dynamic> _promotions;
@override List<dynamic> get promotions {
  if (_promotions is EqualUnmodifiableListView) return _promotions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_promotions);
}

 final  List<dynamic> _tasks;
@override List<dynamic> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}

@override final  bool isDeleted;
@override final  dynamic deletedAt;
 final  List<UserLeave> _userLeaves;
@override List<UserLeave> get userLeaves {
  if (_userLeaves is EqualUnmodifiableListView) return _userLeaves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userLeaves);
}

@override final  String createdAt;
@override final  String updatedAt;
@override final  String userBioId;

/// Create a copy of Supervisor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupervisorCopyWith<_Supervisor> get copyWith => __$SupervisorCopyWithImpl<_Supervisor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Supervisor&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&const DeepCollectionEquality().equals(other._companiesPermitted, _companiesPermitted)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._promotions, _promotions)&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&const DeepCollectionEquality().equals(other._userLeaves, _userLeaves)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.userBioId, userBioId) || other.userBioId == userBioId));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,const DeepCollectionEquality().hash(_companiesPermitted),username,email,phone,profileUrl,role,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_promotions),const DeepCollectionEquality().hash(_tasks),isDeleted,const DeepCollectionEquality().hash(deletedAt),const DeepCollectionEquality().hash(_userLeaves),createdAt,updatedAt,userBioId);

@override
String toString() {
  return 'Supervisor(id: $id, companyId: $companyId, companiesPermitted: $companiesPermitted, username: $username, email: $email, phone: $phone, profileUrl: $profileUrl, role: $role, tags: $tags, promotions: $promotions, tasks: $tasks, isDeleted: $isDeleted, deletedAt: $deletedAt, userLeaves: $userLeaves, createdAt: $createdAt, updatedAt: $updatedAt, userBioId: $userBioId)';
}


}

/// @nodoc
abstract mixin class _$SupervisorCopyWith<$Res> implements $SupervisorCopyWith<$Res> {
  factory _$SupervisorCopyWith(_Supervisor value, $Res Function(_Supervisor) _then) = __$SupervisorCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, List<String> companiesPermitted, String username, String email, String phone, String profileUrl, String role, List<String> tags, List<dynamic> promotions, List<dynamic> tasks, bool isDeleted, dynamic deletedAt, List<UserLeave> userLeaves, String createdAt, String updatedAt, String userBioId
});




}
/// @nodoc
class __$SupervisorCopyWithImpl<$Res>
    implements _$SupervisorCopyWith<$Res> {
  __$SupervisorCopyWithImpl(this._self, this._then);

  final _Supervisor _self;
  final $Res Function(_Supervisor) _then;

/// Create a copy of Supervisor
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? companiesPermitted = null,Object? username = null,Object? email = null,Object? phone = null,Object? profileUrl = null,Object? role = null,Object? tags = null,Object? promotions = null,Object? tasks = null,Object? isDeleted = null,Object? deletedAt = freezed,Object? userLeaves = null,Object? createdAt = null,Object? updatedAt = null,Object? userBioId = null,}) {
  return _then(_Supervisor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,companiesPermitted: null == companiesPermitted ? _self._companiesPermitted : companiesPermitted // ignore: cast_nullable_to_non_nullable
as List<String>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,profileUrl: null == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,promotions: null == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<dynamic>,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,userLeaves: null == userLeaves ? _self._userLeaves : userLeaves // ignore: cast_nullable_to_non_nullable
as List<UserLeave>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,userBioId: null == userBioId ? _self.userBioId : userBioId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
