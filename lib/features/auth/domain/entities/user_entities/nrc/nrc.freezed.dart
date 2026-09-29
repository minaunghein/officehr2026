// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nrc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Nrc {

 String get region; String get township; String get type; String get numbers;
/// Create a copy of Nrc
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NrcCopyWith<Nrc> get copyWith => _$NrcCopyWithImpl<Nrc>(this as Nrc, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Nrc&&(identical(other.region, region) || other.region == region)&&(identical(other.township, township) || other.township == township)&&(identical(other.type, type) || other.type == type)&&(identical(other.numbers, numbers) || other.numbers == numbers));
}


@override
int get hashCode => Object.hash(runtimeType,region,township,type,numbers);

@override
String toString() {
  return 'Nrc(region: $region, township: $township, type: $type, numbers: $numbers)';
}


}

/// @nodoc
abstract mixin class $NrcCopyWith<$Res>  {
  factory $NrcCopyWith(Nrc value, $Res Function(Nrc) _then) = _$NrcCopyWithImpl;
@useResult
$Res call({
 String region, String township, String type, String numbers
});




}
/// @nodoc
class _$NrcCopyWithImpl<$Res>
    implements $NrcCopyWith<$Res> {
  _$NrcCopyWithImpl(this._self, this._then);

  final Nrc _self;
  final $Res Function(Nrc) _then;

/// Create a copy of Nrc
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? region = null,Object? township = null,Object? type = null,Object? numbers = null,}) {
  return _then(_self.copyWith(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,township: null == township ? _self.township : township // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,numbers: null == numbers ? _self.numbers : numbers // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Nrc].
extension NrcPatterns on Nrc {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Nrc value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Nrc() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Nrc value)  $default,){
final _that = this;
switch (_that) {
case _Nrc():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Nrc value)?  $default,){
final _that = this;
switch (_that) {
case _Nrc() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String region,  String township,  String type,  String numbers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Nrc() when $default != null:
return $default(_that.region,_that.township,_that.type,_that.numbers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String region,  String township,  String type,  String numbers)  $default,) {final _that = this;
switch (_that) {
case _Nrc():
return $default(_that.region,_that.township,_that.type,_that.numbers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String region,  String township,  String type,  String numbers)?  $default,) {final _that = this;
switch (_that) {
case _Nrc() when $default != null:
return $default(_that.region,_that.township,_that.type,_that.numbers);case _:
  return null;

}
}

}

/// @nodoc


class _Nrc implements Nrc {
  const _Nrc({required this.region, required this.township, required this.type, required this.numbers});
  

@override final  String region;
@override final  String township;
@override final  String type;
@override final  String numbers;

/// Create a copy of Nrc
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NrcCopyWith<_Nrc> get copyWith => __$NrcCopyWithImpl<_Nrc>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Nrc&&(identical(other.region, region) || other.region == region)&&(identical(other.township, township) || other.township == township)&&(identical(other.type, type) || other.type == type)&&(identical(other.numbers, numbers) || other.numbers == numbers));
}


@override
int get hashCode => Object.hash(runtimeType,region,township,type,numbers);

@override
String toString() {
  return 'Nrc(region: $region, township: $township, type: $type, numbers: $numbers)';
}


}

/// @nodoc
abstract mixin class _$NrcCopyWith<$Res> implements $NrcCopyWith<$Res> {
  factory _$NrcCopyWith(_Nrc value, $Res Function(_Nrc) _then) = __$NrcCopyWithImpl;
@override @useResult
$Res call({
 String region, String township, String type, String numbers
});




}
/// @nodoc
class __$NrcCopyWithImpl<$Res>
    implements _$NrcCopyWith<$Res> {
  __$NrcCopyWithImpl(this._self, this._then);

  final _Nrc _self;
  final $Res Function(_Nrc) _then;

/// Create a copy of Nrc
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? region = null,Object? township = null,Object? type = null,Object? numbers = null,}) {
  return _then(_Nrc(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,township: null == township ? _self.township : township // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,numbers: null == numbers ? _self.numbers : numbers // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
