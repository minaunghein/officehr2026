// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnnouncementModel {

@JsonKey(readValue: _readId) String get id; String get title;@JsonKey(name: 'title_mm') String get titleMm; String get content;@JsonKey(name: 'image_file_id') String? get imageFileId; String get status;@JsonKey(name: 'published_at', fromJson: parseLocalDateTime) DateTime? get publishedAt;@JsonKey(fromJson: parseLocalDateTime) DateTime? get createdAt;@JsonKey(fromJson: parseLocalDateTime) DateTime? get updatedAt; List<AnnouncementBranchModel> get branches;
/// Create a copy of AnnouncementModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementModelCopyWith<AnnouncementModel> get copyWith => _$AnnouncementModelCopyWithImpl<AnnouncementModel>(this as AnnouncementModel, _$identity);

  /// Serializes this AnnouncementModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.content, content) || other.content == content)&&(identical(other.imageFileId, imageFileId) || other.imageFileId == imageFileId)&&(identical(other.status, status) || other.status == status)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.branches, branches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleMm,content,imageFileId,status,publishedAt,createdAt,updatedAt,const DeepCollectionEquality().hash(branches));

@override
String toString() {
  return 'AnnouncementModel(id: $id, title: $title, titleMm: $titleMm, content: $content, imageFileId: $imageFileId, status: $status, publishedAt: $publishedAt, createdAt: $createdAt, updatedAt: $updatedAt, branches: $branches)';
}


}

