// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nrc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NrcModel {

 String get region; String get township; String get type; String get numbers;
/// Create a copy of NrcModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NrcModelCopyWith<NrcModel> get copyWith => _$NrcModelCopyWithImpl<NrcModel>(this as NrcModel, _$identity);

  /// Serializes this NrcModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NrcModel&&(identical(other.region, region) || other.region == region)&&(identical(other.township, township) || other.township == township)&&(identical(other.type, type) || other.type == type)&&(identical(other.numbers, numbers) || other.numbers == numbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,region,township,type,numbers);

@override
String toString() {
  return 'NrcModel(region: $region, township: $township, type: $type, numbers: $numbers)';
}


}

/// @nodoc
abstract mixin class $NrcModelCopyWith<$Res>  {
  factory $NrcModelCopyWith(NrcModel value, $Res Function(NrcModel) _then) = _$NrcModelCopyWithImpl;
@useResult
$Res call({
 String region, String township, String type, String numbers
});




}
/// @nodoc
class _$NrcModelCopyWithImpl<$Res>
    implements $NrcModelCopyWith<$Res> {
  _$NrcModelCopyWithImpl(this._self, this._then);

  final NrcModel _self;
  final $Res Function(NrcModel) _then;

/// Create a copy of NrcModel
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


/// Adds pattern-matching-related methods to [NrcModel].
extension NrcModelPatterns on NrcModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NrcModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NrcModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NrcModel value)  $default,){
final _that = this;
switch (_that) {
case _NrcModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NrcModel value)?  $default,){
final _that = this;
switch (_that) {
case _NrcModel() when $default != null:
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
case _NrcModel() when $default != null:
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
case _NrcModel():
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
case _NrcModel() when $default != null:
return $default(_that.region,_that.township,_that.type,_that.numbers);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NrcModel extends NrcModel {
  const _NrcModel({this.region = '', this.township = '', this.type = '', this.numbers = ''}): super._();
  factory _NrcModel.fromJson(Map<String, dynamic> json) => _$NrcModelFromJson(json);

@override@JsonKey() final  String region;
@override@JsonKey() final  String township;
@override@JsonKey() final  String type;
@override@JsonKey() final  String numbers;

/// Create a copy of NrcModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NrcModelCopyWith<_NrcModel> get copyWith => __$NrcModelCopyWithImpl<_NrcModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NrcModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NrcModel&&(identical(other.region, region) || other.region == region)&&(identical(other.township, township) || other.township == township)&&(identical(other.type, type) || other.type == type)&&(identical(other.numbers, numbers) || other.numbers == numbers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,region,township,type,numbers);

@override
String toString() {
  return 'NrcModel(region: $region, township: $township, type: $type, numbers: $numbers)';
}


}

/// @nodoc
abstract mixin class _$NrcModelCopyWith<$Res> implements $NrcModelCopyWith<$Res> {
  factory _$NrcModelCopyWith(_NrcModel value, $Res Function(_NrcModel) _then) = __$NrcModelCopyWithImpl;
@override @useResult
$Res call({
 String region, String township, String type, String numbers
});




}
/// @nodoc
class __$NrcModelCopyWithImpl<$Res>
    implements _$NrcModelCopyWith<$Res> {
  __$NrcModelCopyWithImpl(this._self, this._then);

  final _NrcModel _self;
  final $Res Function(_NrcModel) _then;

/// Create a copy of NrcModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? region = null,Object? township = null,Object? type = null,Object? numbers = null,}) {
  return _then(_NrcModel(
region: null == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String,township: null == township ? _self.township : township // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,numbers: null == numbers ? _self.numbers : numbers // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
