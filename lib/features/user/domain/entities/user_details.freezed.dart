// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserDetails {

 String get id; Company get company; List<String> get companiesPermitted; String get username; String get email; String? get phone; String get profileUrl; String get role; List<String> get tags; List<dynamic> get promotions; List<dynamic> get tasks; bool get deleted; DateTime? get deletedAt; List<UserLeave> get userLeaves; DateTime? get createdAt; DateTime? get updatedAt; String? get userBio; bool get isBioComplete;
/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailsCopyWith<UserDetails> get copyWith => _$UserDetailsCopyWithImpl<UserDetails>(this as UserDetails, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.companiesPermitted, companiesPermitted)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.promotions, promotions)&&const DeepCollectionEquality().equals(other.tasks, tasks)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&const DeepCollectionEquality().equals(other.userLeaves, userLeaves)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.userBio, userBio) || other.userBio == userBio)&&(identical(other.isBioComplete, isBioComplete) || other.isBioComplete == isBioComplete));
}


@override
int get hashCode => Object.hash(runtimeType,id,company,const DeepCollectionEquality().hash(companiesPermitted),username,email,phone,profileUrl,role,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(promotions),const DeepCollectionEquality().hash(tasks),deleted,deletedAt,const DeepCollectionEquality().hash(userLeaves),createdAt,updatedAt,userBio,isBioComplete);

@override
String toString() {
  return 'UserDetails(id: $id, company: $company, companiesPermitted: $companiesPermitted, username: $username, email: $email, phone: $phone, profileUrl: $profileUrl, role: $role, tags: $tags, promotions: $promotions, tasks: $tasks, deleted: $deleted, deletedAt: $deletedAt, userLeaves: $userLeaves, createdAt: $createdAt, updatedAt: $updatedAt, userBio: $userBio, isBioComplete: $isBioComplete)';
}


}

/// @nodoc
abstract mixin class $UserDetailsCopyWith<$Res>  {
  factory $UserDetailsCopyWith(UserDetails value, $Res Function(UserDetails) _then) = _$UserDetailsCopyWithImpl;
@useResult
$Res call({
 String id, Company company, List<String> companiesPermitted, String username, String email, String? phone, String profileUrl, String role, List<String> tags, List<dynamic> promotions, List<dynamic> tasks, bool deleted, DateTime? deletedAt, List<UserLeave> userLeaves, DateTime? createdAt, DateTime? updatedAt, String? userBio, bool isBioComplete
});


$CompanyCopyWith<$Res> get company;

}
/// @nodoc
class _$UserDetailsCopyWithImpl<$Res>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._self, this._then);

  final UserDetails _self;
  final $Res Function(UserDetails) _then;

/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? companiesPermitted = null,Object? username = null,Object? email = null,Object? phone = freezed,Object? profileUrl = null,Object? role = null,Object? tags = null,Object? promotions = null,Object? tasks = null,Object? deleted = null,Object? deletedAt = freezed,Object? userLeaves = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? userBio = freezed,Object? isBioComplete = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company,companiesPermitted: null == companiesPermitted ? _self.companiesPermitted : companiesPermitted // ignore: cast_nullable_to_non_nullable
as List<String>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,profileUrl: null == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,promotions: null == promotions ? _self.promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userLeaves: null == userLeaves ? _self.userLeaves : userLeaves // ignore: cast_nullable_to_non_nullable
as List<UserLeave>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userBio: freezed == userBio ? _self.userBio : userBio // ignore: cast_nullable_to_non_nullable
as String?,isBioComplete: null == isBioComplete ? _self.isBioComplete : isBioComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res> get company {
  
  return $CompanyCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDetails].
extension UserDetailsPatterns on UserDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetails value)  $default,){
final _that = this;
switch (_that) {
case _UserDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetails value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  Company company,  List<String> companiesPermitted,  String username,  String email,  String? phone,  String profileUrl,  String role,  List<String> tags,  List<dynamic> promotions,  List<dynamic> tasks,  bool deleted,  DateTime? deletedAt,  List<UserLeave> userLeaves,  DateTime? createdAt,  DateTime? updatedAt,  String? userBio,  bool isBioComplete)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetails() when $default != null:
return $default(_that.id,_that.company,_that.companiesPermitted,_that.username,_that.email,_that.phone,_that.profileUrl,_that.role,_that.tags,_that.promotions,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.userBio,_that.isBioComplete);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  Company company,  List<String> companiesPermitted,  String username,  String email,  String? phone,  String profileUrl,  String role,  List<String> tags,  List<dynamic> promotions,  List<dynamic> tasks,  bool deleted,  DateTime? deletedAt,  List<UserLeave> userLeaves,  DateTime? createdAt,  DateTime? updatedAt,  String? userBio,  bool isBioComplete)  $default,) {final _that = this;
switch (_that) {
case _UserDetails():
return $default(_that.id,_that.company,_that.companiesPermitted,_that.username,_that.email,_that.phone,_that.profileUrl,_that.role,_that.tags,_that.promotions,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.userBio,_that.isBioComplete);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  Company company,  List<String> companiesPermitted,  String username,  String email,  String? phone,  String profileUrl,  String role,  List<String> tags,  List<dynamic> promotions,  List<dynamic> tasks,  bool deleted,  DateTime? deletedAt,  List<UserLeave> userLeaves,  DateTime? createdAt,  DateTime? updatedAt,  String? userBio,  bool isBioComplete)?  $default,) {final _that = this;
switch (_that) {
case _UserDetails() when $default != null:
return $default(_that.id,_that.company,_that.companiesPermitted,_that.username,_that.email,_that.phone,_that.profileUrl,_that.role,_that.tags,_that.promotions,_that.tasks,_that.deleted,_that.deletedAt,_that.userLeaves,_that.createdAt,_that.updatedAt,_that.userBio,_that.isBioComplete);case _:
  return null;

}
}

}

