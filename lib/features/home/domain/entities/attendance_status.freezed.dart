// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceStatus {

 String get id; String get companyId; int get statusId; List<String> get titles; String get shortCode; String get remarks; List<String> get tags; DateTime? get createdAt; DateTime? get updatedAt; int? get recordId;
/// Create a copy of AttendanceStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStatusCopyWith<AttendanceStatus> get copyWith => _$AttendanceStatusCopyWithImpl<AttendanceStatus>(this as AttendanceStatus, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.statusId, statusId) || other.statusId == statusId)&&const DeepCollectionEquality().equals(other.titles, titles)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,statusId,const DeepCollectionEquality().hash(titles),shortCode,remarks,const DeepCollectionEquality().hash(tags),createdAt,updatedAt,recordId);

@override
String toString() {
  return 'AttendanceStatus(id: $id, companyId: $companyId, statusId: $statusId, titles: $titles, shortCode: $shortCode, remarks: $remarks, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, recordId: $recordId)';
}


}

/// @nodoc
abstract mixin class $AttendanceStatusCopyWith<$Res>  {
  factory $AttendanceStatusCopyWith(AttendanceStatus value, $Res Function(AttendanceStatus) _then) = _$AttendanceStatusCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, int statusId, List<String> titles, String shortCode, String remarks, List<String> tags, DateTime? createdAt, DateTime? updatedAt, int? recordId
});




}
/// @nodoc
class _$AttendanceStatusCopyWithImpl<$Res>
    implements $AttendanceStatusCopyWith<$Res> {
  _$AttendanceStatusCopyWithImpl(this._self, this._then);

  final AttendanceStatus _self;
  final $Res Function(AttendanceStatus) _then;

/// Create a copy of AttendanceStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? statusId = null,Object? titles = null,Object? shortCode = null,Object? remarks = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? recordId = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,statusId: null == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as int,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceStatus].
extension AttendanceStatusPatterns on AttendanceStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceStatus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceStatus value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceStatus value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  int statusId,  List<String> titles,  String shortCode,  String remarks,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt,  int? recordId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceStatus() when $default != null:
return $default(_that.id,_that.companyId,_that.statusId,_that.titles,_that.shortCode,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.recordId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  int statusId,  List<String> titles,  String shortCode,  String remarks,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt,  int? recordId)  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatus():
return $default(_that.id,_that.companyId,_that.statusId,_that.titles,_that.shortCode,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.recordId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  int statusId,  List<String> titles,  String shortCode,  String remarks,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt,  int? recordId)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatus() when $default != null:
return $default(_that.id,_that.companyId,_that.statusId,_that.titles,_that.shortCode,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.recordId);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceStatus implements AttendanceStatus {
  const _AttendanceStatus({required this.id, required this.companyId, required this.statusId, required final  List<String> titles, required this.shortCode, this.remarks = '', final  List<String> tags = const [], this.createdAt, this.updatedAt, this.recordId}): _titles = titles,_tags = tags;
  

@override final  String id;
@override final  String companyId;
@override final  int statusId;
 final  List<String> _titles;
@override List<String> get titles {
  if (_titles is EqualUnmodifiableListView) return _titles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titles);
}

@override final  String shortCode;
@override@JsonKey() final  String remarks;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  int? recordId;

/// Create a copy of AttendanceStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStatusCopyWith<_AttendanceStatus> get copyWith => __$AttendanceStatusCopyWithImpl<_AttendanceStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.statusId, statusId) || other.statusId == statusId)&&const DeepCollectionEquality().equals(other._titles, _titles)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,statusId,const DeepCollectionEquality().hash(_titles),shortCode,remarks,const DeepCollectionEquality().hash(_tags),createdAt,updatedAt,recordId);

@override
String toString() {
  return 'AttendanceStatus(id: $id, companyId: $companyId, statusId: $statusId, titles: $titles, shortCode: $shortCode, remarks: $remarks, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, recordId: $recordId)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStatusCopyWith<$Res> implements $AttendanceStatusCopyWith<$Res> {
  factory _$AttendanceStatusCopyWith(_AttendanceStatus value, $Res Function(_AttendanceStatus) _then) = __$AttendanceStatusCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, int statusId, List<String> titles, String shortCode, String remarks, List<String> tags, DateTime? createdAt, DateTime? updatedAt, int? recordId
});




}
/// @nodoc
class __$AttendanceStatusCopyWithImpl<$Res>
    implements _$AttendanceStatusCopyWith<$Res> {
  __$AttendanceStatusCopyWithImpl(this._self, this._then);

  final _AttendanceStatus _self;
  final $Res Function(_AttendanceStatus) _then;

/// Create a copy of AttendanceStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? statusId = null,Object? titles = null,Object? shortCode = null,Object? remarks = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? recordId = freezed,}) {
  return _then(_AttendanceStatus(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,statusId: null == statusId ? _self.statusId : statusId // ignore: cast_nullable_to_non_nullable
as int,titles: null == titles ? _self._titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
