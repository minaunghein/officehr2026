// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assignment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AssignmentModel {

@JsonKey(name: 'company_id') String get companyId;@JsonKey(name: 'role_id') String get roleId;
/// Create a copy of AssignmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AssignmentModelCopyWith<AssignmentModel> get copyWith => _$AssignmentModelCopyWithImpl<AssignmentModel>(this as AssignmentModel, _$identity);

  /// Serializes this AssignmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AssignmentModel&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.roleId, roleId) || other.roleId == roleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyId,roleId);

@override
String toString() {
  return 'AssignmentModel(companyId: $companyId, roleId: $roleId)';
}


}

/// @nodoc
abstract mixin class $AssignmentModelCopyWith<$Res>  {
  factory $AssignmentModelCopyWith(AssignmentModel value, $Res Function(AssignmentModel) _then) = _$AssignmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'role_id') String roleId
});




}
/// @nodoc
class _$AssignmentModelCopyWithImpl<$Res>
    implements $AssignmentModelCopyWith<$Res> {
  _$AssignmentModelCopyWithImpl(this._self, this._then);

  final AssignmentModel _self;
  final $Res Function(AssignmentModel) _then;

/// Create a copy of AssignmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyId = null,Object? roleId = null,}) {
  return _then(_self.copyWith(
companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AssignmentModel].
extension AssignmentModelPatterns on AssignmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AssignmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AssignmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AssignmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AssignmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AssignmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AssignmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'role_id')  String roleId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AssignmentModel() when $default != null:
return $default(_that.companyId,_that.roleId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'role_id')  String roleId)  $default,) {final _that = this;
switch (_that) {
case _AssignmentModel():
return $default(_that.companyId,_that.roleId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'role_id')  String roleId)?  $default,) {final _that = this;
switch (_that) {
case _AssignmentModel() when $default != null:
return $default(_that.companyId,_that.roleId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AssignmentModel extends AssignmentModel {
  const _AssignmentModel({@JsonKey(name: 'company_id') this.companyId = '', @JsonKey(name: 'role_id') this.roleId = ''}): super._();
  factory _AssignmentModel.fromJson(Map<String, dynamic> json) => _$AssignmentModelFromJson(json);

@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(name: 'role_id') final  String roleId;

/// Create a copy of AssignmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AssignmentModelCopyWith<_AssignmentModel> get copyWith => __$AssignmentModelCopyWithImpl<_AssignmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AssignmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AssignmentModel&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.roleId, roleId) || other.roleId == roleId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,companyId,roleId);

@override
String toString() {
  return 'AssignmentModel(companyId: $companyId, roleId: $roleId)';
}


}

/// @nodoc
abstract mixin class _$AssignmentModelCopyWith<$Res> implements $AssignmentModelCopyWith<$Res> {
  factory _$AssignmentModelCopyWith(_AssignmentModel value, $Res Function(_AssignmentModel) _then) = __$AssignmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'role_id') String roleId
});




}
/// @nodoc
class __$AssignmentModelCopyWithImpl<$Res>
    implements _$AssignmentModelCopyWith<$Res> {
  __$AssignmentModelCopyWithImpl(this._self, this._then);

  final _AssignmentModel _self;
  final $Res Function(_AssignmentModel) _then;

/// Create a copy of AssignmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyId = null,Object? roleId = null,}) {
  return _then(_AssignmentModel(
companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,roleId: null == roleId ? _self.roleId : roleId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
