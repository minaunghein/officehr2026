// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FamilyInfo {

 String get id; List<String> get fatherNames; List<String> get motherNames; int get numberOfFamilyMembers;
/// Create a copy of FamilyInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FamilyInfoCopyWith<FamilyInfo> get copyWith => _$FamilyInfoCopyWithImpl<FamilyInfo>(this as FamilyInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FamilyInfo&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.fatherNames, fatherNames)&&const DeepCollectionEquality().equals(other.motherNames, motherNames)&&(identical(other.numberOfFamilyMembers, numberOfFamilyMembers) || other.numberOfFamilyMembers == numberOfFamilyMembers));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(fatherNames),const DeepCollectionEquality().hash(motherNames),numberOfFamilyMembers);

@override
String toString() {
  return 'FamilyInfo(id: $id, fatherNames: $fatherNames, motherNames: $motherNames, numberOfFamilyMembers: $numberOfFamilyMembers)';
}


}

/// @nodoc
abstract mixin class $FamilyInfoCopyWith<$Res>  {
  factory $FamilyInfoCopyWith(FamilyInfo value, $Res Function(FamilyInfo) _then) = _$FamilyInfoCopyWithImpl;
@useResult
$Res call({
 String id, List<String> fatherNames, List<String> motherNames, int numberOfFamilyMembers
});




}
/// @nodoc
class _$FamilyInfoCopyWithImpl<$Res>
    implements $FamilyInfoCopyWith<$Res> {
  _$FamilyInfoCopyWithImpl(this._self, this._then);

  final FamilyInfo _self;
  final $Res Function(FamilyInfo) _then;

/// Create a copy of FamilyInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fatherNames = null,Object? motherNames = null,Object? numberOfFamilyMembers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fatherNames: null == fatherNames ? _self.fatherNames : fatherNames // ignore: cast_nullable_to_non_nullable
as List<String>,motherNames: null == motherNames ? _self.motherNames : motherNames // ignore: cast_nullable_to_non_nullable
as List<String>,numberOfFamilyMembers: null == numberOfFamilyMembers ? _self.numberOfFamilyMembers : numberOfFamilyMembers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FamilyInfo].
extension FamilyInfoPatterns on FamilyInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FamilyInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FamilyInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FamilyInfo value)  $default,){
final _that = this;
switch (_that) {
case _FamilyInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FamilyInfo value)?  $default,){
final _that = this;
switch (_that) {
case _FamilyInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  List<String> fatherNames,  List<String> motherNames,  int numberOfFamilyMembers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FamilyInfo() when $default != null:
return $default(_that.id,_that.fatherNames,_that.motherNames,_that.numberOfFamilyMembers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  List<String> fatherNames,  List<String> motherNames,  int numberOfFamilyMembers)  $default,) {final _that = this;
switch (_that) {
case _FamilyInfo():
return $default(_that.id,_that.fatherNames,_that.motherNames,_that.numberOfFamilyMembers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  List<String> fatherNames,  List<String> motherNames,  int numberOfFamilyMembers)?  $default,) {final _that = this;
switch (_that) {
case _FamilyInfo() when $default != null:
return $default(_that.id,_that.fatherNames,_that.motherNames,_that.numberOfFamilyMembers);case _:
  return null;

}
}

}

/// @nodoc


class _FamilyInfo implements FamilyInfo {
  const _FamilyInfo({required this.id, required final  List<String> fatherNames, required final  List<String> motherNames, required this.numberOfFamilyMembers}): _fatherNames = fatherNames,_motherNames = motherNames;
  

@override final  String id;
 final  List<String> _fatherNames;
@override List<String> get fatherNames {
  if (_fatherNames is EqualUnmodifiableListView) return _fatherNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fatherNames);
}

 final  List<String> _motherNames;
@override List<String> get motherNames {
  if (_motherNames is EqualUnmodifiableListView) return _motherNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_motherNames);
}

@override final  int numberOfFamilyMembers;

/// Create a copy of FamilyInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FamilyInfoCopyWith<_FamilyInfo> get copyWith => __$FamilyInfoCopyWithImpl<_FamilyInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FamilyInfo&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._fatherNames, _fatherNames)&&const DeepCollectionEquality().equals(other._motherNames, _motherNames)&&(identical(other.numberOfFamilyMembers, numberOfFamilyMembers) || other.numberOfFamilyMembers == numberOfFamilyMembers));
}


@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_fatherNames),const DeepCollectionEquality().hash(_motherNames),numberOfFamilyMembers);

@override
String toString() {
  return 'FamilyInfo(id: $id, fatherNames: $fatherNames, motherNames: $motherNames, numberOfFamilyMembers: $numberOfFamilyMembers)';
}


}

/// @nodoc
abstract mixin class _$FamilyInfoCopyWith<$Res> implements $FamilyInfoCopyWith<$Res> {
  factory _$FamilyInfoCopyWith(_FamilyInfo value, $Res Function(_FamilyInfo) _then) = __$FamilyInfoCopyWithImpl;
@override @useResult
$Res call({
 String id, List<String> fatherNames, List<String> motherNames, int numberOfFamilyMembers
});




}
/// @nodoc
class __$FamilyInfoCopyWithImpl<$Res>
    implements _$FamilyInfoCopyWith<$Res> {
  __$FamilyInfoCopyWithImpl(this._self, this._then);

  final _FamilyInfo _self;
  final $Res Function(_FamilyInfo) _then;

/// Create a copy of FamilyInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fatherNames = null,Object? motherNames = null,Object? numberOfFamilyMembers = null,}) {
  return _then(_FamilyInfo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fatherNames: null == fatherNames ? _self._fatherNames : fatherNames // ignore: cast_nullable_to_non_nullable
as List<String>,motherNames: null == motherNames ? _self._motherNames : motherNames // ignore: cast_nullable_to_non_nullable
as List<String>,numberOfFamilyMembers: null == numberOfFamilyMembers ? _self.numberOfFamilyMembers : numberOfFamilyMembers // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
