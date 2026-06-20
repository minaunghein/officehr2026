// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailsResponseModel {

 List<String> get message; UserDetailsModel get data;
/// Create a copy of UserDetailsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDetailsResponseModelCopyWith<UserDetailsResponseModel> get copyWith => _$UserDetailsResponseModelCopyWithImpl<UserDetailsResponseModel>(this as UserDetailsResponseModel, _$identity);

  /// Serializes this UserDetailsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDetailsResponseModel&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(message),data);

@override
String toString() {
  return 'UserDetailsResponseModel(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $UserDetailsResponseModelCopyWith<$Res>  {
  factory $UserDetailsResponseModelCopyWith(UserDetailsResponseModel value, $Res Function(UserDetailsResponseModel) _then) = _$UserDetailsResponseModelCopyWithImpl;
@useResult
$Res call({
 List<String> message, UserDetailsModel data
});


$UserDetailsModelCopyWith<$Res> get data;

}
/// @nodoc
class _$UserDetailsResponseModelCopyWithImpl<$Res>
    implements $UserDetailsResponseModelCopyWith<$Res> {
  _$UserDetailsResponseModelCopyWithImpl(this._self, this._then);

  final UserDetailsResponseModel _self;
  final $Res Function(UserDetailsResponseModel) _then;

/// Create a copy of UserDetailsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as List<String>,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserDetailsModel,
  ));
}
/// Create a copy of UserDetailsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<$Res> get data {
  
  return $UserDetailsModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDetailsResponseModel].
extension UserDetailsResponseModelPatterns on UserDetailsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDetailsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDetailsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDetailsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _UserDetailsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDetailsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserDetailsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> message,  UserDetailsModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDetailsResponseModel() when $default != null:
return $default(_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> message,  UserDetailsModel data)  $default,) {final _that = this;
switch (_that) {
case _UserDetailsResponseModel():
return $default(_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> message,  UserDetailsModel data)?  $default,) {final _that = this;
switch (_that) {
case _UserDetailsResponseModel() when $default != null:
return $default(_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDetailsResponseModel implements UserDetailsResponseModel {
  const _UserDetailsResponseModel({final  List<String> message = const [], required this.data}): _message = message;
  factory _UserDetailsResponseModel.fromJson(Map<String, dynamic> json) => _$UserDetailsResponseModelFromJson(json);

 final  List<String> _message;
@override@JsonKey() List<String> get message {
  if (_message is EqualUnmodifiableListView) return _message;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_message);
}

@override final  UserDetailsModel data;

/// Create a copy of UserDetailsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDetailsResponseModelCopyWith<_UserDetailsResponseModel> get copyWith => __$UserDetailsResponseModelCopyWithImpl<_UserDetailsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDetailsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDetailsResponseModel&&const DeepCollectionEquality().equals(other._message, _message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_message),data);

@override
String toString() {
  return 'UserDetailsResponseModel(message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$UserDetailsResponseModelCopyWith<$Res> implements $UserDetailsResponseModelCopyWith<$Res> {
  factory _$UserDetailsResponseModelCopyWith(_UserDetailsResponseModel value, $Res Function(_UserDetailsResponseModel) _then) = __$UserDetailsResponseModelCopyWithImpl;
@override @useResult
$Res call({
 List<String> message, UserDetailsModel data
});


@override $UserDetailsModelCopyWith<$Res> get data;

}
/// @nodoc
class __$UserDetailsResponseModelCopyWithImpl<$Res>
    implements _$UserDetailsResponseModelCopyWith<$Res> {
  __$UserDetailsResponseModelCopyWithImpl(this._self, this._then);

  final _UserDetailsResponseModel _self;
  final $Res Function(_UserDetailsResponseModel) _then;

/// Create a copy of UserDetailsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? data = null,}) {
  return _then(_UserDetailsResponseModel(
message: null == message ? _self._message : message // ignore: cast_nullable_to_non_nullable
as List<String>,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserDetailsModel,
  ));
}

/// Create a copy of UserDetailsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<$Res> get data {
  
  return $UserDetailsModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