/// @nodoc
abstract mixin class $AnnouncementModelCopyWith<$Res>  {
  factory $AnnouncementModelCopyWith(AnnouncementModel value, $Res Function(AnnouncementModel) _then) = _$AnnouncementModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title,@JsonKey(name: 'title_mm') String titleMm, String content,@JsonKey(name: 'image_file_id') String? imageFileId, String status,@JsonKey(name: 'published_at', fromJson: parseLocalDateTime) DateTime? publishedAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt, List<AnnouncementBranchModel> branches
});




}
/// @nodoc
class _$AnnouncementModelCopyWithImpl<$Res>
    implements $AnnouncementModelCopyWith<$Res> {
  _$AnnouncementModelCopyWithImpl(this._self, this._then);

  final AnnouncementModel _self;
  final $Res Function(AnnouncementModel) _then;

/// Create a copy of AnnouncementModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? titleMm = null,Object? content = null,Object? imageFileId = freezed,Object? status = null,Object? publishedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? branches = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,imageFileId: freezed == imageFileId ? _self.imageFileId : imageFileId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,branches: null == branches ? _self.branches : branches // ignore: cast_nullable_to_non_nullable
as List<AnnouncementBranchModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AnnouncementModel].
extension AnnouncementModelPatterns on AnnouncementModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnnouncementModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnnouncementModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnnouncementModel value)  $default,){
final _that = this;
switch (_that) {
case _AnnouncementModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnnouncementModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnnouncementModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String content, @JsonKey(name: 'image_file_id')  String? imageFileId,  String status, @JsonKey(name: 'published_at', fromJson: parseLocalDateTime)  DateTime? publishedAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt,  List<AnnouncementBranchModel> branches)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnnouncementModel() when $default != null:
return $default(_that.id,_that.title,_that.titleMm,_that.content,_that.imageFileId,_that.status,_that.publishedAt,_that.createdAt,_that.updatedAt,_that.branches);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String content, @JsonKey(name: 'image_file_id')  String? imageFileId,  String status, @JsonKey(name: 'published_at', fromJson: parseLocalDateTime)  DateTime? publishedAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt,  List<AnnouncementBranchModel> branches)  $default,) {final _that = this;
switch (_that) {
case _AnnouncementModel():
return $default(_that.id,_that.title,_that.titleMm,_that.content,_that.imageFileId,_that.status,_that.publishedAt,_that.createdAt,_that.updatedAt,_that.branches);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id,  String title, @JsonKey(name: 'title_mm')  String titleMm,  String content, @JsonKey(name: 'image_file_id')  String? imageFileId,  String status, @JsonKey(name: 'published_at', fromJson: parseLocalDateTime)  DateTime? publishedAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt,  List<AnnouncementBranchModel> branches)?  $default,) {final _that = this;
switch (_that) {
case _AnnouncementModel() when $default != null:
return $default(_that.id,_that.title,_that.titleMm,_that.content,_that.imageFileId,_that.status,_that.publishedAt,_that.createdAt,_that.updatedAt,_that.branches);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnnouncementModel extends AnnouncementModel {
  const _AnnouncementModel({@JsonKey(readValue: _readId) this.id = '', this.title = '', @JsonKey(name: 'title_mm') this.titleMm = '', this.content = '', @JsonKey(name: 'image_file_id') this.imageFileId, this.status = 'PUBLISHED', @JsonKey(name: 'published_at', fromJson: parseLocalDateTime) this.publishedAt, @JsonKey(fromJson: parseLocalDateTime) this.createdAt, @JsonKey(fromJson: parseLocalDateTime) this.updatedAt, final  List<AnnouncementBranchModel> branches = const []}): _branches = branches,super._();
  factory _AnnouncementModel.fromJson(Map<String, dynamic> json) => _$AnnouncementModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey() final  String title;
@override@JsonKey(name: 'title_mm') final  String titleMm;
@override@JsonKey() final  String content;
@override@JsonKey(name: 'image_file_id') final  String? imageFileId;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'published_at', fromJson: parseLocalDateTime) final  DateTime? publishedAt;
@override@JsonKey(fromJson: parseLocalDateTime) final  DateTime? createdAt;
@override@JsonKey(fromJson: parseLocalDateTime) final  DateTime? updatedAt;
 final  List<AnnouncementBranchModel> _branches;
@override@JsonKey() List<AnnouncementBranchModel> get branches {
  if (_branches is EqualUnmodifiableListView) return _branches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_branches);
}


/// Create a copy of AnnouncementModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnnouncementModelCopyWith<_AnnouncementModel> get copyWith => __$AnnouncementModelCopyWithImpl<_AnnouncementModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnnouncementModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnnouncementModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.titleMm, titleMm) || other.titleMm == titleMm)&&(identical(other.content, content) || other.content == content)&&(identical(other.imageFileId, imageFileId) || other.imageFileId == imageFileId)&&(identical(other.status, status) || other.status == status)&&(identical(other.publishedAt, publishedAt) || other.publishedAt == publishedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._branches, _branches));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,titleMm,content,imageFileId,status,publishedAt,createdAt,updatedAt,const DeepCollectionEquality().hash(_branches));

@override
String toString() {
  return 'AnnouncementModel(id: $id, title: $title, titleMm: $titleMm, content: $content, imageFileId: $imageFileId, status: $status, publishedAt: $publishedAt, createdAt: $createdAt, updatedAt: $updatedAt, branches: $branches)';
}


}

/// @nodoc
abstract mixin class _$AnnouncementModelCopyWith<$Res> implements $AnnouncementModelCopyWith<$Res> {
  factory _$AnnouncementModelCopyWith(_AnnouncementModel value, $Res Function(_AnnouncementModel) _then) = __$AnnouncementModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title,@JsonKey(name: 'title_mm') String titleMm, String content,@JsonKey(name: 'image_file_id') String? imageFileId, String status,@JsonKey(name: 'published_at', fromJson: parseLocalDateTime) DateTime? publishedAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt, List<AnnouncementBranchModel> branches
});




}
/// @nodoc
class __$AnnouncementModelCopyWithImpl<$Res>
    implements _$AnnouncementModelCopyWith<$Res> {
  __$AnnouncementModelCopyWithImpl(this._self, this._then);

  final _AnnouncementModel _self;
  final $Res Function(_AnnouncementModel) _then;

/// Create a copy of AnnouncementModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? titleMm = null,Object? content = null,Object? imageFileId = freezed,Object? status = null,Object? publishedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? branches = null,}) {
  return _then(_AnnouncementModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,titleMm: null == titleMm ? _self.titleMm : titleMm // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,imageFileId: freezed == imageFileId ? _self.imageFileId : imageFileId // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,publishedAt: freezed == publishedAt ? _self.publishedAt : publishedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,branches: null == branches ? _self._branches : branches // ignore: cast_nullable_to_non_nullable
as List<AnnouncementBranchModel>,
  ));
}


}


