// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyModel {

@JsonKey(readValue: _readId) String get id; String get name;@JsonKey(name: 'name_mm') String? get nameMm;@JsonKey(name: 'sc') String? get shortCode; String? get logo; int? get sequence; bool? get active; String? get serial; bool? get deleted; dynamic get deletedAt; String? get createdAt; String? get updatedAt;@JsonKey(name: '__v') int? get version;@JsonKey(name: 'generalinfo') Map<String, dynamic>? get generalInfo;@JsonKey(name: 'socialmedia') Map<String, dynamic>? get socialMedia;
/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyModelCopyWith<CompanyModel> get copyWith => _$CompanyModelCopyWithImpl<CompanyModel>(this as CompanyModel, _$identity);

  /// Serializes this CompanyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CompanyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameMm, nameMm) || other.nameMm == nameMm)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.active, active) || other.active == active)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.generalInfo, generalInfo)&&const DeepCollectionEquality().equals(other.socialMedia, socialMedia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameMm,shortCode,logo,sequence,active,serial,deleted,const DeepCollectionEquality().hash(deletedAt),createdAt,updatedAt,version,const DeepCollectionEquality().hash(generalInfo),const DeepCollectionEquality().hash(socialMedia));

@override
String toString() {
  return 'CompanyModel(id: $id, name: $name, nameMm: $nameMm, shortCode: $shortCode, logo: $logo, sequence: $sequence, active: $active, serial: $serial, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, generalInfo: $generalInfo, socialMedia: $socialMedia)';
}


}

/// @nodoc
abstract mixin class $CompanyModelCopyWith<$Res>  {
  factory $CompanyModelCopyWith(CompanyModel value, $Res Function(CompanyModel) _then) = _$CompanyModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id, String name,@JsonKey(name: 'name_mm') String? nameMm,@JsonKey(name: 'sc') String? shortCode, String? logo, int? sequence, bool? active, String? serial, bool? deleted, dynamic deletedAt, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version,@JsonKey(name: 'generalinfo') Map<String, dynamic>? generalInfo,@JsonKey(name: 'socialmedia') Map<String, dynamic>? socialMedia
});




}
/// @nodoc
class _$CompanyModelCopyWithImpl<$Res>
    implements $CompanyModelCopyWith<$Res> {
  _$CompanyModelCopyWithImpl(this._self, this._then);

  final CompanyModel _self;
  final $Res Function(CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameMm = freezed,Object? shortCode = freezed,Object? logo = freezed,Object? sequence = freezed,Object? active = freezed,Object? serial = freezed,Object? deleted = freezed,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? generalInfo = freezed,Object? socialMedia = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameMm: freezed == nameMm ? _self.nameMm : nameMm // ignore: cast_nullable_to_non_nullable
as String?,shortCode: freezed == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,serial: freezed == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,generalInfo: freezed == generalInfo ? _self.generalInfo : generalInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,socialMedia: freezed == socialMedia ? _self.socialMedia : socialMedia // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CompanyModel].
extension CompanyModelPatterns on CompanyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CompanyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CompanyModel value)  $default,){
final _that = this;
switch (_that) {
case _CompanyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CompanyModel value)?  $default,){
final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String name, @JsonKey(name: 'name_mm')  String? nameMm, @JsonKey(name: 'sc')  String? shortCode,  String? logo,  int? sequence,  bool? active,  String? serial,  bool? deleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version, @JsonKey(name: 'generalinfo')  Map<String, dynamic>? generalInfo, @JsonKey(name: 'socialmedia')  Map<String, dynamic>? socialMedia)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.id,_that.name,_that.nameMm,_that.shortCode,_that.logo,_that.sequence,_that.active,_that.serial,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version,_that.generalInfo,_that.socialMedia);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String name, @JsonKey(name: 'name_mm')  String? nameMm, @JsonKey(name: 'sc')  String? shortCode,  String? logo,  int? sequence,  bool? active,  String? serial,  bool? deleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version, @JsonKey(name: 'generalinfo')  Map<String, dynamic>? generalInfo, @JsonKey(name: 'socialmedia')  Map<String, dynamic>? socialMedia)  $default,) {final _that = this;
switch (_that) {
case _CompanyModel():
return $default(_that.id,_that.name,_that.nameMm,_that.shortCode,_that.logo,_that.sequence,_that.active,_that.serial,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version,_that.generalInfo,_that.socialMedia);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id,  String name, @JsonKey(name: 'name_mm')  String? nameMm, @JsonKey(name: 'sc')  String? shortCode,  String? logo,  int? sequence,  bool? active,  String? serial,  bool? deleted,  dynamic deletedAt,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version, @JsonKey(name: 'generalinfo')  Map<String, dynamic>? generalInfo, @JsonKey(name: 'socialmedia')  Map<String, dynamic>? socialMedia)?  $default,) {final _that = this;
switch (_that) {
case _CompanyModel() when $default != null:
return $default(_that.id,_that.name,_that.nameMm,_that.shortCode,_that.logo,_that.sequence,_that.active,_that.serial,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt,_that.version,_that.generalInfo,_that.socialMedia);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CompanyModel extends CompanyModel {
  const _CompanyModel({@JsonKey(readValue: _readId) this.id = '', this.name = '', @JsonKey(name: 'name_mm') this.nameMm, @JsonKey(name: 'sc') this.shortCode, this.logo, this.sequence, this.active, this.serial, this.deleted, this.deletedAt, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version, @JsonKey(name: 'generalinfo') final  Map<String, dynamic>? generalInfo, @JsonKey(name: 'socialmedia') final  Map<String, dynamic>? socialMedia}): _generalInfo = generalInfo,_socialMedia = socialMedia,super._();
  factory _CompanyModel.fromJson(Map<String, dynamic> json) => _$CompanyModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey() final  String name;
@override@JsonKey(name: 'name_mm') final  String? nameMm;
@override@JsonKey(name: 'sc') final  String? shortCode;
@override final  String? logo;
@override final  int? sequence;
@override final  bool? active;
@override final  String? serial;
@override final  bool? deleted;
@override final  dynamic deletedAt;
@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: '__v') final  int? version;
 final  Map<String, dynamic>? _generalInfo;
@override@JsonKey(name: 'generalinfo') Map<String, dynamic>? get generalInfo {
  final value = _generalInfo;
  if (value == null) return null;
  if (_generalInfo is EqualUnmodifiableMapView) return _generalInfo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _socialMedia;
@override@JsonKey(name: 'socialmedia') Map<String, dynamic>? get socialMedia {
  final value = _socialMedia;
  if (value == null) return null;
  if (_socialMedia is EqualUnmodifiableMapView) return _socialMedia;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyModelCopyWith<_CompanyModel> get copyWith => __$CompanyModelCopyWithImpl<_CompanyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CompanyModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameMm, nameMm) || other.nameMm == nameMm)&&(identical(other.shortCode, shortCode) || other.shortCode == shortCode)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.sequence, sequence) || other.sequence == sequence)&&(identical(other.active, active) || other.active == active)&&(identical(other.serial, serial) || other.serial == serial)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&const DeepCollectionEquality().equals(other.deletedAt, deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._generalInfo, _generalInfo)&&const DeepCollectionEquality().equals(other._socialMedia, _socialMedia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameMm,shortCode,logo,sequence,active,serial,deleted,const DeepCollectionEquality().hash(deletedAt),createdAt,updatedAt,version,const DeepCollectionEquality().hash(_generalInfo),const DeepCollectionEquality().hash(_socialMedia));

