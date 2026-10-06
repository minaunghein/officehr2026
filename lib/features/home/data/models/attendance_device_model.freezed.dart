// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceDeviceModel {

@JsonKey(name: 'device_id') String? get deviceId;@JsonKey(name: 'device_type') String? get deviceType;@JsonKey(name: 'ip_address') String? get ipAddress;@JsonKey(name: 'user_agent') String? get userAgent;
/// Create a copy of AttendanceDeviceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceDeviceModelCopyWith<AttendanceDeviceModel> get copyWith => _$AttendanceDeviceModelCopyWithImpl<AttendanceDeviceModel>(this as AttendanceDeviceModel, _$identity);

  /// Serializes this AttendanceDeviceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceDeviceModel&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceType,ipAddress,userAgent);

@override
String toString() {
  return 'AttendanceDeviceModel(deviceId: $deviceId, deviceType: $deviceType, ipAddress: $ipAddress, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class $AttendanceDeviceModelCopyWith<$Res>  {
  factory $AttendanceDeviceModelCopyWith(AttendanceDeviceModel value, $Res Function(AttendanceDeviceModel) _then) = _$AttendanceDeviceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_type') String? deviceType,@JsonKey(name: 'ip_address') String? ipAddress,@JsonKey(name: 'user_agent') String? userAgent
});




}
/// @nodoc
class _$AttendanceDeviceModelCopyWithImpl<$Res>
    implements $AttendanceDeviceModelCopyWith<$Res> {
  _$AttendanceDeviceModelCopyWithImpl(this._self, this._then);

  final AttendanceDeviceModel _self;
  final $Res Function(AttendanceDeviceModel) _then;

/// Create a copy of AttendanceDeviceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? deviceId = freezed,Object? deviceType = freezed,Object? ipAddress = freezed,Object? userAgent = freezed,}) {
  return _then(_self.copyWith(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceDeviceModel].
extension AttendanceDeviceModelPatterns on AttendanceDeviceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceDeviceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceDeviceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceDeviceModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceDeviceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceDeviceModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceDeviceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_type')  String? deviceType, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'user_agent')  String? userAgent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceDeviceModel() when $default != null:
return $default(_that.deviceId,_that.deviceType,_that.ipAddress,_that.userAgent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_type')  String? deviceType, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'user_agent')  String? userAgent)  $default,) {final _that = this;
switch (_that) {
case _AttendanceDeviceModel():
return $default(_that.deviceId,_that.deviceType,_that.ipAddress,_that.userAgent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'device_id')  String? deviceId, @JsonKey(name: 'device_type')  String? deviceType, @JsonKey(name: 'ip_address')  String? ipAddress, @JsonKey(name: 'user_agent')  String? userAgent)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceDeviceModel() when $default != null:
return $default(_that.deviceId,_that.deviceType,_that.ipAddress,_that.userAgent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceDeviceModel extends AttendanceDeviceModel {
  const _AttendanceDeviceModel({@JsonKey(name: 'device_id') this.deviceId, @JsonKey(name: 'device_type') this.deviceType, @JsonKey(name: 'ip_address') this.ipAddress, @JsonKey(name: 'user_agent') this.userAgent}): super._();
  factory _AttendanceDeviceModel.fromJson(Map<String, dynamic> json) => _$AttendanceDeviceModelFromJson(json);

@override@JsonKey(name: 'device_id') final  String? deviceId;
@override@JsonKey(name: 'device_type') final  String? deviceType;
@override@JsonKey(name: 'ip_address') final  String? ipAddress;
@override@JsonKey(name: 'user_agent') final  String? userAgent;

/// Create a copy of AttendanceDeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceDeviceModelCopyWith<_AttendanceDeviceModel> get copyWith => __$AttendanceDeviceModelCopyWithImpl<_AttendanceDeviceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceDeviceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceDeviceModel&&(identical(other.deviceId, deviceId) || other.deviceId == deviceId)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType)&&(identical(other.ipAddress, ipAddress) || other.ipAddress == ipAddress)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,deviceId,deviceType,ipAddress,userAgent);

@override
String toString() {
  return 'AttendanceDeviceModel(deviceId: $deviceId, deviceType: $deviceType, ipAddress: $ipAddress, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class _$AttendanceDeviceModelCopyWith<$Res> implements $AttendanceDeviceModelCopyWith<$Res> {
  factory _$AttendanceDeviceModelCopyWith(_AttendanceDeviceModel value, $Res Function(_AttendanceDeviceModel) _then) = __$AttendanceDeviceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'device_id') String? deviceId,@JsonKey(name: 'device_type') String? deviceType,@JsonKey(name: 'ip_address') String? ipAddress,@JsonKey(name: 'user_agent') String? userAgent
});




}
/// @nodoc
class __$AttendanceDeviceModelCopyWithImpl<$Res>
    implements _$AttendanceDeviceModelCopyWith<$Res> {
  __$AttendanceDeviceModelCopyWithImpl(this._self, this._then);

  final _AttendanceDeviceModel _self;
  final $Res Function(_AttendanceDeviceModel) _then;

/// Create a copy of AttendanceDeviceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? deviceId = freezed,Object? deviceType = freezed,Object? ipAddress = freezed,Object? userAgent = freezed,}) {
  return _then(_AttendanceDeviceModel(
deviceId: freezed == deviceId ? _self.deviceId : deviceId // ignore: cast_nullable_to_non_nullable
as String?,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,ipAddress: freezed == ipAddress ? _self.ipAddress : ipAddress // ignore: cast_nullable_to_non_nullable
as String?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
