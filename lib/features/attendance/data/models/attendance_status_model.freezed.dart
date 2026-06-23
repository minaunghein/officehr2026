// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_status_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceStatusModel {

@JsonKey(name: '_id') String get id; String get company; int get statusid; List<String> get titles;@JsonKey(name: 'sc') String get shortCode; String get remarks; List<String> get tags;@JsonKey(name: 'crdAt') DateTime? get createdAt;@JsonKey(name: 'updAt') DateTime? get updatedAt;@JsonKey(name: 'id') int? get recordId;@JsonKey(name: '__v') int? get version;
/// Create a copy of AttendanceStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStatusModelCopyWith<AttendanceStatusModel> get copyWith => _$AttendanceStatusModelCopyWithImpl<AttendanceStatusModel>(this as AttendanceStatusModel, _$identity);

  /// Serializes this AttendanceStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.statusid, statusid) || other.statusid == statusid)&&const DeepCollectionEquality().equals(other.titles, titles)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,statusid,const DeepCollectionEquality().hash(titles),shortCode,remarks,const DeepCollectionEquality().hash(tags),createdAt,updatedAt,recordId,version);

@override
String toString() {
  return 'AttendanceStatusModel(id: $id, company: $company, statusid: $statusid, titles: $titles, shortCode: $shortCode, remarks: $remarks, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, recordId: $recordId, version: $version)';
}


}

/// @nodoc
abstract mixin class $AttendanceStatusModelCopyWith<$Res>  {
  factory $AttendanceStatusModelCopyWith(AttendanceStatusModel value, $Res Function(AttendanceStatusModel) _then) = _$AttendanceStatusModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String company, int statusid, List<String> titles,@JsonKey(name: 'sc') String shortCode, String remarks, List<String> tags,@JsonKey(name: 'crdAt') DateTime? createdAt,@JsonKey(name: 'updAt') DateTime? updatedAt,@JsonKey(name: 'id') int? recordId,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class _$AttendanceStatusModelCopyWithImpl<$Res>
    implements $AttendanceStatusModelCopyWith<$Res> {
  _$AttendanceStatusModelCopyWithImpl(this._self, this._then);

  final AttendanceStatusModel _self;
  final $Res Function(AttendanceStatusModel) _then;

/// Create a copy of AttendanceStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? statusid = null,Object? titles = null,Object? shortCode = null,Object? remarks = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? recordId = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,statusid: null == statusid ? _self.statusid : statusid // ignore: cast_nullable_to_non_nullable
as int,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceStatusModel].
extension AttendanceStatusModelPatterns on AttendanceStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  int statusid,  List<String> titles, @JsonKey(name: 'sc')  String shortCode,  String remarks,  List<String> tags, @JsonKey(name: 'crdAt')  DateTime? createdAt, @JsonKey(name: 'updAt')  DateTime? updatedAt, @JsonKey(name: 'id')  int? recordId, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceStatusModel() when $default != null:
return $default(_that.id,_that.company,_that.statusid,_that.titles,_that.shortCode,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.recordId,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  int statusid,  List<String> titles, @JsonKey(name: 'sc')  String shortCode,  String remarks,  List<String> tags, @JsonKey(name: 'crdAt')  DateTime? createdAt, @JsonKey(name: 'updAt')  DateTime? updatedAt, @JsonKey(name: 'id')  int? recordId, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatusModel():
return $default(_that.id,_that.company,_that.statusid,_that.titles,_that.shortCode,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.recordId,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String company,  int statusid,  List<String> titles, @JsonKey(name: 'sc')  String shortCode,  String remarks,  List<String> tags, @JsonKey(name: 'crdAt')  DateTime? createdAt, @JsonKey(name: 'updAt')  DateTime? updatedAt, @JsonKey(name: 'id')  int? recordId, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatusModel() when $default != null:
return $default(_that.id,_that.company,_that.statusid,_that.titles,_that.shortCode,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.recordId,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceStatusModel implements AttendanceStatusModel {
  const _AttendanceStatusModel({@JsonKey(name: '_id') required this.id, required this.company, required this.statusid, required final  List<String> titles, @JsonKey(name: 'sc') required this.shortCode, this.remarks = '', final  List<String> tags = const [], @JsonKey(name: 'crdAt') this.createdAt, @JsonKey(name: 'updAt') this.updatedAt, @JsonKey(name: 'id') this.recordId, @JsonKey(name: '__v') this.version}): _titles = titles,_tags = tags;
  factory _AttendanceStatusModel.fromJson(Map<String, dynamic> json) => _$AttendanceStatusModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String company;
@override final  int statusid;
 final  List<String> _titles;
@override List<String> get titles {
  if (_titles is EqualUnmodifiableListView) return _titles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titles);
}

@override@JsonKey(name: 'sc') final  String shortCode;
@override@JsonKey() final  String remarks;
 final  List<String> _tags;
@override@JsonKey() List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override@JsonKey(name: 'crdAt') final  DateTime? createdAt;
@override@JsonKey(name: 'updAt') final  DateTime? updatedAt;
@override@JsonKey(name: 'id') final  int? recordId;
@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of AttendanceStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStatusModelCopyWith<_AttendanceStatusModel> get copyWith => __$AttendanceStatusModelCopyWithImpl<_AttendanceStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.statusid, statusid) || other.statusid == statusid)&&const DeepCollectionEquality().equals(other._titles, _titles)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.recordId, recordId) || other.recordId == recordId)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,statusid,const DeepCollectionEquality().hash(_titles),shortCode,remarks,const DeepCollectionEquality().hash(_tags),createdAt,updatedAt,recordId,version);

@override
String toString() {
  return 'AttendanceStatusModel(id: $id, company: $company, statusid: $statusid, titles: $titles, shortCode: $shortCode, remarks: $remarks, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, recordId: $recordId, version: $version)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStatusModelCopyWith<$Res> implements $AttendanceStatusModelCopyWith<$Res> {
  factory _$AttendanceStatusModelCopyWith(_AttendanceStatusModel value, $Res Function(_AttendanceStatusModel) _then) = __$AttendanceStatusModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String company, int statusid, List<String> titles,@JsonKey(name: 'sc') String shortCode, String remarks, List<String> tags,@JsonKey(name: 'crdAt') DateTime? createdAt,@JsonKey(name: 'updAt') DateTime? updatedAt,@JsonKey(name: 'id') int? recordId,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class __$AttendanceStatusModelCopyWithImpl<$Res>
    implements _$AttendanceStatusModelCopyWith<$Res> {
  __$AttendanceStatusModelCopyWithImpl(this._self, this._then);

  final _AttendanceStatusModel _self;
  final $Res Function(_AttendanceStatusModel) _then;

/// Create a copy of AttendanceStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? statusid = null,Object? titles = null,Object? shortCode = null,Object? remarks = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? recordId = freezed,Object? version = freezed,}) {
  return _then(_AttendanceStatusModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,statusid: null == statusid ? _self.statusid : statusid // ignore: cast_nullable_to_non_nullable
as int,titles: null == titles ? _self._titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,shortCode: null == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,recordId: freezed == recordId ? _self.recordId : recordId // ignore: cast_nullable_to_non_nullable
as int?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
