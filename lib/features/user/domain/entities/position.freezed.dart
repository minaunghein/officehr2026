// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Position {

 String get id; String get companyId; List<String> get titles; String get shortCode; int get sortOrder; int get rank; String get remarks; List<String> get tags; String get createdAt; String get updatedAt;
/// Create a copy of Position
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PositionCopyWith<Position> get copyWith => _$PositionCopyWithImpl<Position>(this as Position, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Position&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&const DeepCollectionEquality().equals(other.titles, titles)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,const DeepCollectionEquality().hash(titles),shortCode,sortOrder,rank,remarks,const DeepCollectionEquality().hash(tags),createdAt,updatedAt);

@override
String toString() {
  return 'Position(id: $id, companyId: $companyId, titles: $titles, shortCode: $shortCode, sortOrder: $sortOrder, rank: $rank, remarks: $remarks, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PositionCopyWith<$Res>  {
  factory $PositionCopyWith(Position value, $Res Function(Position) _then) = _$PositionCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, List<String> titles, String shortCode, int sortOrder, int rank, String remarks, List<String> tags, String createdAt, String updatedAt
});




}
/// @nodoc
class _$PositionCopyWithImpl<$Res>
    implements $PositionCopyWith<$Res> {
  _$PositionCopyWithImpl(this._self, this._then);

  final Position _self;
  final $Res Function(Position) _then;

/// Create a copy of Position
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? titles = null,Object? shortCode = null,Object? sortOrder = null,Object? rank = null,Object? remarks = null,Object? tags = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Position].
extension PositionPatterns on Position {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Position value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Position() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Position value)  $default,){
final _that = this;
switch (_that) {
case _Position():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Position value)?  $default,){
final _that = this;
switch (_that) {
case _Position() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  List<String> titles,  String shortCode,  int sortOrder,  int rank,  String remarks,  List<String> tags,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Position() when $default != null:
return $default(_that.id,_that.companyId,_that.titles,_that.shortCode,_that.sortOrder,_that.rank,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  List<String> titles,  String shortCode,  int sortOrder,  int rank,  String remarks,  List<String> tags,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Position():
return $default(_that.id,_that.companyId,_that.titles,_that.shortCode,_that.sortOrder,_that.rank,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  List<String> titles,  String shortCode,  int sortOrder,  int rank,  String remarks,  List<String> tags,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Position() when $default != null:
return $default(_that.id,_that.companyId,_that.titles,_that.shortCode,_that.sortOrder,_that.rank,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Position implements Position {
  const _Position({required this.id, required this.companyId, required final  List<String> titles, required this.shortCode, required this.sortOrder, required this.rank, required this.remarks, required final  List<String> tags, required this.createdAt, required this.updatedAt}): _titles = titles,_tags = tags;
  

@override final  String id;
@override final  String companyId;
 final  List<String> _titles;
@override List<String> get titles {
  if (_titles is EqualUnmodifiableListView) return _titles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titles);
}

@override final  String shortCode;
@override final  int sortOrder;
@override final  int rank;
@override final  String remarks;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of Position
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PositionCopyWith<_Position> get copyWith => __$PositionCopyWithImpl<_Position>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Position&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&const DeepCollectionEquality().equals(other._titles, _titles)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.rank, rank) || other.rank == rank)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,const DeepCollectionEquality().hash(_titles),shortCode,sortOrder,rank,remarks,const DeepCollectionEquality().hash(_tags),createdAt,updatedAt);

@override
String toString() {
  return 'Position(id: $id, companyId: $companyId, titles: $titles, shortCode: $shortCode, sortOrder: $sortOrder, rank: $rank, remarks: $remarks, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PositionCopyWith<$Res> implements $PositionCopyWith<$Res> {
  factory _$PositionCopyWith(_Position value, $Res Function(_Position) _then) = __$PositionCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, List<String> titles, String shortCode, int sortOrder, int rank, String remarks, List<String> tags, String createdAt, String updatedAt
});




}
/// @nodoc
class __$PositionCopyWithImpl<$Res>
    implements _$PositionCopyWith<$Res> {
  __$PositionCopyWithImpl(this._self, this._then);

  final _Position _self;
  final $Res Function(_Position) _then;

/// Create a copy of Position
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? titles = null,Object? shortCode = null,Object? sortOrder = null,Object? rank = null,Object? remarks = null,Object? tags = null,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_Position(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,titles: null == titles ? _self._titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as int,rank: null == rank ? _self.rank : rank // ignore: cast_nullable_to_non_nullable
as int,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
