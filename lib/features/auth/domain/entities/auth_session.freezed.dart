// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthSession {

 User get user; Company get activeCompany; List<Company> get companies; List<Assignment> get assignments; Role get role; List<Permission> get permissions;
/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSessionCopyWith<AuthSession> get copyWith => _$AuthSessionCopyWithImpl<AuthSession>(this as AuthSession, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSession&&(identical(other.user, user) || other.user == user)&&(identical(other.activeCompany, activeCompany) || other.activeCompany == activeCompany)&&const DeepCollectionEquality().equals(other.companies, companies)&&const DeepCollectionEquality().equals(other.assignments, assignments)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.permissions, permissions));
}


@override
int get hashCode => Object.hash(runtimeType,user,activeCompany,const DeepCollectionEquality().hash(companies),const DeepCollectionEquality().hash(assignments),role,const DeepCollectionEquality().hash(permissions));

@override
String toString() {
  return 'AuthSession(user: $user, activeCompany: $activeCompany, companies: $companies, assignments: $assignments, role: $role, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $AuthSessionCopyWith<$Res>  {
  factory $AuthSessionCopyWith(AuthSession value, $Res Function(AuthSession) _then) = _$AuthSessionCopyWithImpl;
@useResult
$Res call({
 User user, Company activeCompany, List<Company> companies, List<Assignment> assignments, Role role, List<Permission> permissions
});


$UserCopyWith<$Res> get user;$CompanyCopyWith<$Res> get activeCompany;$RoleCopyWith<$Res> get role;

}
/// @nodoc
class _$AuthSessionCopyWithImpl<$Res>
    implements $AuthSessionCopyWith<$Res> {
  _$AuthSessionCopyWithImpl(this._self, this._then);

  final AuthSession _self;
  final $Res Function(AuthSession) _then;

/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? activeCompany = null,Object? companies = null,Object? assignments = null,Object? role = null,Object? permissions = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,activeCompany: null == activeCompany ? _self.activeCompany : activeCompany // ignore: cast_nullable_to_non_nullable
as Company,companies: null == companies ? _self.companies : companies // ignore: cast_nullable_to_non_nullable
as List<Company>,assignments: null == assignments ? _self.assignments : assignments // ignore: cast_nullable_to_non_nullable
as List<Assignment>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<Permission>,
  ));
}
/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res> get activeCompany {
  
  return $CompanyCopyWith<$Res>(_self.activeCompany, (value) {
    return _then(_self.copyWith(activeCompany: value));
  });
}/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleCopyWith<$Res> get role {
  
  return $RoleCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthSession].
extension AuthSessionPatterns on AuthSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSession value)  $default,){
final _that = this;
switch (_that) {
case _AuthSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSession value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User user,  Company activeCompany,  List<Company> companies,  List<Assignment> assignments,  Role role,  List<Permission> permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSession() when $default != null:
return $default(_that.user,_that.activeCompany,_that.companies,_that.assignments,_that.role,_that.permissions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User user,  Company activeCompany,  List<Company> companies,  List<Assignment> assignments,  Role role,  List<Permission> permissions)  $default,) {final _that = this;
switch (_that) {
case _AuthSession():
return $default(_that.user,_that.activeCompany,_that.companies,_that.assignments,_that.role,_that.permissions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User user,  Company activeCompany,  List<Company> companies,  List<Assignment> assignments,  Role role,  List<Permission> permissions)?  $default,) {final _that = this;
switch (_that) {
case _AuthSession() when $default != null:
return $default(_that.user,_that.activeCompany,_that.companies,_that.assignments,_that.role,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc


class _AuthSession extends AuthSession {
  const _AuthSession({required this.user, required this.activeCompany, required final  List<Company> companies, required final  List<Assignment> assignments, required this.role, required final  List<Permission> permissions}): _companies = companies,_assignments = assignments,_permissions = permissions,super._();
  

@override final  User user;
@override final  Company activeCompany;
 final  List<Company> _companies;
@override List<Company> get companies {
  if (_companies is EqualUnmodifiableListView) return _companies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_companies);
}

 final  List<Assignment> _assignments;
@override List<Assignment> get assignments {
  if (_assignments is EqualUnmodifiableListView) return _assignments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assignments);
}

@override final  Role role;
 final  List<Permission> _permissions;
@override List<Permission> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}


/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSessionCopyWith<_AuthSession> get copyWith => __$AuthSessionCopyWithImpl<_AuthSession>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSession&&(identical(other.user, user) || other.user == user)&&(identical(other.activeCompany, activeCompany) || other.activeCompany == activeCompany)&&const DeepCollectionEquality().equals(other._companies, _companies)&&const DeepCollectionEquality().equals(other._assignments, _assignments)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}


@override
int get hashCode => Object.hash(runtimeType,user,activeCompany,const DeepCollectionEquality().hash(_companies),const DeepCollectionEquality().hash(_assignments),role,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'AuthSession(user: $user, activeCompany: $activeCompany, companies: $companies, assignments: $assignments, role: $role, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$AuthSessionCopyWith<$Res> implements $AuthSessionCopyWith<$Res> {
  factory _$AuthSessionCopyWith(_AuthSession value, $Res Function(_AuthSession) _then) = __$AuthSessionCopyWithImpl;
@override @useResult
$Res call({
 User user, Company activeCompany, List<Company> companies, List<Assignment> assignments, Role role, List<Permission> permissions
});


@override $UserCopyWith<$Res> get user;@override $CompanyCopyWith<$Res> get activeCompany;@override $RoleCopyWith<$Res> get role;

}
/// @nodoc
class __$AuthSessionCopyWithImpl<$Res>
    implements _$AuthSessionCopyWith<$Res> {
  __$AuthSessionCopyWithImpl(this._self, this._then);

  final _AuthSession _self;
  final $Res Function(_AuthSession) _then;

/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? activeCompany = null,Object? companies = null,Object? assignments = null,Object? role = null,Object? permissions = null,}) {
  return _then(_AuthSession(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,activeCompany: null == activeCompany ? _self.activeCompany : activeCompany // ignore: cast_nullable_to_non_nullable
as Company,companies: null == companies ? _self._companies : companies // ignore: cast_nullable_to_non_nullable
as List<Company>,assignments: null == assignments ? _self._assignments : assignments // ignore: cast_nullable_to_non_nullable
as List<Assignment>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as Role,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<Permission>,
  ));
}

/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyCopyWith<$Res> get activeCompany {
  
  return $CompanyCopyWith<$Res>(_self.activeCompany, (value) {
    return _then(_self.copyWith(activeCompany: value));
  });
}/// Create a copy of AuthSession
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleCopyWith<$Res> get role {
  
  return $RoleCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}
}

// dart format on
