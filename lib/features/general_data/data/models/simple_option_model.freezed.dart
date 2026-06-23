// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SimpleOptionModel {

 int get id; String? get title; String? get unit;
/// Create a copy of SimpleOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleOptionModelCopyWith<SimpleOptionModel> get copyWith => _$SimpleOptionModelCopyWithImpl<SimpleOptionModel>(this as SimpleOptionModel, _$identity);

  /// Serializes this SimpleOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleOptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,unit);

@override
String toString() {
  return 'SimpleOptionModel(id: $id, title: $title, unit: $unit)';
}


}

/// @nodoc
abstract mixin class $SimpleOptionModelCopyWith<$Res>  {
  factory $SimpleOptionModelCopyWith(SimpleOptionModel value, $Res Function(SimpleOptionModel) _then) = _$SimpleOptionModelCopyWithImpl;
@useResult
$Res call({
 int id, String? title, String? unit
});




}
/// @nodoc
class _$SimpleOptionModelCopyWithImpl<$Res>
    implements $SimpleOptionModelCopyWith<$Res> {
  _$SimpleOptionModelCopyWithImpl(this._self, this._then);

  final SimpleOptionModel _self;
  final $Res Function(SimpleOptionModel) _then;

/// Create a copy of SimpleOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? unit = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SimpleOptionModel].
extension SimpleOptionModelPatterns on SimpleOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimpleOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimpleOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimpleOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _SimpleOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimpleOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _SimpleOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? title,  String? unit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimpleOptionModel() when $default != null:
return $default(_that.id,_that.title,_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? title,  String? unit)  $default,) {final _that = this;
switch (_that) {
case _SimpleOptionModel():
return $default(_that.id,_that.title,_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? title,  String? unit)?  $default,) {final _that = this;
switch (_that) {
case _SimpleOptionModel() when $default != null:
return $default(_that.id,_that.title,_that.unit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SimpleOptionModel implements SimpleOptionModel {
  const _SimpleOptionModel({required this.id, this.title, this.unit});
  factory _SimpleOptionModel.fromJson(Map<String, dynamic> json) => _$SimpleOptionModelFromJson(json);

@override final  int id;
@override final  String? title;
@override final  String? unit;

/// Create a copy of SimpleOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimpleOptionModelCopyWith<_SimpleOptionModel> get copyWith => __$SimpleOptionModelCopyWithImpl<_SimpleOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SimpleOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimpleOptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.unit, unit) || other.unit == unit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,unit);

@override
String toString() {
  return 'SimpleOptionModel(id: $id, title: $title, unit: $unit)';
}


}

/// @nodoc
abstract mixin class _$SimpleOptionModelCopyWith<$Res> implements $SimpleOptionModelCopyWith<$Res> {
  factory _$SimpleOptionModelCopyWith(_SimpleOptionModel value, $Res Function(_SimpleOptionModel) _then) = __$SimpleOptionModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? title, String? unit
});




}
/// @nodoc
class __$SimpleOptionModelCopyWithImpl<$Res>
    implements _$SimpleOptionModelCopyWith<$Res> {
  __$SimpleOptionModelCopyWithImpl(this._self, this._then);

  final _SimpleOptionModel _self;
  final $Res Function(_SimpleOptionModel) _then;

/// Create a copy of SimpleOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? unit = freezed,}) {
  return _then(_SimpleOptionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,unit: freezed == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
