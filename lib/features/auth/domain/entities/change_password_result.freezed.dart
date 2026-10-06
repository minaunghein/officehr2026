// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChangePasswordResult {

 String get message; String get accessToken; String get refreshToken; AuthSession? get session;
/// Create a copy of ChangePasswordResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordResultCopyWith<ChangePasswordResult> get copyWith => _$ChangePasswordResultCopyWithImpl<ChangePasswordResult>(this as ChangePasswordResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordResult&&(identical(other.message, message) || other.message == message)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode => Object.hash(runtimeType,message,accessToken,refreshToken,session);

@override
String toString() {
  return 'ChangePasswordResult(message: $message, accessToken: $accessToken, refreshToken: $refreshToken, session: $session)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordResultCopyWith<$Res>  {
  factory $ChangePasswordResultCopyWith(ChangePasswordResult value, $Res Function(ChangePasswordResult) _then) = _$ChangePasswordResultCopyWithImpl;
@useResult
$Res call({
 String message, String accessToken, String refreshToken, AuthSession? session
});


$AuthSessionCopyWith<$Res>? get session;

}
/// @nodoc
class _$ChangePasswordResultCopyWithImpl<$Res>
    implements $ChangePasswordResultCopyWith<$Res> {
  _$ChangePasswordResultCopyWithImpl(this._self, this._then);

  final ChangePasswordResult _self;
  final $Res Function(ChangePasswordResult) _then;

/// Create a copy of ChangePasswordResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? accessToken = null,Object? refreshToken = null,Object? session = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as AuthSession?,
  ));
}
/// Create a copy of ChangePasswordResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthSessionCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $AuthSessionCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChangePasswordResult].
extension ChangePasswordResultPatterns on ChangePasswordResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordResult value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordResult value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message,  String accessToken,  String refreshToken,  AuthSession? session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordResult() when $default != null:
return $default(_that.message,_that.accessToken,_that.refreshToken,_that.session);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message,  String accessToken,  String refreshToken,  AuthSession? session)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordResult():
return $default(_that.message,_that.accessToken,_that.refreshToken,_that.session);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message,  String accessToken,  String refreshToken,  AuthSession? session)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordResult() when $default != null:
return $default(_that.message,_that.accessToken,_that.refreshToken,_that.session);case _:
  return null;

}
}

}

/// @nodoc


class _ChangePasswordResult extends ChangePasswordResult {
  const _ChangePasswordResult({required this.message, this.accessToken = '', this.refreshToken = '', this.session}): super._();
  

@override final  String message;
@override@JsonKey() final  String accessToken;
@override@JsonKey() final  String refreshToken;
@override final  AuthSession? session;

/// Create a copy of ChangePasswordResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordResultCopyWith<_ChangePasswordResult> get copyWith => __$ChangePasswordResultCopyWithImpl<_ChangePasswordResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordResult&&(identical(other.message, message) || other.message == message)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.session, session) || other.session == session));
}


@override
int get hashCode => Object.hash(runtimeType,message,accessToken,refreshToken,session);

@override
String toString() {
  return 'ChangePasswordResult(message: $message, accessToken: $accessToken, refreshToken: $refreshToken, session: $session)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordResultCopyWith<$Res> implements $ChangePasswordResultCopyWith<$Res> {
  factory _$ChangePasswordResultCopyWith(_ChangePasswordResult value, $Res Function(_ChangePasswordResult) _then) = __$ChangePasswordResultCopyWithImpl;
@override @useResult
$Res call({
 String message, String accessToken, String refreshToken, AuthSession? session
});


@override $AuthSessionCopyWith<$Res>? get session;

}
/// @nodoc
class __$ChangePasswordResultCopyWithImpl<$Res>
    implements _$ChangePasswordResultCopyWith<$Res> {
  __$ChangePasswordResultCopyWithImpl(this._self, this._then);

  final _ChangePasswordResult _self;
  final $Res Function(_ChangePasswordResult) _then;

/// Create a copy of ChangePasswordResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? accessToken = null,Object? refreshToken = null,Object? session = freezed,}) {
  return _then(_ChangePasswordResult(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as AuthSession?,
  ));
}

/// Create a copy of ChangePasswordResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthSessionCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $AuthSessionCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

// dart format on
