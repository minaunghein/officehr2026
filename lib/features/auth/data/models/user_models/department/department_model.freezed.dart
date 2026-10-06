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

@JsonKey(readValue: _readId) String get id; String get title;@JsonKey(name: 'title_mm') String get titleMm; String get code; String get description;@JsonKey(name: 'company_id') String get companyId;@JsonKey(name: 'is_active') bool get isActive; bool get deleted; String? get deletedAt; String? get createdAt; String? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of DepartmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentModelCopyWith<DepartmentModel> get copyWith => _$DepartmentModelCopyWithImpl<DepartmentModel>(this as DepartmentModel, _$identity);

  /// Serializes this DepartmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleMm,code,description,companyId,isActive,deleted,deletedAt,createdAt,updatedAt,version);

@override
String toString() {
  return 'DepartmentModel(id: $id, title: $title, titleMm: $titleMm, code: $code, description: $description, companyId: $companyId, isActive: $isActive, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $DepartmentModelCopyWith<$Res>  {
  factory $DepartmentModelCopyWith(DepartmentModel value, $Res Function(DepartmentModel) _then) = _$DepartmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title,@JsonKey(name: 'title_mm') String titleMm, String code, String description,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'is_active') bool isActive, bool deleted, String? deletedAt, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? titleMm = null,Object? code = null,Object? description = null,Object? companyId = null,Object? isActive = null,Object? deleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String code,  String description, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive,  bool deleted,  String? deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepartmentModel() when $default != null:
return $default(_that.id,_that.title,_that.titleMm,_that.code,_that.description,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String code,  String description, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive,  bool deleted,  String? deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _DepartmentModel():
return $default(_that.id,_that.title,_that.titleMm,_that.code,_that.description,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String code,  String description, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive,  bool deleted,  String? deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _DepartmentModel() when $default != null:
return $default(_that.id,_that.title,_that.titleMm,_that.code,_that.description,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepartmentModel extends DepartmentModel {
  const _DepartmentModel({@JsonKey(readValue: _readId) this.id = '', this.title = '', @JsonKey(name: 'title_mm') this.titleMm = '', this.code = '', this.description = '', @JsonKey(name: 'company_id') this.companyId = '', @JsonKey(name: 'is_active') this.isActive = false, this.deleted = false, this.deletedAt, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version}): super._();
  factory _DepartmentModel.fromJson(Map<String, dynamic> json) => _$DepartmentModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey() final  String title;
@override@JsonKey(name: 'title_mm') final  String titleMm;
@override@JsonKey() final  String code;
@override@JsonKey() final  String description;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey() final  bool deleted;
@override final  String? deletedAt;
@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepartmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.code, code) || other.code == code)&&(identical(other.description, description) || other.description == description)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleMm,code,description,companyId,isActive,deleted,deletedAt,createdAt,updatedAt,version);

@override
String toString() {
  return 'DepartmentModel(id: $id, title: $title, titleMm: $titleMm, code: $code, description: $description, companyId: $companyId, isActive: $isActive, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$DepartmentModelCopyWith<$Res> implements $DepartmentModelCopyWith<$Res> {
  factory _$DepartmentModelCopyWith(_DepartmentModel value, $Res Function(_DepartmentModel) _then) = __$DepartmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title,@JsonKey(name: 'title_mm') String titleMm, String code, String description,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'is_active') bool isActive, bool deleted, String? deletedAt, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? titleMm = null,Object? code = null,Object? description = null,Object? companyId = null,Object? isActive = null,Object? deleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_DepartmentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