@override
String toString() {
  return 'CompanyModel(id: $id, name: $name, nameMm: $nameMm, shortCode: $shortCode, logo: $logo, sequence: $sequence, active: $active, serial: $serial, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt, version: $version, generalInfo: $generalInfo, socialMedia: $socialMedia)';
}


}

/// @nodoc
abstract mixin class _$CompanyModelCopyWith<$Res> implements $CompanyModelCopyWith<$Res> {
  factory _$CompanyModelCopyWith(_CompanyModel value, $Res Function(_CompanyModel) _then) = __$CompanyModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id, String name,@JsonKey(name: 'name_mm') String? nameMm,@JsonKey(name: 'sc') String? shortCode, String? logo, int? sequence, bool? active, String? serial, bool? deleted, dynamic deletedAt, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version,@JsonKey(name: 'generalinfo') Map<String, dynamic>? generalInfo,@JsonKey(name: 'socialmedia') Map<String, dynamic>? socialMedia
});




}
/// @nodoc
class __$CompanyModelCopyWithImpl<$Res>
    implements _$CompanyModelCopyWith<$Res> {
  __$CompanyModelCopyWithImpl(this._self, this._then);

  final _CompanyModel _self;
  final $Res Function(_CompanyModel) _then;

/// Create a copy of CompanyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameMm = freezed,Object? shortCode = freezed,Object? logo = freezed,Object? sequence = freezed,Object? active = freezed,Object? serial = freezed,Object? deleted = freezed,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,Object? generalInfo = freezed,Object? socialMedia = freezed,}) {
  return _then(_CompanyModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameMm: freezed == nameMm ? _self.nameMm : nameMm // ignore: cast_nullable_to_non_nullable
as String?,shortCode: freezed == shortCode ? _self.shortCode : shortCode // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,sequence: freezed == sequence ? _self.sequence : sequence // ignore: cast_nullable_to_non_nullable
as int?,active: freezed == active ? _self.active : active // ignore: cast_nullable_to_non_nullable
as bool?,serial: freezed == serial ? _self.serial : serial // ignore: cast_nullable_to_non_nullable
as String?,deleted: freezed == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as dynamic,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,generalInfo: freezed == generalInfo ? _self._generalInfo : generalInfo // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,socialMedia: freezed == socialMedia ? _self._socialMedia : socialMedia // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
