// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'uploaded_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UploadedFileModel {

@JsonKey(readValue: readMongoId) String get id;@JsonKey(name: 'file_name') String get fileName;@JsonKey(name: 'file_size') int get fileSize;@JsonKey(name: 'file_type') String get fileType;@JsonKey(name: 'mime_type') String get mimeType;@JsonKey(name: 'original_name') String get originalName;
/// Create a copy of UploadedFileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadedFileModelCopyWith<UploadedFileModel> get copyWith => _$UploadedFileModelCopyWithImpl<UploadedFileModel>(this as UploadedFileModel, _$identity);

  /// Serializes this UploadedFileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadedFileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.originalName, originalName) || other.originalName == originalName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileName,fileSize,fileType,mimeType,originalName);

@override
String toString() {
  return 'UploadedFileModel(id: $id, fileName: $fileName, fileSize: $fileSize, fileType: $fileType, mimeType: $mimeType, originalName: $originalName)';
}


}

/// @nodoc
abstract mixin class $UploadedFileModelCopyWith<$Res>  {
  factory $UploadedFileModelCopyWith(UploadedFileModel value, $Res Function(UploadedFileModel) _then) = _$UploadedFileModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: readMongoId) String id,@JsonKey(name: 'file_name') String fileName,@JsonKey(name: 'file_size') int fileSize,@JsonKey(name: 'file_type') String fileType,@JsonKey(name: 'mime_type') String mimeType,@JsonKey(name: 'original_name') String originalName
});




}
/// @nodoc
class _$UploadedFileModelCopyWithImpl<$Res>
    implements $UploadedFileModelCopyWith<$Res> {
  _$UploadedFileModelCopyWithImpl(this._self, this._then);

  final UploadedFileModel _self;
  final $Res Function(UploadedFileModel) _then;

/// Create a copy of UploadedFileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fileName = null,Object? fileSize = null,Object? fileType = null,Object? mimeType = null,Object? originalName = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadedFileModel].
extension UploadedFileModelPatterns on UploadedFileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadedFileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadedFileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadedFileModel value)  $default,){
final _that = this;
switch (_that) {
case _UploadedFileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadedFileModel value)?  $default,){
final _that = this;
switch (_that) {
case _UploadedFileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'file_name')  String fileName, @JsonKey(name: 'file_size')  int fileSize, @JsonKey(name: 'file_type')  String fileType, @JsonKey(name: 'mime_type')  String mimeType, @JsonKey(name: 'original_name')  String originalName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadedFileModel() when $default != null:
return $default(_that.id,_that.fileName,_that.fileSize,_that.fileType,_that.mimeType,_that.originalName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'file_name')  String fileName, @JsonKey(name: 'file_size')  int fileSize, @JsonKey(name: 'file_type')  String fileType, @JsonKey(name: 'mime_type')  String mimeType, @JsonKey(name: 'original_name')  String originalName)  $default,) {final _that = this;
switch (_that) {
case _UploadedFileModel():
return $default(_that.id,_that.fileName,_that.fileSize,_that.fileType,_that.mimeType,_that.originalName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'file_name')  String fileName, @JsonKey(name: 'file_size')  int fileSize, @JsonKey(name: 'file_type')  String fileType, @JsonKey(name: 'mime_type')  String mimeType, @JsonKey(name: 'original_name')  String originalName)?  $default,) {final _that = this;
switch (_that) {
case _UploadedFileModel() when $default != null:
return $default(_that.id,_that.fileName,_that.fileSize,_that.fileType,_that.mimeType,_that.originalName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UploadedFileModel extends UploadedFileModel {
  const _UploadedFileModel({@JsonKey(readValue: readMongoId) this.id = '', @JsonKey(name: 'file_name') this.fileName = '', @JsonKey(name: 'file_size') this.fileSize = 0, @JsonKey(name: 'file_type') this.fileType = '', @JsonKey(name: 'mime_type') this.mimeType = '', @JsonKey(name: 'original_name') this.originalName = ''}): super._();
  factory _UploadedFileModel.fromJson(Map<String, dynamic> json) => _$UploadedFileModelFromJson(json);

@override@JsonKey(readValue: readMongoId) final  String id;
@override@JsonKey(name: 'file_name') final  String fileName;
@override@JsonKey(name: 'file_size') final  int fileSize;
@override@JsonKey(name: 'file_type') final  String fileType;
@override@JsonKey(name: 'mime_type') final  String mimeType;
@override@JsonKey(name: 'original_name') final  String originalName;

/// Create a copy of UploadedFileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadedFileModelCopyWith<_UploadedFileModel> get copyWith => __$UploadedFileModelCopyWithImpl<_UploadedFileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UploadedFileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadedFileModel&&(identical(other.id, id) || other.id == id)&&(identical(other.fileName, fileName) || other.fileName == fileName)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.fileType, fileType) || other.fileType == fileType)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType)&&(identical(other.originalName, originalName) || other.originalName == originalName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fileName,fileSize,fileType,mimeType,originalName);

@override
String toString() {
  return 'UploadedFileModel(id: $id, fileName: $fileName, fileSize: $fileSize, fileType: $fileType, mimeType: $mimeType, originalName: $originalName)';
}


}

/// @nodoc
abstract mixin class _$UploadedFileModelCopyWith<$Res> implements $UploadedFileModelCopyWith<$Res> {
  factory _$UploadedFileModelCopyWith(_UploadedFileModel value, $Res Function(_UploadedFileModel) _then) = __$UploadedFileModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: readMongoId) String id,@JsonKey(name: 'file_name') String fileName,@JsonKey(name: 'file_size') int fileSize,@JsonKey(name: 'file_type') String fileType,@JsonKey(name: 'mime_type') String mimeType,@JsonKey(name: 'original_name') String originalName
});




}
/// @nodoc
class __$UploadedFileModelCopyWithImpl<$Res>
    implements _$UploadedFileModelCopyWith<$Res> {
  __$UploadedFileModelCopyWithImpl(this._self, this._then);

  final _UploadedFileModel _self;
  final $Res Function(_UploadedFileModel) _then;

/// Create a copy of UploadedFileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fileName = null,Object? fileSize = null,Object? fileType = null,Object? mimeType = null,Object? originalName = null,}) {
  return _then(_UploadedFileModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fileName: null == fileName ? _self.fileName : fileName // ignore: cast_nullable_to_non_nullable
as String,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,fileType: null == fileType ? _self.fileType : fileType // ignore: cast_nullable_to_non_nullable
as String,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
