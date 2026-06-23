// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localized_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocalizedOptionModel {

 dynamic get id; List<String> get titles;
/// Create a copy of LocalizedOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedOptionModelCopyWith<LocalizedOptionModel> get copyWith => _$LocalizedOptionModelCopyWithImpl<LocalizedOptionModel>(this as LocalizedOptionModel, _$identity);

  /// Serializes this LocalizedOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedOptionModel&&const DeepCollectionEquality().equals(other.id, id)&&const DeepCollectionEquality().equals(other.titles, titles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id),const DeepCollectionEquality().hash(titles));

@override
String toString() {
  return 'LocalizedOptionModel(id: $id, titles: $titles)';
}


}

/// @nodoc
abstract mixin class $LocalizedOptionModelCopyWith<$Res>  {
  factory $LocalizedOptionModelCopyWith(LocalizedOptionModel value, $Res Function(LocalizedOptionModel) _then) = _$LocalizedOptionModelCopyWithImpl;
@useResult
$Res call({
 dynamic id, List<String> titles
});




}
/// @nodoc
class _$LocalizedOptionModelCopyWithImpl<$Res>
    implements $LocalizedOptionModelCopyWith<$Res> {
  _$LocalizedOptionModelCopyWithImpl(this._self, this._then);

  final LocalizedOptionModel _self;
  final $Res Function(LocalizedOptionModel) _then;

/// Create a copy of LocalizedOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? titles = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedOptionModel].
extension LocalizedOptionModelPatterns on LocalizedOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic id,  List<String> titles)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocalizedOptionModel() when $default != null:
return $default(_that.id,_that.titles);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic id,  List<String> titles)  $default,) {final _that = this;
switch (_that) {
case _LocalizedOptionModel():
return $default(_that.id,_that.titles);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic id,  List<String> titles)?  $default,) {final _that = this;
switch (_that) {
case _LocalizedOptionModel() when $default != null:
return $default(_that.id,_that.titles);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocalizedOptionModel implements LocalizedOptionModel {
  const _LocalizedOptionModel({required this.id, required final  List<String> titles}): _titles = titles;
  factory _LocalizedOptionModel.fromJson(Map<String, dynamic> json) => _$LocalizedOptionModelFromJson(json);

@override final  dynamic id;
 final  List<String> _titles;
@override List<String> get titles {
  if (_titles is EqualUnmodifiableListView) return _titles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titles);
}


/// Create a copy of LocalizedOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedOptionModelCopyWith<_LocalizedOptionModel> get copyWith => __$LocalizedOptionModelCopyWithImpl<_LocalizedOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocalizedOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedOptionModel&&const DeepCollectionEquality().equals(other.id, id)&&const DeepCollectionEquality().equals(other._titles, _titles));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id),const DeepCollectionEquality().hash(_titles));

@override
String toString() {
  return 'LocalizedOptionModel(id: $id, titles: $titles)';
}


}

/// @nodoc
abstract mixin class _$LocalizedOptionModelCopyWith<$Res> implements $LocalizedOptionModelCopyWith<$Res> {
  factory _$LocalizedOptionModelCopyWith(_LocalizedOptionModel value, $Res Function(_LocalizedOptionModel) _then) = __$LocalizedOptionModelCopyWithImpl;
@override @useResult
$Res call({
 dynamic id, List<String> titles
});




}
/// @nodoc
class __$LocalizedOptionModelCopyWithImpl<$Res>
    implements _$LocalizedOptionModelCopyWith<$Res> {
  __$LocalizedOptionModelCopyWithImpl(this._self, this._then);

  final _LocalizedOptionModel _self;
  final $Res Function(_LocalizedOptionModel) _then;

/// Create a copy of LocalizedOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? titles = null,}) {
  return _then(_LocalizedOptionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,titles: null == titles ? _self._titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
