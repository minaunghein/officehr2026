// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DepartmentModel {

@JsonKey(name: '_id') String get id; String get company; List<String> get titles; String get sc; int get so; String get remarks; List<String> get tags; String get createdAt; String get updatedAt;@JsonKey(name: '__v') int get version;
/// Create a copy of DepartmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentModelCopyWith<DepartmentModel> get copyWith => _$DepartmentModelCopyWithImpl<DepartmentModel>(this as DepartmentModel, _$identity);

  /// Serializes this DepartmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.titles, titles)&&(identical(other.sc, sc) || other.sc == sc)&&(identical(other.so, so) || other.so == so)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,const DeepCollectionEquality().hash(titles),sc,so,remarks,const DeepCollectionEquality().hash(tags),createdAt,updatedAt,version);

@override
String toString() {
  return 'DepartmentModel(id: $id, company: $company, titles: $titles, sc: $sc, so: $so, remarks: $remarks, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $DepartmentModelCopyWith<$Res>  {
  factory $DepartmentModelCopyWith(DepartmentModel value, $Res Function(DepartmentModel) _then) = _$DepartmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String company, List<String> titles, String sc, int so, String remarks, List<String> tags, String createdAt, String updatedAt,@JsonKey(name: '__v') int version
});




}
/// @nodoc
class _$DepartmentModelCopyWithImpl<$Res>
    implements $DepartmentModelCopyWith<$Res> {
  _$DepartmentModelCopyWithImpl(this._self, this._then);

  final DepartmentModel _self;
  final $Res Function(DepartmentModel) _then;

/// Create a copy of DepartmentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? titles = null,Object? sc = null,Object? so = null,Object? remarks = null,Object? tags = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,titles: null == titles ? _self.titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,sc: null == sc ? _self.sc : sc // ignore: cast_nullable_to_non_nullable
as String,so: null == so ? _self.so : so // ignore: cast_nullable_to_non_nullable
as int,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DepartmentModel].
extension DepartmentModelPatterns on DepartmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepartmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepartmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepartmentModel value)  $default,){
final _that = this;
switch (_that) {
case _DepartmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepartmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _DepartmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  List<String> titles,  String sc,  int so,  String remarks,  List<String> tags,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepartmentModel() when $default != null:
return $default(_that.id,_that.company,_that.titles,_that.sc,_that.so,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company,  List<String> titles,  String sc,  int so,  String remarks,  List<String> tags,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version)  $default,) {final _that = this;
switch (_that) {
case _DepartmentModel():
return $default(_that.id,_that.company,_that.titles,_that.sc,_that.so,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String company,  List<String> titles,  String sc,  int so,  String remarks,  List<String> tags,  String createdAt,  String updatedAt, @JsonKey(name: '__v')  int version)?  $default,) {final _that = this;
switch (_that) {
case _DepartmentModel() when $default != null:
return $default(_that.id,_that.company,_that.titles,_that.sc,_that.so,_that.remarks,_that.tags,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepartmentModel implements DepartmentModel {
  const _DepartmentModel({@JsonKey(name: '_id') required this.id, required this.company, required final  List<String> titles, required this.sc, required this.so, required this.remarks, required final  List<String> tags, required this.createdAt, required this.updatedAt, @JsonKey(name: '__v') required this.version}): _titles = titles,_tags = tags;
  factory _DepartmentModel.fromJson(Map<String, dynamic> json) => _$DepartmentModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String company;
 final  List<String> _titles;
@override List<String> get titles {
  if (_titles is EqualUnmodifiableListView) return _titles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_titles);
}

@override final  String sc;
@override final  int so;
@override final  String remarks;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  String createdAt;
@override final  String updatedAt;
@override@JsonKey(name: '__v') final  int version;

/// Create a copy of DepartmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartmentModelCopyWith<_DepartmentModel> get copyWith => __$DepartmentModelCopyWithImpl<_DepartmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepartmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._titles, _titles)&&(identical(other.sc, sc) || other.sc == sc)&&(identical(other.so, so) || other.so == so)&&(identical(other.remarks, remarks) || other.remarks == remarks)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,company,const DeepCollectionEquality().hash(_titles),sc,so,remarks,const DeepCollectionEquality().hash(_tags),createdAt,updatedAt,version);

@override
String toString() {
  return 'DepartmentModel(id: $id, company: $company, titles: $titles, sc: $sc, so: $so, remarks: $remarks, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$DepartmentModelCopyWith<$Res> implements $DepartmentModelCopyWith<$Res> {
  factory _$DepartmentModelCopyWith(_DepartmentModel value, $Res Function(_DepartmentModel) _then) = __$DepartmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String company, List<String> titles, String sc, int so, String remarks, List<String> tags, String createdAt, String updatedAt,@JsonKey(name: '__v') int version
});




}
/// @nodoc
class __$DepartmentModelCopyWithImpl<$Res>
    implements _$DepartmentModelCopyWith<$Res> {
  __$DepartmentModelCopyWithImpl(this._self, this._then);

  final _DepartmentModel _self;
  final $Res Function(_DepartmentModel) _then;

/// Create a copy of DepartmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? titles = null,Object? sc = null,Object? so = null,Object? remarks = null,Object? tags = null,Object? createdAt = null,Object? updatedAt = null,Object? version = null,}) {
  return _then(_DepartmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,titles: null == titles ? _self._titles : titles // ignore: cast_nullable_to_non_nullable
as List<String>,sc: null == sc ? _self.sc : sc // ignore: cast_nullable_to_non_nullable
as String,so: null == so ? _self.so : so // ignore: cast_nullable_to_non_nullable
as int,remarks: null == remarks ? _self.remarks : remarks // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
