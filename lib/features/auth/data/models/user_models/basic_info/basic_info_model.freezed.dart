// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicInfoModel {

@JsonKey(name: 'first_name') String get firstName;@JsonKey(name: 'last_name') String get lastName; String? get nrc;
/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicInfoModelCopyWith<BasicInfoModel> get copyWith => _$BasicInfoModelCopyWithImpl<BasicInfoModel>(this as BasicInfoModel, _$identity);

  /// Serializes this BasicInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.nrc, nrc) || other.nrc == nrc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,nrc);

@override
String toString() {
  return 'BasicInfoModel(firstName: $firstName, lastName: $lastName, nrc: $nrc)';
}


}

/// @nodoc
abstract mixin class $BasicInfoModelCopyWith<$Res>  {
  factory $BasicInfoModelCopyWith(BasicInfoModel value, $Res Function(BasicInfoModel) _then) = _$BasicInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String? nrc
});




}
/// @nodoc
class _$BasicInfoModelCopyWithImpl<$Res>
    implements $BasicInfoModelCopyWith<$Res> {
  _$BasicInfoModelCopyWithImpl(this._self, this._then);

  final BasicInfoModel _self;
  final $Res Function(BasicInfoModel) _then;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? firstName = null,Object? lastName = null,Object? nrc = freezed,}) {
  return _then(_self.copyWith(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,nrc: freezed == nrc ? _self.nrc : nrc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BasicInfoModel].
extension BasicInfoModelPatterns on BasicInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasicInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasicInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _BasicInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasicInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String? nrc)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.nrc);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String? nrc)  $default,) {final _that = this;
switch (_that) {
case _BasicInfoModel():
return $default(_that.firstName,_that.lastName,_that.nrc);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'first_name')  String firstName, @JsonKey(name: 'last_name')  String lastName,  String? nrc)?  $default,) {final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
return $default(_that.firstName,_that.lastName,_that.nrc);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BasicInfoModel extends BasicInfoModel {
  const _BasicInfoModel({@JsonKey(name: 'first_name') this.firstName = '', @JsonKey(name: 'last_name') this.lastName = '', this.nrc}): super._();
  factory _BasicInfoModel.fromJson(Map<String, dynamic> json) => _$BasicInfoModelFromJson(json);

@override@JsonKey(name: 'first_name') final  String firstName;
@override@JsonKey(name: 'last_name') final  String lastName;
@override final  String? nrc;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasicInfoModelCopyWith<_BasicInfoModel> get copyWith => __$BasicInfoModelCopyWithImpl<_BasicInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasicInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasicInfoModel&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.nrc, nrc) || other.nrc == nrc));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,nrc);

@override
String toString() {
  return 'BasicInfoModel(firstName: $firstName, lastName: $lastName, nrc: $nrc)';
}


}

/// @nodoc
abstract mixin class _$BasicInfoModelCopyWith<$Res> implements $BasicInfoModelCopyWith<$Res> {
  factory _$BasicInfoModelCopyWith(_BasicInfoModel value, $Res Function(_BasicInfoModel) _then) = __$BasicInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'first_name') String firstName,@JsonKey(name: 'last_name') String lastName, String? nrc
});




}
/// @nodoc
class __$BasicInfoModelCopyWithImpl<$Res>
    implements _$BasicInfoModelCopyWith<$Res> {
  __$BasicInfoModelCopyWithImpl(this._self, this._then);

  final _BasicInfoModel _self;
  final $Res Function(_BasicInfoModel) _then;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? nrc = freezed,}) {
  return _then(_BasicInfoModel(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,nrc: freezed == nrc ? _self.nrc : nrc // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
