// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FamilyInfoModel {

@JsonKey(name: '_id') String get id; List<String> get fathernames; List<String> get mothernames; int get nofm;
/// Create a copy of FamilyInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyInfoModelCopyWith<FamilyInfoModel> get copyWith => _$FamilyInfoModelCopyWithImpl<FamilyInfoModel>(this as FamilyInfoModel, _$identity);

  /// Serializes this FamilyInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyInfoModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.fathernames, fathernames)&&const DeepCollectionEquality().equals(other.mothernames, mothernames)&&(identical(other.nofm, nofm) || other.nofm == nofm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(fathernames),const DeepCollectionEquality().hash(mothernames),nofm);

@override
String toString() {
  return 'FamilyInfoModel(id: $id, fathernames: $fathernames, mothernames: $mothernames, nofm: $nofm)';
}


}

/// @nodoc
abstract mixin class $FamilyInfoModelCopyWith<$Res>  {
  factory $FamilyInfoModelCopyWith(FamilyInfoModel value, $Res Function(FamilyInfoModel) _then) = _$FamilyInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, List<String> fathernames, List<String> mothernames, int nofm
});




}
/// @nodoc
class _$FamilyInfoModelCopyWithImpl<$Res>
    implements $FamilyInfoModelCopyWith<$Res> {
  _$FamilyInfoModelCopyWithImpl(this._self, this._then);

  final FamilyInfoModel _self;
  final $Res Function(FamilyInfoModel) _then;

/// Create a copy of FamilyInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fathernames = null,Object? mothernames = null,Object? nofm = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fathernames: null == fathernames ? _self.fathernames : fathernames // ignore: cast_nullable_to_non_nullable
as List<String>,mothernames: null == mothernames ? _self.mothernames : mothernames // ignore: cast_nullable_to_non_nullable
as List<String>,nofm: null == nofm ? _self.nofm : nofm // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FamilyInfoModel].
extension FamilyInfoModelPatterns on FamilyInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FamilyInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FamilyInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FamilyInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _FamilyInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FamilyInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _FamilyInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  List<String> fathernames,  List<String> mothernames,  int nofm)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyInfoModel() when $default != null:
return $default(_that.id,_that.fathernames,_that.mothernames,_that.nofm);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  List<String> fathernames,  List<String> mothernames,  int nofm)  $default,) {final _that = this;
switch (_that) {
case _FamilyInfoModel():
return $default(_that.id,_that.fathernames,_that.mothernames,_that.nofm);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  List<String> fathernames,  List<String> mothernames,  int nofm)?  $default,) {final _that = this;
switch (_that) {
case _FamilyInfoModel() when $default != null:
return $default(_that.id,_that.fathernames,_that.mothernames,_that.nofm);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FamilyInfoModel implements FamilyInfoModel {
  const _FamilyInfoModel({@JsonKey(name: '_id') required this.id, required final  List<String> fathernames, required final  List<String> mothernames, required this.nofm}): _fathernames = fathernames,_mothernames = mothernames;
  factory _FamilyInfoModel.fromJson(Map<String, dynamic> json) => _$FamilyInfoModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
 final  List<String> _fathernames;
@override List<String> get fathernames {
  if (_fathernames is EqualUnmodifiableListView) return _fathernames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fathernames);
}

 final  List<String> _mothernames;
@override List<String> get mothernames {
  if (_mothernames is EqualUnmodifiableListView) return _mothernames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mothernames);
}

@override final  int nofm;

/// Create a copy of FamilyInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyInfoModelCopyWith<_FamilyInfoModel> get copyWith => __$FamilyInfoModelCopyWithImpl<_FamilyInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FamilyInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyInfoModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._fathernames, _fathernames)&&const DeepCollectionEquality().equals(other._mothernames, _mothernames)&&(identical(other.nofm, nofm) || other.nofm == nofm));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_fathernames),const DeepCollectionEquality().hash(_mothernames),nofm);

@override
String toString() {
  return 'FamilyInfoModel(id: $id, fathernames: $fathernames, mothernames: $mothernames, nofm: $nofm)';
}


}

/// @nodoc
abstract mixin class _$FamilyInfoModelCopyWith<$Res> implements $FamilyInfoModelCopyWith<$Res> {
  factory _$FamilyInfoModelCopyWith(_FamilyInfoModel value, $Res Function(_FamilyInfoModel) _then) = __$FamilyInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, List<String> fathernames, List<String> mothernames, int nofm
});




}
/// @nodoc
class __$FamilyInfoModelCopyWithImpl<$Res>
    implements _$FamilyInfoModelCopyWith<$Res> {
  __$FamilyInfoModelCopyWithImpl(this._self, this._then);

  final _FamilyInfoModel _self;
  final $Res Function(_FamilyInfoModel) _then;

/// Create a copy of FamilyInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fathernames = null,Object? mothernames = null,Object? nofm = null,}) {
  return _then(_FamilyInfoModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fathernames: null == fathernames ? _self._fathernames : fathernames // ignore: cast_nullable_to_non_nullable
as List<String>,mothernames: null == mothernames ? _self._mothernames : mothernames // ignore: cast_nullable_to_non_nullable
as List<String>,nofm: null == nofm ? _self.nofm : nofm // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
