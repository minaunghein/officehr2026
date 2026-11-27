// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_request_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveRequestUserModel {

@JsonKey(readValue: readMongoId) String get id; String get username; String get email;
/// Create a copy of LeaveRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveRequestUserModelCopyWith<LeaveRequestUserModel> get copyWith => _$LeaveRequestUserModelCopyWithImpl<LeaveRequestUserModel>(this as LeaveRequestUserModel, _$identity);

  /// Serializes this LeaveRequestUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveRequestUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email);

@override
String toString() {
  return 'LeaveRequestUserModel(id: $id, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class $LeaveRequestUserModelCopyWith<$Res>  {
  factory $LeaveRequestUserModelCopyWith(LeaveRequestUserModel value, $Res Function(LeaveRequestUserModel) _then) = _$LeaveRequestUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: readMongoId) String id, String username, String email
});




}
/// @nodoc
class _$LeaveRequestUserModelCopyWithImpl<$Res>
    implements $LeaveRequestUserModelCopyWith<$Res> {
  _$LeaveRequestUserModelCopyWithImpl(this._self, this._then);

  final LeaveRequestUserModel _self;
  final $Res Function(LeaveRequestUserModel) _then;

/// Create a copy of LeaveRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaveRequestUserModel].
extension LeaveRequestUserModelPatterns on LeaveRequestUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveRequestUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveRequestUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveRequestUserModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaveRequestUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveRequestUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveRequestUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id,  String username,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveRequestUserModel() when $default != null:
return $default(_that.id,_that.username,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id,  String username,  String email)  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestUserModel():
return $default(_that.id,_that.username,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: readMongoId)  String id,  String username,  String email)?  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestUserModel() when $default != null:
return $default(_that.id,_that.username,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveRequestUserModel implements LeaveRequestUserModel {
  const _LeaveRequestUserModel({@JsonKey(readValue: readMongoId) this.id = '', this.username = '', this.email = ''});
  factory _LeaveRequestUserModel.fromJson(Map<String, dynamic> json) => _$LeaveRequestUserModelFromJson(json);

@override@JsonKey(readValue: readMongoId) final  String id;
@override@JsonKey() final  String username;
@override@JsonKey() final  String email;

/// Create a copy of LeaveRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveRequestUserModelCopyWith<_LeaveRequestUserModel> get copyWith => __$LeaveRequestUserModelCopyWithImpl<_LeaveRequestUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveRequestUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveRequestUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email);

@override
String toString() {
  return 'LeaveRequestUserModel(id: $id, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class _$LeaveRequestUserModelCopyWith<$Res> implements $LeaveRequestUserModelCopyWith<$Res> {
  factory _$LeaveRequestUserModelCopyWith(_LeaveRequestUserModel value, $Res Function(_LeaveRequestUserModel) _then) = __$LeaveRequestUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: readMongoId) String id, String username, String email
});




}
/// @nodoc
class __$LeaveRequestUserModelCopyWithImpl<$Res>
    implements _$LeaveRequestUserModelCopyWith<$Res> {
  __$LeaveRequestUserModelCopyWithImpl(this._self, this._then);

  final _LeaveRequestUserModel _self;
  final $Res Function(_LeaveRequestUserModel) _then;

/// Create a copy of LeaveRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,}) {
  return _then(_LeaveRequestUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