/// @nodoc


class _UserDetails implements UserDetails {
  const _UserDetails({required this.id, required this.company, required final  List<String> companiesPermitted, required this.username, required this.email, this.phone, required this.profileUrl, required this.role, required final  List<String> tags, required final  List<dynamic> promotions, required final  List<dynamic> tasks, required this.deleted, this.deletedAt, required final  List<UserLeave> userLeaves, this.createdAt, this.updatedAt, this.userBio, required this.isBioComplete}): _companiesPermitted = companiesPermitted,_tags = tags,_promotions = promotions,_tasks = tasks,_userLeaves = userLeaves;
  

@override final  String id;
@override final  Company company;
 final  List<String> _companiesPermitted;
@override List<String> get companiesPermitted {
  if (_companiesPermitted is EqualUnmodifiableListView) return _companiesPermitted;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_companiesPermitted);
}

@override final  String username;
@override final  String email;
@override final  String? phone;
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

@override final  bool deleted;
@override final  DateTime? deletedAt;
 final  List<UserLeave> _userLeaves;
@override List<UserLeave> get userLeaves {
  if (_userLeaves is EqualUnmodifiableListView) return _userLeaves;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userLeaves);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  String? userBio;
@override final  bool isBioComplete;

/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailsCopyWith<_UserDetails> get copyWith => __$UserDetailsCopyWithImpl<_UserDetails>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._companiesPermitted, _companiesPermitted)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._promotions, _promotions)&&const DeepCollectionEquality().equals(other._tasks, _tasks)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&const DeepCollectionEquality().equals(other._userLeaves, _userLeaves)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.userBio, userBio) || other.userBio == userBio)&&(identical(other.isBioComplete, isBioComplete) || other.isBioComplete == isBioComplete));
}


@override
int get hashCode => Object.hash(runtimeType,id,company,const DeepCollectionEquality().hash(_companiesPermitted),username,email,phone,profileUrl,role,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_promotions),const DeepCollectionEquality().hash(_tasks),deleted,deletedAt,const DeepCollectionEquality().hash(_userLeaves),createdAt,updatedAt,userBio,isBioComplete);

@override
String toString() {
  return 'UserDetails(id: $id, company: $company, companiesPermitted: $companiesPermitted, username: $username, email: $email, phone: $phone, profileUrl: $profileUrl, role: $role, tags: $tags, promotions: $promotions, tasks: $tasks, deleted: $deleted, deletedAt: $deletedAt, userLeaves: $userLeaves, createdAt: $createdAt, updatedAt: $updatedAt, userBio: $userBio, isBioComplete: $isBioComplete)';
}


}

/// @nodoc
abstract mixin class _$UserDetailsCopyWith<$Res> implements $UserDetailsCopyWith<$Res> {
  factory _$UserDetailsCopyWith(_UserDetails value, $Res Function(_UserDetails) _then) = __$UserDetailsCopyWithImpl;
@override @useResult
$Res call({
 String id, Company company, List<String> companiesPermitted, String username, String email, String? phone, String profileUrl, String role, List<String> tags, List<dynamic> promotions, List<dynamic> tasks, bool deleted, DateTime? deletedAt, List<UserLeave> userLeaves, DateTime? createdAt, DateTime? updatedAt, String? userBio, bool isBioComplete
});


@override $CompanyCopyWith<$Res> get company;

}
/// @nodoc
class __$UserDetailsCopyWithImpl<$Res>
    implements _$UserDetailsCopyWith<$Res> {
  __$UserDetailsCopyWithImpl(this._self, this._then);

  final _UserDetails _self;
  final $Res Function(_UserDetails) _then;

/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? companiesPermitted = null,Object? username = null,Object? email = null,Object? phone = freezed,Object? profileUrl = null,Object? role = null,Object? tags = null,Object? promotions = null,Object? tasks = null,Object? deleted = null,Object? deletedAt = freezed,Object? userLeaves = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? userBio = freezed,Object? isBioComplete = null,}) {
  return _then(_UserDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as Company,companiesPermitted: null == companiesPermitted ? _self._companiesPermitted : companiesPermitted // ignore: cast_nullable_to_non_nullable
as List<String>,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,profileUrl: null == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,promotions: null == promotions ? _self._promotions : promotions // ignore: cast_nullable_to_non_nullable
as List<dynamic>,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<dynamic>,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userLeaves: null == userLeaves ? _self._userLeaves : userLeaves // ignore: cast_nullable_to_non_nullable
as List<UserLeave>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,userBio: freezed == userBio ? _self.userBio : userBio // ignore: cast_nullable_to_non_nullable
as String?,isBioComplete: null == isBioComplete ? _self.isBioComplete : isBioComplete // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of UserDetails
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res> get company {
  
  return $CompanyCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}

// dart format on