/// @nodoc
mixin _$AnnouncementBranchModel {

@JsonKey(readValue: _readId) String get id; String get title; String get code;
/// Create a copy of AnnouncementBranchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnnouncementBranchModelCopyWith<AnnouncementBranchModel> get copyWith => _$AnnouncementBranchModelCopyWithImpl<AnnouncementBranchModel>(this as AnnouncementBranchModel, _$identity);

  /// Serializes this AnnouncementBranchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnnouncementBranchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,code);

@override
String toString() {
  return 'AnnouncementBranchModel(id: $id, title: $title, code: $code)';
}


}

/// @nodoc
abstract mixin class $AnnouncementBranchModelCopyWith<$Res>  {
  factory $AnnouncementBranchModelCopyWith(AnnouncementBranchModel value, $Res Function(AnnouncementBranchModel) _then) = _$AnnouncementBranchModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title, String code
});




}
/// @nodoc
class _$AnnouncementBranchModelCopyWithImpl<$Res>
    implements $AnnouncementBranchModelCopyWith<$Res> {
  _$AnnouncementBranchModelCopyWithImpl(this._self, this._then);

  final AnnouncementBranchModel _self;
  final $Res Function(AnnouncementBranchModel) _then;

/// Create a copy of AnnouncementBranchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? code = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnnouncementBranchModel].
extension AnnouncementBranchModelPatterns on AnnouncementBranchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnnouncementBranchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnnouncementBranchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnnouncementBranchModel value)  $default,){
final _that = this;
switch (_that) {
case _AnnouncementBranchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnnouncementBranchModel value)?  $default,){
final _that = this;
switch (_that) {
case _AnnouncementBranchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnnouncementBranchModel() when $default != null:
return $default(_that.id,_that.title,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title,  String code)  $default,) {final _that = this;
switch (_that) {
case _AnnouncementBranchModel():
return $default(_that.id,_that.title,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id,  String title,  String code)?  $default,) {final _that = this;
switch (_that) {
case _AnnouncementBranchModel() when $default != null:
return $default(_that.id,_that.title,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnnouncementBranchModel implements AnnouncementBranchModel {
  const _AnnouncementBranchModel({@JsonKey(readValue: _readId) this.id = '', this.title = '', this.code = ''});
  factory _AnnouncementBranchModel.fromJson(Map<String, dynamic> json) => _$AnnouncementBranchModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String code;

/// Create a copy of AnnouncementBranchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnnouncementBranchModelCopyWith<_AnnouncementBranchModel> get copyWith => __$AnnouncementBranchModelCopyWithImpl<_AnnouncementBranchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnnouncementBranchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnnouncementBranchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,code);

@override
String toString() {
  return 'AnnouncementBranchModel(id: $id, title: $title, code: $code)';
}


}

/// @nodoc
abstract mixin class _$AnnouncementBranchModelCopyWith<$Res> implements $AnnouncementBranchModelCopyWith<$Res> {
  factory _$AnnouncementBranchModelCopyWith(_AnnouncementBranchModel value, $Res Function(_AnnouncementBranchModel) _then) = __$AnnouncementBranchModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title, String code
});




}
/// @nodoc
class __$AnnouncementBranchModelCopyWithImpl<$Res>
    implements _$AnnouncementBranchModelCopyWith<$Res> {
  __$AnnouncementBranchModelCopyWithImpl(this._self, this._then);

  final _AnnouncementBranchModel _self;
  final $Res Function(_AnnouncementBranchModel) _then;

/// Create a copy of AnnouncementBranchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? code = null,}) {
  return _then(_AnnouncementBranchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
