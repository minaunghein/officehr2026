// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_clock_request_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateClockRequestParams {

@JsonKey(name: 'date_id') String get dateId;@JsonKey(name: 'punch_time') String get punchTime;@JsonKey(name: 'punch_type', toJson: _punchTypeToJson) ClockPunchType get punchType; double get latitude; double get longitude; double? get accuracy;@JsonKey(name: 'location_label') String? get locationLabel; String? get reason;
/// Create a copy of CreateClockRequestParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateClockRequestParamsCopyWith<CreateClockRequestParams> get copyWith => _$CreateClockRequestParamsCopyWithImpl<CreateClockRequestParams>(this as CreateClockRequestParams, _$identity);

  /// Serializes this CreateClockRequestParams to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateClockRequestParams&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.locationLabel, locationLabel) || other.locationLabel == locationLabel)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateId,punchTime,punchType,latitude,longitude,accuracy,locationLabel,reason);

@override
String toString() {
  return 'CreateClockRequestParams(dateId: $dateId, punchTime: $punchTime, punchType: $punchType, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, locationLabel: $locationLabel, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $CreateClockRequestParamsCopyWith<$Res>  {
  factory $CreateClockRequestParamsCopyWith(CreateClockRequestParams value, $Res Function(CreateClockRequestParams) _then) = _$CreateClockRequestParamsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'date_id') String dateId,@JsonKey(name: 'punch_time') String punchTime,@JsonKey(name: 'punch_type', toJson: _punchTypeToJson) ClockPunchType punchType, double latitude, double longitude, double? accuracy,@JsonKey(name: 'location_label') String? locationLabel, String? reason
});




}
/// @nodoc
class _$CreateClockRequestParamsCopyWithImpl<$Res>
    implements $CreateClockRequestParamsCopyWith<$Res> {
  _$CreateClockRequestParamsCopyWithImpl(this._self, this._then);

  final CreateClockRequestParams _self;
  final $Res Function(CreateClockRequestParams) _then;

/// Create a copy of CreateClockRequestParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dateId = null,Object? punchTime = null,Object? punchType = null,Object? latitude = null,Object? longitude = null,Object? accuracy = freezed,Object? locationLabel = freezed,Object? reason = freezed,}) {
  return _then(_self.copyWith(
dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as ClockPunchType,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,locationLabel: freezed == locationLabel ? _self.locationLabel : locationLabel // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateClockRequestParams].
extension CreateClockRequestParamsPatterns on CreateClockRequestParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateClockRequestParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateClockRequestParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateClockRequestParams value)  $default,){
final _that = this;
switch (_that) {
case _CreateClockRequestParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateClockRequestParams value)?  $default,){
final _that = this;
switch (_that) {
case _CreateClockRequestParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type', toJson: _punchTypeToJson)  ClockPunchType punchType,  double latitude,  double longitude,  double? accuracy, @JsonKey(name: 'location_label')  String? locationLabel,  String? reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateClockRequestParams() when $default != null:
return $default(_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type', toJson: _punchTypeToJson)  ClockPunchType punchType,  double latitude,  double longitude,  double? accuracy, @JsonKey(name: 'location_label')  String? locationLabel,  String? reason)  $default,) {final _that = this;
switch (_that) {
case _CreateClockRequestParams():
return $default(_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type', toJson: _punchTypeToJson)  ClockPunchType punchType,  double latitude,  double longitude,  double? accuracy, @JsonKey(name: 'location_label')  String? locationLabel,  String? reason)?  $default,) {final _that = this;
switch (_that) {
case _CreateClockRequestParams() when $default != null:
return $default(_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateClockRequestParams implements CreateClockRequestParams {
  const _CreateClockRequestParams({@JsonKey(name: 'date_id') required this.dateId, @JsonKey(name: 'punch_time') required this.punchTime, @JsonKey(name: 'punch_type', toJson: _punchTypeToJson) required this.punchType, required this.latitude, required this.longitude, this.accuracy, @JsonKey(name: 'location_label') this.locationLabel, this.reason});
  factory _CreateClockRequestParams.fromJson(Map<String, dynamic> json) => _$CreateClockRequestParamsFromJson(json);

@override@JsonKey(name: 'date_id') final  String dateId;
@override@JsonKey(name: 'punch_time') final  String punchTime;
@override@JsonKey(name: 'punch_type', toJson: _punchTypeToJson) final  ClockPunchType punchType;
@override final  double latitude;
@override final  double longitude;
@override final  double? accuracy;
@override@JsonKey(name: 'location_label') final  String? locationLabel;
@override final  String? reason;

/// Create a copy of CreateClockRequestParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateClockRequestParamsCopyWith<_CreateClockRequestParams> get copyWith => __$CreateClockRequestParamsCopyWithImpl<_CreateClockRequestParams>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateClockRequestParamsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateClockRequestParams&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.locationLabel, locationLabel) || other.locationLabel == locationLabel)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dateId,punchTime,punchType,latitude,longitude,accuracy,locationLabel,reason);

@override
String toString() {
  return 'CreateClockRequestParams(dateId: $dateId, punchTime: $punchTime, punchType: $punchType, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, locationLabel: $locationLabel, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$CreateClockRequestParamsCopyWith<$Res> implements $CreateClockRequestParamsCopyWith<$Res> {
  factory _$CreateClockRequestParamsCopyWith(_CreateClockRequestParams value, $Res Function(_CreateClockRequestParams) _then) = __$CreateClockRequestParamsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'date_id') String dateId,@JsonKey(name: 'punch_time') String punchTime,@JsonKey(name: 'punch_type', toJson: _punchTypeToJson) ClockPunchType punchType, double latitude, double longitude, double? accuracy,@JsonKey(name: 'location_label') String? locationLabel, String? reason
});




}
/// @nodoc
class __$CreateClockRequestParamsCopyWithImpl<$Res>
    implements _$CreateClockRequestParamsCopyWith<$Res> {
  __$CreateClockRequestParamsCopyWithImpl(this._self, this._then);

  final _CreateClockRequestParams _self;
  final $Res Function(_CreateClockRequestParams) _then;

/// Create a copy of CreateClockRequestParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dateId = null,Object? punchTime = null,Object? punchType = null,Object? latitude = null,Object? longitude = null,Object? accuracy = freezed,Object? locationLabel = freezed,Object? reason = freezed,}) {
  return _then(_CreateClockRequestParams(
dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as ClockPunchType,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,locationLabel: freezed == locationLabel ? _self.locationLabel : locationLabel // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
