// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_data_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralDataResponseModel {

 GeneralDataModel get data;
/// Create a copy of GeneralDataResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralDataResponseModelCopyWith<GeneralDataResponseModel> get copyWith => _$GeneralDataResponseModelCopyWithImpl<GeneralDataResponseModel>(this as GeneralDataResponseModel, _$identity);

  /// Serializes this GeneralDataResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralDataResponseModel&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'GeneralDataResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $GeneralDataResponseModelCopyWith<$Res>  {
  factory $GeneralDataResponseModelCopyWith(GeneralDataResponseModel value, $Res Function(GeneralDataResponseModel) _then) = _$GeneralDataResponseModelCopyWithImpl;
@useResult
$Res call({
 GeneralDataModel data
});


$GeneralDataModelCopyWith<$Res> get data;

}
/// @nodoc
class _$GeneralDataResponseModelCopyWithImpl<$Res>
    implements $GeneralDataResponseModelCopyWith<$Res> {
  _$GeneralDataResponseModelCopyWithImpl(this._self, this._then);

  final GeneralDataResponseModel _self;
  final $Res Function(GeneralDataResponseModel) _then;

/// Create a copy of GeneralDataResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GeneralDataModel,
  ));
}
/// Create a copy of GeneralDataResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralDataModelCopyWith<$Res> get data {
  
  return $GeneralDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeneralDataResponseModel].
extension GeneralDataResponseModelPatterns on GeneralDataResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralDataResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralDataResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralDataResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GeneralDataResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralDataResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralDataResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GeneralDataModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralDataResponseModel() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GeneralDataModel data)  $default,) {final _that = this;
switch (_that) {
case _GeneralDataResponseModel():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GeneralDataModel data)?  $default,) {final _that = this;
switch (_that) {
case _GeneralDataResponseModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneralDataResponseModel implements GeneralDataResponseModel {
  const _GeneralDataResponseModel({required this.data});
  factory _GeneralDataResponseModel.fromJson(Map<String, dynamic> json) => _$GeneralDataResponseModelFromJson(json);

@override final  GeneralDataModel data;

/// Create a copy of GeneralDataResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralDataResponseModelCopyWith<_GeneralDataResponseModel> get copyWith => __$GeneralDataResponseModelCopyWithImpl<_GeneralDataResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralDataResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralDataResponseModel&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'GeneralDataResponseModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$GeneralDataResponseModelCopyWith<$Res> implements $GeneralDataResponseModelCopyWith<$Res> {
  factory _$GeneralDataResponseModelCopyWith(_GeneralDataResponseModel value, $Res Function(_GeneralDataResponseModel) _then) = __$GeneralDataResponseModelCopyWithImpl;
@override @useResult
$Res call({
 GeneralDataModel data
});


@override $GeneralDataModelCopyWith<$Res> get data;

}
/// @nodoc
class __$GeneralDataResponseModelCopyWithImpl<$Res>
    implements _$GeneralDataResponseModelCopyWith<$Res> {
  __$GeneralDataResponseModelCopyWithImpl(this._self, this._then);

  final _GeneralDataResponseModel _self;
  final $Res Function(_GeneralDataResponseModel) _then;

/// Create a copy of GeneralDataResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_GeneralDataResponseModel(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as GeneralDataModel,
  ));
}

/// Create a copy of GeneralDataResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneralDataModelCopyWith<$Res> get data {
  
  return $GeneralDataModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
