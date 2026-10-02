// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_holiday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicHolidayModel {

@JsonKey(name: '_id') String get id;@JsonKey(name: 'company_id') String get companyId; String get title;@JsonKey(name: 'title_mm') String get titleMm; String? get date; String get type;@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'deleted') bool get deleted; String? get createdAt; String? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of PublicHolidayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicHolidayModelCopyWith<PublicHolidayModel> get copyWith => _$PublicHolidayModelCopyWithImpl<PublicHolidayModel>(this as PublicHolidayModel, _$identity);

  /// Serializes this PublicHolidayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicHolidayModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,title,titleMm,date,type,isActive,deleted,createdAt,updatedAt,version);

@override
String toString() {
  return 'PublicHolidayModel(id: $id, companyId: $companyId, title: $title, titleMm: $titleMm, date: $date, type: $type, isActive: $isActive, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $PublicHolidayModelCopyWith<$Res>  {
  factory $PublicHolidayModelCopyWith(PublicHolidayModel value, $Res Function(PublicHolidayModel) _then) = _$PublicHolidayModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'company_id') String companyId, String title,@JsonKey(name: 'title_mm') String titleMm, String? date, String type,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'deleted') bool deleted, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class _$PublicHolidayModelCopyWithImpl<$Res>
    implements $PublicHolidayModelCopyWith<$Res> {
  _$PublicHolidayModelCopyWithImpl(this._self, this._then);

  final PublicHolidayModel _self;
  final $Res Function(PublicHolidayModel) _then;

/// Create a copy of PublicHolidayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? title = null,Object? titleMm = null,Object? date = freezed,Object? type = null,Object? isActive = null,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicHolidayModel].
extension PublicHolidayModelPatterns on PublicHolidayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicHolidayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicHolidayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicHolidayModel value)  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicHolidayModel value)?  $default,){
final _that = this;
switch (_that) {
case _PublicHolidayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'company_id')  String companyId,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String? date,  String type, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'deleted')  bool deleted,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicHolidayModel() when $default != null:
return $default(_that.id,_that.companyId,_that.title,_that.titleMm,_that.date,_that.type,_that.isActive,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'company_id')  String companyId,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String? date,  String type, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'deleted')  bool deleted,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayModel():
return $default(_that.id,_that.companyId,_that.title,_that.titleMm,_that.date,_that.type,_that.isActive,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id, @JsonKey(name: 'company_id')  String companyId,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String? date,  String type, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'deleted')  bool deleted,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _PublicHolidayModel() when $default != null:
return $default(_that.id,_that.companyId,_that.title,_that.titleMm,_that.date,_that.type,_that.isActive,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicHolidayModel implements PublicHolidayModel {
  const _PublicHolidayModel({@JsonKey(name: '_id') required this.id, @JsonKey(name: 'company_id') this.companyId = '', this.title = '', @JsonKey(name: 'title_mm') this.titleMm = '', this.date, this.type = '', @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'deleted') this.deleted = false, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version});
  factory _PublicHolidayModel.fromJson(Map<String, dynamic> json) => _$PublicHolidayModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey() final  String title;
@override@JsonKey(name: 'title_mm') final  String titleMm;
@override final  String? date;
@override@JsonKey() final  String type;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'deleted') final  bool deleted;
@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of PublicHolidayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicHolidayModelCopyWith<_PublicHolidayModel> get copyWith => __$PublicHolidayModelCopyWithImpl<_PublicHolidayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicHolidayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicHolidayModel&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.date, date) || other.date == date)&&(identical(other.type, type) || other.type == type)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,companyId,title,titleMm,date,type,isActive,deleted,createdAt,updatedAt,version);

@override
String toString() {
  return 'PublicHolidayModel(id: $id, companyId: $companyId, title: $title, titleMm: $titleMm, date: $date, type: $type, isActive: $isActive, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$PublicHolidayModelCopyWith<$Res> implements $PublicHolidayModelCopyWith<$Res> {
  factory _$PublicHolidayModelCopyWith(_PublicHolidayModel value, $Res Function(_PublicHolidayModel) _then) = __$PublicHolidayModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id,@JsonKey(name: 'company_id') String companyId, String title,@JsonKey(name: 'title_mm') String titleMm, String? date, String type,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'deleted') bool deleted, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class __$PublicHolidayModelCopyWithImpl<$Res>
    implements _$PublicHolidayModelCopyWith<$Res> {
  __$PublicHolidayModelCopyWithImpl(this._self, this._then);

  final _PublicHolidayModel _self;
  final $Res Function(_PublicHolidayModel) _then;

/// Create a copy of PublicHolidayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? title = null,Object? titleMm = null,Object? date = freezed,Object? type = null,Object? isActive = null,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_PublicHolidayModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
