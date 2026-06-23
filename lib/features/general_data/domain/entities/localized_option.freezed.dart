// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'localized_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LocalizedOption {

 dynamic get id; List<String> get titles;
/// Create a copy of LocalizedOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocalizedOptionCopyWith<LocalizedOption> get copyWith => _$LocalizedOptionCopyWithImpl<LocalizedOption>(this as LocalizedOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocalizedOption&&const DeepCollectionEquality().equals(other.id, id)&&const DeepCollectionEquality().equals(other.titles, titles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id),const DeepCollectionEquality().hash(titles));

@override
String toString() {
  return 'LocalizedOption(id: $id, titles: $titles)';
}


}

/// @nodoc
abstract mixin class $LocalizedOptionCopyWith<$Res>  {
  factory $LocalizedOptionCopyWith(LocalizedOption value, $Res Function(LocalizedOption) _then) = _$LocalizedOptionCopyWithImpl;
@useResult
$Res call({
 dynamic id, List<String> titles
});




}
/// @nodoc
class _$LocalizedOptionCopyWithImpl<$Res>
    implements $LocalizedOptionCopyWith<$Res> {
  _$LocalizedOptionCopyWithImpl(this._self, this._then);

  final LocalizedOption _self;
  final $Res Function(LocalizedOption) _then;

/// Create a copy of LocalizedOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? titles = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [LocalizedOption].
extension LocalizedOptionPatterns on LocalizedOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocalizedOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocalizedOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocalizedOption value)  $default,){
final _that = this;
switch (_that) {
case _LocalizedOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocalizedOption value)?  $default,){
final _that = this;
switch (_that) {
case _LocalizedOption() when $default != null:
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
case _LocalizedOption() when $default != null:
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
case _LocalizedOption():
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
case _LocalizedOption() when $default != null:
return $default(_that.id,_that.titles);case _:
  return null;

}
}

}

/// @nodoc


class _LocalizedOption implements LocalizedOption {
  const _LocalizedOption({required this.id, required final  List<String> titles}): _titles = titles;
  

@override final  dynamic id;
 final  List<String> _titles;
@override List<String> get titles {
  if (_titles is EqualUnmodifiableListView) return _titles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titles);
}


/// Create a copy of LocalizedOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocalizedOptionCopyWith<_LocalizedOption> get copyWith => __$LocalizedOptionCopyWithImpl<_LocalizedOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocalizedOption&&const DeepCollectionEquality().equals(other.id, id)&&const DeepCollectionEquality().equals(other._titles, _titles));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id),const DeepCollectionEquality().hash(_titles));

@override
String toString() {
  return 'LocalizedOption(id: $id, titles: $titles)';
}


}

/// @nodoc
abstract mixin class _$LocalizedOptionCopyWith<$Res> implements $LocalizedOptionCopyWith<$Res> {
  factory _$LocalizedOptionCopyWith(_LocalizedOption value, $Res Function(_LocalizedOption) _then) = __$LocalizedOptionCopyWithImpl;
@override @useResult
$Res call({
 dynamic id, List<String> titles
});




}
/// @nodoc
class __$LocalizedOptionCopyWithImpl<$Res>
    implements _$LocalizedOptionCopyWith<$Res> {
  __$LocalizedOptionCopyWithImpl(this._self, this._then);

  final _LocalizedOption _self;
  final $Res Function(_LocalizedOption) _then;

/// Create a copy of LocalizedOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? titles = null,}) {
  return _then(_LocalizedOption(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,titles: null == titles ? _self._titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
