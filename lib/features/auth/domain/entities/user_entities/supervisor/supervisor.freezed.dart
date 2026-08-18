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

 String get id; String get userId;
/// Create a copy of Supervisor
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupervisorCopyWith<Supervisor> get copyWith => _$SupervisorCopyWithImpl<Supervisor>(this as Supervisor, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Supervisor&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'Supervisor(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $SupervisorCopyWith<$Res>  {
  factory $SupervisorCopyWith(Supervisor value, $Res Function(Supervisor) _then) = _$SupervisorCopyWithImpl;
@useResult
$Res call({
 String id, String userId
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Supervisor() when $default != null:
return $default(_that.id,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId)  $default,) {final _that = this;
switch (_that) {
case _Supervisor():
return $default(_that.id,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId)?  $default,) {final _that = this;
switch (_that) {
case _Supervisor() when $default != null:
return $default(_that.id,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _Supervisor implements Supervisor {
  const _Supervisor({required this.id, required this.userId});
  

@override final  String id;
@override final  String userId;

/// Create a copy of Supervisor
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupervisorCopyWith<_Supervisor> get copyWith => __$SupervisorCopyWithImpl<_Supervisor>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Supervisor&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'Supervisor(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SupervisorCopyWith<$Res> implements $SupervisorCopyWith<$Res> {
  factory _$SupervisorCopyWith(_Supervisor value, $Res Function(_Supervisor) _then) = __$SupervisorCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,}) {
  return _then(_Supervisor(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
