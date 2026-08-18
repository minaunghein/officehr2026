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

 List<dynamic> get members;
/// Create a copy of FamilyInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyInfoModelCopyWith<FamilyInfoModel> get copyWith => _$FamilyInfoModelCopyWithImpl<FamilyInfoModel>(this as FamilyInfoModel, _$identity);

  /// Serializes this FamilyInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyInfoModel&&const DeepCollectionEquality().equals(other.members, members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(members));

@override
String toString() {
  return 'FamilyInfoModel(members: $members)';
}


}

/// @nodoc
abstract mixin class $FamilyInfoModelCopyWith<$Res>  {
  factory $FamilyInfoModelCopyWith(FamilyInfoModel value, $Res Function(FamilyInfoModel) _then) = _$FamilyInfoModelCopyWithImpl;
@useResult
$Res call({
 List<dynamic> members
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
@pragma('vm:prefer-inline') @override $Res call({Object? members = null,}) {
  return _then(_self.copyWith(
members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<dynamic> members)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyInfoModel() when $default != null:
return $default(_that.members);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<dynamic> members)  $default,) {final _that = this;
switch (_that) {
case _FamilyInfoModel():
return $default(_that.members);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<dynamic> members)?  $default,) {final _that = this;
switch (_that) {
case _FamilyInfoModel() when $default != null:
return $default(_that.members);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FamilyInfoModel extends FamilyInfoModel {
  const _FamilyInfoModel({final  List<dynamic> members = const <dynamic>[]}): _members = members,super._();
  factory _FamilyInfoModel.fromJson(Map<String, dynamic> json) => _$FamilyInfoModelFromJson(json);

 final  List<dynamic> _members;
@override@JsonKey() List<dynamic> get members {
  if (_members is EqualUnmodifiableListView) return _members;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_members);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyInfoModel&&const DeepCollectionEquality().equals(other._members, _members));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_members));

@override
String toString() {
  return 'FamilyInfoModel(members: $members)';
}


}

/// @nodoc
abstract mixin class _$FamilyInfoModelCopyWith<$Res> implements $FamilyInfoModelCopyWith<$Res> {
  factory _$FamilyInfoModelCopyWith(_FamilyInfoModel value, $Res Function(_FamilyInfoModel) _then) = __$FamilyInfoModelCopyWithImpl;
@override @useResult
$Res call({
 List<dynamic> members
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
@override @pragma('vm:prefer-inline') $Res call({Object? members = null,}) {
  return _then(_FamilyInfoModel(
members: null == members ? _self._members : members // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
