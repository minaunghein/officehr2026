// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nrc_township_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NrcRegionModel {

 int get nrcregioncodeid; List<String> get nrcregioncodes; List<String> get townships;
/// Create a copy of NrcRegionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NrcRegionModelCopyWith<NrcRegionModel> get copyWith => _$NrcRegionModelCopyWithImpl<NrcRegionModel>(this as NrcRegionModel, _$identity);

  /// Serializes this NrcRegionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NrcRegionModel&&(identical(other.nrcregioncodeid, nrcregioncodeid) || other.nrcregioncodeid == nrcregioncodeid)&&const DeepCollectionEquality().equals(other.nrcregioncodes, nrcregioncodes)&&const DeepCollectionEquality().equals(other.townships, townships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nrcregioncodeid,const DeepCollectionEquality().hash(nrcregioncodes),const DeepCollectionEquality().hash(townships));

@override
String toString() {
  return 'NrcRegionModel(nrcregioncodeid: $nrcregioncodeid, nrcregioncodes: $nrcregioncodes, townships: $townships)';
}


}

/// @nodoc
abstract mixin class $NrcRegionModelCopyWith<$Res>  {
  factory $NrcRegionModelCopyWith(NrcRegionModel value, $Res Function(NrcRegionModel) _then) = _$NrcRegionModelCopyWithImpl;
@useResult
$Res call({
 int nrcregioncodeid, List<String> nrcregioncodes, List<String> townships
});




}
/// @nodoc
class _$NrcRegionModelCopyWithImpl<$Res>
    implements $NrcRegionModelCopyWith<$Res> {
  _$NrcRegionModelCopyWithImpl(this._self, this._then);

  final NrcRegionModel _self;
  final $Res Function(NrcRegionModel) _then;

/// Create a copy of NrcRegionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nrcregioncodeid = null,Object? nrcregioncodes = null,Object? townships = null,}) {
  return _then(_self.copyWith(
nrcregioncodeid: null == nrcregioncodeid ? _self.nrcregioncodeid : nrcregioncodeid // ignore: cast_nullable_to_non_nullable
as int,nrcregioncodes: null == nrcregioncodes ? _self.nrcregioncodes : nrcregioncodes // ignore: cast_nullable_to_non_nullable
as List<String>,townships: null == townships ? _self.townships : townships // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [NrcRegionModel].
extension NrcRegionModelPatterns on NrcRegionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NrcRegionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NrcRegionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NrcRegionModel value)  $default,){
final _that = this;
switch (_that) {
case _NrcRegionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NrcRegionModel value)?  $default,){
final _that = this;
switch (_that) {
case _NrcRegionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int nrcregioncodeid,  List<String> nrcregioncodes,  List<String> townships)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NrcRegionModel() when $default != null:
return $default(_that.nrcregioncodeid,_that.nrcregioncodes,_that.townships);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int nrcregioncodeid,  List<String> nrcregioncodes,  List<String> townships)  $default,) {final _that = this;
switch (_that) {
case _NrcRegionModel():
return $default(_that.nrcregioncodeid,_that.nrcregioncodes,_that.townships);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int nrcregioncodeid,  List<String> nrcregioncodes,  List<String> townships)?  $default,) {final _that = this;
switch (_that) {
case _NrcRegionModel() when $default != null:
return $default(_that.nrcregioncodeid,_that.nrcregioncodes,_that.townships);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NrcRegionModel implements NrcRegionModel {
  const _NrcRegionModel({required this.nrcregioncodeid, required final  List<String> nrcregioncodes, required final  List<String> townships}): _nrcregioncodes = nrcregioncodes,_townships = townships;
  factory _NrcRegionModel.fromJson(Map<String, dynamic> json) => _$NrcRegionModelFromJson(json);

@override final  int nrcregioncodeid;
 final  List<String> _nrcregioncodes;
@override List<String> get nrcregioncodes {
  if (_nrcregioncodes is EqualUnmodifiableListView) return _nrcregioncodes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nrcregioncodes);
}

 final  List<String> _townships;
@override List<String> get townships {
  if (_townships is EqualUnmodifiableListView) return _townships;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_townships);
}


/// Create a copy of NrcRegionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NrcRegionModelCopyWith<_NrcRegionModel> get copyWith => __$NrcRegionModelCopyWithImpl<_NrcRegionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NrcRegionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NrcRegionModel&&(identical(other.nrcregioncodeid, nrcregioncodeid) || other.nrcregioncodeid == nrcregioncodeid)&&const DeepCollectionEquality().equals(other._nrcregioncodes, _nrcregioncodes)&&const DeepCollectionEquality().equals(other._townships, _townships));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nrcregioncodeid,const DeepCollectionEquality().hash(_nrcregioncodes),const DeepCollectionEquality().hash(_townships));

@override
String toString() {
  return 'NrcRegionModel(nrcregioncodeid: $nrcregioncodeid, nrcregioncodes: $nrcregioncodes, townships: $townships)';
}


}

/// @nodoc
abstract mixin class _$NrcRegionModelCopyWith<$Res> implements $NrcRegionModelCopyWith<$Res> {
  factory _$NrcRegionModelCopyWith(_NrcRegionModel value, $Res Function(_NrcRegionModel) _then) = __$NrcRegionModelCopyWithImpl;
@override @useResult
$Res call({
 int nrcregioncodeid, List<String> nrcregioncodes, List<String> townships
});




}
/// @nodoc
class __$NrcRegionModelCopyWithImpl<$Res>
    implements _$NrcRegionModelCopyWith<$Res> {
  __$NrcRegionModelCopyWithImpl(this._self, this._then);

  final _NrcRegionModel _self;
  final $Res Function(_NrcRegionModel) _then;

/// Create a copy of NrcRegionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nrcregioncodeid = null,Object? nrcregioncodes = null,Object? townships = null,}) {
  return _then(_NrcRegionModel(
nrcregioncodeid: null == nrcregioncodeid ? _self.nrcregioncodeid : nrcregioncodeid // ignore: cast_nullable_to_non_nullable
as int,nrcregioncodes: null == nrcregioncodes ? _self._nrcregioncodes : nrcregioncodes // ignore: cast_nullable_to_non_nullable
as List<String>,townships: null == townships ? _self._townships : townships // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
