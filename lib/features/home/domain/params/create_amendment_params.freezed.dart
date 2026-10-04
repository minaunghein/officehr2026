// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_amendment_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateAmendmentParams {

@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'date_id') String get dateId;@JsonKey(name: 'amendment_type') String get amendmentType;@JsonKey(name: 'requested_clock_in') String? get requestedClockIn;@JsonKey(name: 'requested_clock_out') String? get requestedClockOut; String get reason;
/// Create a copy of CreateAmendmentParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateAmendmentParamsCopyWith<CreateAmendmentParams> get copyWith => _$CreateAmendmentParamsCopyWithImpl<CreateAmendmentParams>(this as CreateAmendmentParams, _$identity);

  /// Serializes this CreateAmendmentParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateAmendmentParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.amendmentType, amendmentType) || other.amendmentType == amendmentType)&&(identical(other.requestedClockIn, requestedClockIn) || other.requestedClockIn == requestedClockIn)&&(identical(other.requestedClockOut, requestedClockOut) || other.requestedClockOut == requestedClockOut)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,dateId,amendmentType,requestedClockIn,requestedClockOut,reason);

@override
String toString() {
  return 'CreateAmendmentParams(userId: $userId, dateId: $dateId, amendmentType: $amendmentType, requestedClockIn: $requestedClockIn, requestedClockOut: $requestedClockOut, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $CreateAmendmentParamsCopyWith<$Res>  {
  factory $CreateAmendmentParamsCopyWith(CreateAmendmentParams value, $Res Function(CreateAmendmentParams) _then) = _$CreateAmendmentParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'date_id') String dateId,@JsonKey(name: 'amendment_type') String amendmentType,@JsonKey(name: 'requested_clock_in') String? requestedClockIn,@JsonKey(name: 'requested_clock_out') String? requestedClockOut, String reason
});




}
/// @nodoc
class _$CreateAmendmentParamsCopyWithImpl<$Res>
    implements $CreateAmendmentParamsCopyWith<$Res> {
  _$CreateAmendmentParamsCopyWithImpl(this._self, this._then);

  final CreateAmendmentParams _self;
  final $Res Function(CreateAmendmentParams) _then;

/// Create a copy of CreateAmendmentParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? dateId = null,Object? amendmentType = null,Object? requestedClockIn = freezed,Object? requestedClockOut = freezed,Object? reason = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,amendmentType: null == amendmentType ? _self.amendmentType : amendmentType // ignore: cast_nullable_to_non_nullable
as String,requestedClockIn: freezed == requestedClockIn ? _self.requestedClockIn : requestedClockIn // ignore: cast_nullable_to_non_nullable
as String?,requestedClockOut: freezed == requestedClockOut ? _self.requestedClockOut : requestedClockOut // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateAmendmentParams].
extension CreateAmendmentParamsPatterns on CreateAmendmentParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateAmendmentParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateAmendmentParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateAmendmentParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateAmendmentParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateAmendmentParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateAmendmentParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'amendment_type')  String amendmentType, @JsonKey(name: 'requested_clock_in')  String? requestedClockIn, @JsonKey(name: 'requested_clock_out')  String? requestedClockOut,  String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateAmendmentParams() when $default != null:
return $default(_that.userId,_that.dateId,_that.amendmentType,_that.requestedClockIn,_that.requestedClockOut,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'amendment_type')  String amendmentType, @JsonKey(name: 'requested_clock_in')  String? requestedClockIn, @JsonKey(name: 'requested_clock_out')  String? requestedClockOut,  String reason)  $default,) {final _that = this;
switch (_that) {
case _CreateAmendmentParams():
return $default(_that.userId,_that.dateId,_that.amendmentType,_that.requestedClockIn,_that.requestedClockOut,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'amendment_type')  String amendmentType, @JsonKey(name: 'requested_clock_in')  String? requestedClockIn, @JsonKey(name: 'requested_clock_out')  String? requestedClockOut,  String reason)?  $default,) {final _that = this;
switch (_that) {
case _CreateAmendmentParams() when $default != null:
return $default(_that.userId,_that.dateId,_that.amendmentType,_that.requestedClockIn,_that.requestedClockOut,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateAmendmentParams implements CreateAmendmentParams {
  const _CreateAmendmentParams({@JsonKey(name: 'user_id') required this.userId, @JsonKey(name: 'date_id') required this.dateId, @JsonKey(name: 'amendment_type') required this.amendmentType, @JsonKey(name: 'requested_clock_in') this.requestedClockIn, @JsonKey(name: 'requested_clock_out') this.requestedClockOut, required this.reason});
  factory _CreateAmendmentParams.fromJson(Map<String, dynamic> json) => _$CreateAmendmentParamsFromJson(json);

@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'date_id') final  String dateId;
@override@JsonKey(name: 'amendment_type') final  String amendmentType;
@override@JsonKey(name: 'requested_clock_in') final  String? requestedClockIn;
@override@JsonKey(name: 'requested_clock_out') final  String? requestedClockOut;
@override final  String reason;

/// Create a copy of CreateAmendmentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateAmendmentParamsCopyWith<_CreateAmendmentParams> get copyWith => __$CreateAmendmentParamsCopyWithImpl<_CreateAmendmentParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateAmendmentParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateAmendmentParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.amendmentType, amendmentType) || other.amendmentType == amendmentType)&&(identical(other.requestedClockIn, requestedClockIn) || other.requestedClockIn == requestedClockIn)&&(identical(other.requestedClockOut, requestedClockOut) || other.requestedClockOut == requestedClockOut)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,dateId,amendmentType,requestedClockIn,requestedClockOut,reason);

@override
String toString() {
  return 'CreateAmendmentParams(userId: $userId, dateId: $dateId, amendmentType: $amendmentType, requestedClockIn: $requestedClockIn, requestedClockOut: $requestedClockOut, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$CreateAmendmentParamsCopyWith<$Res> implements $CreateAmendmentParamsCopyWith<$Res> {
  factory _$CreateAmendmentParamsCopyWith(_CreateAmendmentParams value, $Res Function(_CreateAmendmentParams) _then) = __$CreateAmendmentParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'date_id') String dateId,@JsonKey(name: 'amendment_type') String amendmentType,@JsonKey(name: 'requested_clock_in') String? requestedClockIn,@JsonKey(name: 'requested_clock_out') String? requestedClockOut, String reason
});




}
/// @nodoc
class __$CreateAmendmentParamsCopyWithImpl<$Res>
    implements _$CreateAmendmentParamsCopyWith<$Res> {
  __$CreateAmendmentParamsCopyWithImpl(this._self, this._then);

  final _CreateAmendmentParams _self;
  final $Res Function(_CreateAmendmentParams) _then;

/// Create a copy of CreateAmendmentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? dateId = null,Object? amendmentType = null,Object? requestedClockIn = freezed,Object? requestedClockOut = freezed,Object? reason = null,}) {
  return _then(_CreateAmendmentParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,amendmentType: null == amendmentType ? _self.amendmentType : amendmentType // ignore: cast_nullable_to_non_nullable
as String,requestedClockIn: freezed == requestedClockIn ? _self.requestedClockIn : requestedClockIn // ignore: cast_nullable_to_non_nullable
as String?,requestedClockOut: freezed == requestedClockOut ? _self.requestedClockOut : requestedClockOut // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
