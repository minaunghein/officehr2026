// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nrc_region.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NrcRegion {

 int get regionCodeId; List<String> get regionCodes; List<String> get townships;
/// Create a copy of NrcRegion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NrcRegionCopyWith<NrcRegion> get copyWith => _$NrcRegionCopyWithImpl<NrcRegion>(this as NrcRegion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NrcRegion&&(identical(other.regionCodeId, regionCodeId) || other.regionCodeId == regionCodeId)&&const DeepCollectionEquality().equals(other.regionCodes, regionCodes)&&const DeepCollectionEquality().equals(other.townships, townships));
}


@override
int get hashCode => Object.hash(runtimeType,regionCodeId,const DeepCollectionEquality().hash(regionCodes),const DeepCollectionEquality().hash(townships));

@override
String toString() {
  return 'NrcRegion(regionCodeId: $regionCodeId, regionCodes: $regionCodes, townships: $townships)';
}


}

/// @nodoc
abstract mixin class $NrcRegionCopyWith<$Res>  {
  factory $NrcRegionCopyWith(NrcRegion value, $Res Function(NrcRegion) _then) = _$NrcRegionCopyWithImpl;
@useResult
$Res call({
 int regionCodeId, List<String> regionCodes, List<String> townships
});




}
/// @nodoc
class _$NrcRegionCopyWithImpl<$Res>
    implements $NrcRegionCopyWith<$Res> {
  _$NrcRegionCopyWithImpl(this._self, this._then);

  final NrcRegion _self;
  final $Res Function(NrcRegion) _then;

/// Create a copy of NrcRegion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? regionCodeId = null,Object? regionCodes = null,Object? townships = null,}) {
  return _then(_self.copyWith(
regionCodeId: null == regionCodeId ? _self.regionCodeId : regionCodeId // ignore: cast_nullable_to_non_nullable
as int,regionCodes: null == regionCodes ? _self.regionCodes : regionCodes // ignore: cast_nullable_to_non_nullable
as List<String>,townships: null == townships ? _self.townships : townships // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [NrcRegion].
extension NrcRegionPatterns on NrcRegion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NrcRegion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NrcRegion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NrcRegion value)  $default,){
final _that = this;
switch (_that) {
case _NrcRegion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NrcRegion value)?  $default,){
final _that = this;
switch (_that) {
case _NrcRegion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int regionCodeId,  List<String> regionCodes,  List<String> townships)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NrcRegion() when $default != null:
return $default(_that.regionCodeId,_that.regionCodes,_that.townships);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int regionCodeId,  List<String> regionCodes,  List<String> townships)  $default,) {final _that = this;
switch (_that) {
case _NrcRegion():
return $default(_that.regionCodeId,_that.regionCodes,_that.townships);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int regionCodeId,  List<String> regionCodes,  List<String> townships)?  $default,) {final _that = this;
switch (_that) {
case _NrcRegion() when $default != null:
return $default(_that.regionCodeId,_that.regionCodes,_that.townships);case _:
  return null;

}
}

}

/// @nodoc


class _NrcRegion implements NrcRegion {
  const _NrcRegion({required this.regionCodeId, required final  List<String> regionCodes, required final  List<String> townships}): _regionCodes = regionCodes,_townships = townships;
  

@override final  int regionCodeId;
 final  List<String> _regionCodes;
@override List<String> get regionCodes {
  if (_regionCodes is EqualUnmodifiableListView) return _regionCodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_regionCodes);
}

 final  List<String> _townships;
@override List<String> get townships {
  if (_townships is EqualUnmodifiableListView) return _townships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_townships);
}


/// Create a copy of NrcRegion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NrcRegionCopyWith<_NrcRegion> get copyWith => __$NrcRegionCopyWithImpl<_NrcRegion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NrcRegion&&(identical(other.regionCodeId, regionCodeId) || other.regionCodeId == regionCodeId)&&const DeepCollectionEquality().equals(other._regionCodes, _regionCodes)&&const DeepCollectionEquality().equals(other._townships, _townships));
}


@override
int get hashCode => Object.hash(runtimeType,regionCodeId,const DeepCollectionEquality().hash(_regionCodes),const DeepCollectionEquality().hash(_townships));

@override
String toString() {
  return 'NrcRegion(regionCodeId: $regionCodeId, regionCodes: $regionCodes, townships: $townships)';
}


}

/// @nodoc
abstract mixin class _$NrcRegionCopyWith<$Res> implements $NrcRegionCopyWith<$Res> {
  factory _$NrcRegionCopyWith(_NrcRegion value, $Res Function(_NrcRegion) _then) = __$NrcRegionCopyWithImpl;
@override @useResult
$Res call({
 int regionCodeId, List<String> regionCodes, List<String> townships
});




}
/// @nodoc
class __$NrcRegionCopyWithImpl<$Res>
    implements _$NrcRegionCopyWith<$Res> {
  __$NrcRegionCopyWithImpl(this._self, this._then);

  final _NrcRegion _self;
  final $Res Function(_NrcRegion) _then;

/// Create a copy of NrcRegion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? regionCodeId = null,Object? regionCodes = null,Object? townships = null,}) {
  return _then(_NrcRegion(
regionCodeId: null == regionCodeId ? _self.regionCodeId : regionCodeId // ignore: cast_nullable_to_non_nullable
as int,regionCodes: null == regionCodes ? _self._regionCodes : regionCodes // ignore: cast_nullable_to_non_nullable
as List<String>,townships: null == townships ? _self._townships : townships // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
