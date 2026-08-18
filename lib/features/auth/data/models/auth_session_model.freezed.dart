// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_session_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthSessionModel {

 UserModel get user;@JsonKey(name: 'active_company') CompanyModel get activeCompany; List<CompanyModel> get companies; List<AssignmentModel> get assignments; RoleModel get role; List<PermissionModel> get permissions;
/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthSessionModelCopyWith<AuthSessionModel> get copyWith => _$AuthSessionModelCopyWithImpl<AuthSessionModel>(this as AuthSessionModel, _$identity);

  /// Serializes this AuthSessionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSessionModel&&(identical(other.user, user) || other.user == user)&&(identical(other.activeCompany, activeCompany) || other.activeCompany == activeCompany)&&const DeepCollectionEquality().equals(other.companies, companies)&&const DeepCollectionEquality().equals(other.assignments, assignments)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other.permissions, permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,activeCompany,const DeepCollectionEquality().hash(companies),const DeepCollectionEquality().hash(assignments),role,const DeepCollectionEquality().hash(permissions));

@override
String toString() {
  return 'AuthSessionModel(user: $user, activeCompany: $activeCompany, companies: $companies, assignments: $assignments, role: $role, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class $AuthSessionModelCopyWith<$Res>  {
  factory $AuthSessionModelCopyWith(AuthSessionModel value, $Res Function(AuthSessionModel) _then) = _$AuthSessionModelCopyWithImpl;
@useResult
$Res call({
 UserModel user,@JsonKey(name: 'active_company') CompanyModel activeCompany, List<CompanyModel> companies, List<AssignmentModel> assignments, RoleModel role, List<PermissionModel> permissions
});


$UserModelCopyWith<$Res> get user;$CompanyModelCopyWith<$Res> get activeCompany;$RoleModelCopyWith<$Res> get role;

}
/// @nodoc
class _$AuthSessionModelCopyWithImpl<$Res>
    implements $AuthSessionModelCopyWith<$Res> {
  _$AuthSessionModelCopyWithImpl(this._self, this._then);

  final AuthSessionModel _self;
  final $Res Function(AuthSessionModel) _then;

/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? activeCompany = null,Object? companies = null,Object? assignments = null,Object? role = null,Object? permissions = null,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,activeCompany: null == activeCompany ? _self.activeCompany : activeCompany // ignore: cast_nullable_to_non_nullable
as CompanyModel,companies: null == companies ? _self.companies : companies // ignore: cast_nullable_to_non_nullable
as List<CompanyModel>,assignments: null == assignments ? _self.assignments : assignments // ignore: cast_nullable_to_non_nullable
as List<AssignmentModel>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as RoleModel,permissions: null == permissions ? _self.permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionModel>,
  ));
}
/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get activeCompany {
  
  return $CompanyModelCopyWith<$Res>(_self.activeCompany, (value) {
    return _then(_self.copyWith(activeCompany: value));
  });
}/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleModelCopyWith<$Res> get role {
  
  return $RoleModelCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthSessionModel].
