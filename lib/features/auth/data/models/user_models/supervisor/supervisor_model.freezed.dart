// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supervisor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupervisorModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(name: 'user_id') String get userId;
/// Create a copy of SupervisorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupervisorModelCopyWith<SupervisorModel> get copyWith => _$SupervisorModelCopyWithImpl<SupervisorModel>(this as SupervisorModel, _$identity);

  /// Serializes this SupervisorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupervisorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'SupervisorModel(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $SupervisorModelCopyWith<$Res>  {
  factory $SupervisorModelCopyWith(SupervisorModel value, $Res Function(SupervisorModel) _then) = _$SupervisorModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class _$SupervisorModelCopyWithImpl<$Res>
    implements $SupervisorModelCopyWith<$Res> {
  _$SupervisorModelCopyWithImpl(this._self, this._then);

  final SupervisorModel _self;
  final $Res Function(SupervisorModel) _then;

/// Create a copy of SupervisorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SupervisorModel].
extension SupervisorModelPatterns on SupervisorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupervisorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupervisorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupervisorModel value)  $default,){
final _that = this;
switch (_that) {
case _SupervisorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupervisorModel value)?  $default,){
final _that = this;
switch (_that) {
case _SupervisorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupervisorModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId)  $default,) {final _that = this;
switch (_that) {
case _SupervisorModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId)?  $default,) {final _that = this;
switch (_that) {
case _SupervisorModel() when $default != null:
return $default(_that.id,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupervisorModel extends SupervisorModel {
  const _SupervisorModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(name: 'user_id') this.userId = ''}): super._();
  factory _SupervisorModel.fromJson(Map<String, dynamic> json) => _$SupervisorModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(name: 'user_id') final  String userId;

/// Create a copy of SupervisorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupervisorModelCopyWith<_SupervisorModel> get copyWith => __$SupervisorModelCopyWithImpl<_SupervisorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupervisorModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupervisorModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId);

@override
String toString() {
  return 'SupervisorModel(id: $id, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$SupervisorModelCopyWith<$Res> implements $SupervisorModelCopyWith<$Res> {
  factory _$SupervisorModelCopyWith(_SupervisorModel value, $Res Function(_SupervisorModel) _then) = __$SupervisorModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'user_id') String userId
});




}
/// @nodoc
class __$SupervisorModelCopyWithImpl<$Res>
    implements _$SupervisorModelCopyWith<$Res> {
  __$SupervisorModelCopyWithImpl(this._self, this._then);

  final _SupervisorModel _self;
  final $Res Function(_SupervisorModel) _then;

/// Create a copy of SupervisorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,}) {
  return _then(_SupervisorModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
