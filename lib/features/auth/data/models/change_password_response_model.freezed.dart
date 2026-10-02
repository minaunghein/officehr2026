// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChangePasswordResponseModel {

@JsonKey(readValue: _readMessage) String get message;@JsonKey(readValue: _readAccessToken) String get accessToken;@JsonKey(readValue: _readRefreshToken) String get refreshToken;@JsonKey(readValue: _readSession) AuthSessionModel? get session;
/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordResponseModelCopyWith<ChangePasswordResponseModel> get copyWith => _$ChangePasswordResponseModelCopyWithImpl<ChangePasswordResponseModel>(this as ChangePasswordResponseModel, _$identity);

  /// Serializes this ChangePasswordResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordResponseModel&&(identical(other.message, message) || other.message == message)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.session, session) || other.session == session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,accessToken,refreshToken,session);

@override
String toString() {
  return 'ChangePasswordResponseModel(message: $message, accessToken: $accessToken, refreshToken: $refreshToken, session: $session)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordResponseModelCopyWith<$Res>  {
  factory $ChangePasswordResponseModelCopyWith(ChangePasswordResponseModel value, $Res Function(ChangePasswordResponseModel) _then) = _$ChangePasswordResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readMessage) String message,@JsonKey(readValue: _readAccessToken) String accessToken,@JsonKey(readValue: _readRefreshToken) String refreshToken,@JsonKey(readValue: _readSession) AuthSessionModel? session
});


$AuthSessionModelCopyWith<$Res>? get session;

}
/// @nodoc
class _$ChangePasswordResponseModelCopyWithImpl<$Res>
    implements $ChangePasswordResponseModelCopyWith<$Res> {
  _$ChangePasswordResponseModelCopyWithImpl(this._self, this._then);

  final ChangePasswordResponseModel _self;
  final $Res Function(ChangePasswordResponseModel) _then;

/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? accessToken = null,Object? refreshToken = null,Object? session = freezed,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as AuthSessionModel?,
  ));
}
/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthSessionModelCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $AuthSessionModelCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChangePasswordResponseModel].
extension ChangePasswordResponseModelPatterns on ChangePasswordResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readMessage)  String message, @JsonKey(readValue: _readAccessToken)  String accessToken, @JsonKey(readValue: _readRefreshToken)  String refreshToken, @JsonKey(readValue: _readSession)  AuthSessionModel? session)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readMessage)  String message, @JsonKey(readValue: _readAccessToken)  String accessToken, @JsonKey(readValue: _readRefreshToken)  String refreshToken, @JsonKey(readValue: _readSession)  AuthSessionModel? session)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readMessage)  String message, @JsonKey(readValue: _readAccessToken)  String accessToken, @JsonKey(readValue: _readRefreshToken)  String refreshToken, @JsonKey(readValue: _readSession)  AuthSessionModel? session)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordResponseModel() when $default != null:
return $default(_that.message,_that.accessToken,_that.refreshToken,_that.session);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePasswordResponseModel extends ChangePasswordResponseModel {
  const _ChangePasswordResponseModel({@JsonKey(readValue: _readMessage) this.message = '', @JsonKey(readValue: _readAccessToken) this.accessToken = '', @JsonKey(readValue: _readRefreshToken) this.refreshToken = '', @JsonKey(readValue: _readSession) this.session}): super._();
  factory _ChangePasswordResponseModel.fromJson(Map<String, dynamic> json) => _$ChangePasswordResponseModelFromJson(json);

@override@JsonKey(readValue: _readMessage) final  String message;
@override@JsonKey(readValue: _readAccessToken) final  String accessToken;
@override@JsonKey(readValue: _readRefreshToken) final  String refreshToken;
@override@JsonKey(readValue: _readSession) final  AuthSessionModel? session;

/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordResponseModelCopyWith<_ChangePasswordResponseModel> get copyWith => __$ChangePasswordResponseModelCopyWithImpl<_ChangePasswordResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePasswordResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordResponseModel&&(identical(other.message, message) || other.message == message)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.session, session) || other.session == session));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,accessToken,refreshToken,session);

@override
String toString() {
  return 'ChangePasswordResponseModel(message: $message, accessToken: $accessToken, refreshToken: $refreshToken, session: $session)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordResponseModelCopyWith<$Res> implements $ChangePasswordResponseModelCopyWith<$Res> {
  factory _$ChangePasswordResponseModelCopyWith(_ChangePasswordResponseModel value, $Res Function(_ChangePasswordResponseModel) _then) = __$ChangePasswordResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readMessage) String message,@JsonKey(readValue: _readAccessToken) String accessToken,@JsonKey(readValue: _readRefreshToken) String refreshToken,@JsonKey(readValue: _readSession) AuthSessionModel? session
});


@override $AuthSessionModelCopyWith<$Res>? get session;

}
/// @nodoc
class __$ChangePasswordResponseModelCopyWithImpl<$Res>
    implements _$ChangePasswordResponseModelCopyWith<$Res> {
  __$ChangePasswordResponseModelCopyWithImpl(this._self, this._then);

  final _ChangePasswordResponseModel _self;
  final $Res Function(_ChangePasswordResponseModel) _then;

/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? accessToken = null,Object? refreshToken = null,Object? session = freezed,}) {
  return _then(_ChangePasswordResponseModel(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as AuthSessionModel?,
  ));
}

/// Create a copy of ChangePasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthSessionModelCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $AuthSessionModelCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}
}

// dart format on