extension AuthSessionModelPatterns on AuthSessionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthSessionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthSessionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthSessionModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthSessionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthSessionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthSessionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserModel user, @JsonKey(name: 'active_company')  CompanyModel activeCompany,  List<CompanyModel> companies,  List<AssignmentModel> assignments,  RoleModel role,  List<PermissionModel> permissions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthSessionModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserModel user, @JsonKey(name: 'active_company')  CompanyModel activeCompany,  List<CompanyModel> companies,  List<AssignmentModel> assignments,  RoleModel role,  List<PermissionModel> permissions)  $default,) {final _that = this;
switch (_that) {
case _AuthSessionModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserModel user, @JsonKey(name: 'active_company')  CompanyModel activeCompany,  List<CompanyModel> companies,  List<AssignmentModel> assignments,  RoleModel role,  List<PermissionModel> permissions)?  $default,) {final _that = this;
switch (_that) {
case _AuthSessionModel() when $default != null:
return $default(_that.user,_that.activeCompany,_that.companies,_that.assignments,_that.role,_that.permissions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthSessionModel extends AuthSessionModel {
  const _AuthSessionModel({this.user = const UserModel(), @JsonKey(name: 'active_company') this.activeCompany = const CompanyModel(), final  List<CompanyModel> companies = const <CompanyModel>[], final  List<AssignmentModel> assignments = const <AssignmentModel>[], this.role = const RoleModel(), final  List<PermissionModel> permissions = const <PermissionModel>[]}): _companies = companies,_assignments = assignments,_permissions = permissions,super._();
  factory _AuthSessionModel.fromJson(Map<String, dynamic> json) => _$AuthSessionModelFromJson(json);

@override@JsonKey() final  UserModel user;
@override@JsonKey(name: 'active_company') final  CompanyModel activeCompany;
 final  List<CompanyModel> _companies;
@override@JsonKey() List<CompanyModel> get companies {
  if (_companies is EqualUnmodifiableListView) return _companies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_companies);
}

 final  List<AssignmentModel> _assignments;
@override@JsonKey() List<AssignmentModel> get assignments {
  if (_assignments is EqualUnmodifiableListView) return _assignments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_assignments);
}

@override@JsonKey() final  RoleModel role;
 final  List<PermissionModel> _permissions;
@override@JsonKey() List<PermissionModel> get permissions {
  if (_permissions is EqualUnmodifiableListView) return _permissions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_permissions);
}


/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthSessionModelCopyWith<_AuthSessionModel> get copyWith => __$AuthSessionModelCopyWithImpl<_AuthSessionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthSessionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthSessionModel&&(identical(other.user, user) || other.user == user)&&(identical(other.activeCompany, activeCompany) || other.activeCompany == activeCompany)&&const DeepCollectionEquality().equals(other._companies, _companies)&&const DeepCollectionEquality().equals(other._assignments, _assignments)&&(identical(other.role, role) || other.role == role)&&const DeepCollectionEquality().equals(other._permissions, _permissions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,activeCompany,const DeepCollectionEquality().hash(_companies),const DeepCollectionEquality().hash(_assignments),role,const DeepCollectionEquality().hash(_permissions));

@override
String toString() {
  return 'AuthSessionModel(user: $user, activeCompany: $activeCompany, companies: $companies, assignments: $assignments, role: $role, permissions: $permissions)';
}


}

/// @nodoc
abstract mixin class _$AuthSessionModelCopyWith<$Res> implements $AuthSessionModelCopyWith<$Res> {
  factory _$AuthSessionModelCopyWith(_AuthSessionModel value, $Res Function(_AuthSessionModel) _then) = __$AuthSessionModelCopyWithImpl;
@override @useResult
$Res call({
 UserModel user,@JsonKey(name: 'active_company') CompanyModel activeCompany, List<CompanyModel> companies, List<AssignmentModel> assignments, RoleModel role, List<PermissionModel> permissions
});


@override $UserModelCopyWith<$Res> get user;@override $CompanyModelCopyWith<$Res> get activeCompany;@override $RoleModelCopyWith<$Res> get role;

}
/// @nodoc
class __$AuthSessionModelCopyWithImpl<$Res>
    implements _$AuthSessionModelCopyWith<$Res> {
  __$AuthSessionModelCopyWithImpl(this._self, this._then);

  final _AuthSessionModel _self;
  final $Res Function(_AuthSessionModel) _then;

/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? activeCompany = null,Object? companies = null,Object? assignments = null,Object? role = null,Object? permissions = null,}) {
  return _then(_AuthSessionModel(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserModel,activeCompany: null == activeCompany ? _self.activeCompany : activeCompany // ignore: cast_nullable_to_non_nullable
as CompanyModel,companies: null == companies ? _self._companies : companies // ignore: cast_nullable_to_non_nullable
as List<CompanyModel>,assignments: null == assignments ? _self._assignments : assignments // ignore: cast_nullable_to_non_nullable
as List<AssignmentModel>,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as RoleModel,permissions: null == permissions ? _self._permissions : permissions // ignore: cast_nullable_to_non_nullable
as List<PermissionModel>,
  ));
}

/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get user {
  
  return $UserModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<$Res> get activeCompany {
  
  return $CompanyModelCopyWith<$Res>(_self.activeCompany, (value) {
    return _then(_self.copyWith(activeCompany: value));
  });
}/// Create a copy of AuthSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RoleModelCopyWith<$Res> get role {
  
  return $RoleModelCopyWith<$Res>(_self.role, (value) {
    return _then(_self.copyWith(role: value));
  });
}
}

// dart format on
