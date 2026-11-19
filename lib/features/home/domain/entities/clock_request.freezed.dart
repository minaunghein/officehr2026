// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClockRequest {

 String get id; String get userId; String get userName; String get branchId; String get branchTitle; String get dateId; String get punchTime; ClockPunchType get punchType; double? get latitude; double? get longitude; double? get accuracy; String? get locationLabel; double? get distanceKm; double? get branchRadiusKm; bool get autoFlagged; String get reason; ClockRequestStatus get status; String? get decisionNote; String get deciderName; DateTime? get decidedAt; DateTime? get createdAt;
/// Create a copy of ClockRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockRequestCopyWith<ClockRequest> get copyWith => _$ClockRequestCopyWithImpl<ClockRequest>(this as ClockRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchTitle, branchTitle) || other.branchTitle == branchTitle)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.locationLabel, locationLabel) || other.locationLabel == locationLabel)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.branchRadiusKm, branchRadiusKm) || other.branchRadiusKm == branchRadiusKm)&&(identical(other.autoFlagged, autoFlagged) || other.autoFlagged == autoFlagged)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.decisionNote, decisionNote) || other.decisionNote == decisionNote)&&(identical(other.deciderName, deciderName) || other.deciderName == deciderName)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,userName,branchId,branchTitle,dateId,punchTime,punchType,latitude,longitude,accuracy,locationLabel,distanceKm,branchRadiusKm,autoFlagged,reason,status,decisionNote,deciderName,decidedAt,createdAt]);

@override
String toString() {
  return 'ClockRequest(id: $id, userId: $userId, userName: $userName, branchId: $branchId, branchTitle: $branchTitle, dateId: $dateId, punchTime: $punchTime, punchType: $punchType, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, locationLabel: $locationLabel, distanceKm: $distanceKm, branchRadiusKm: $branchRadiusKm, autoFlagged: $autoFlagged, reason: $reason, status: $status, decisionNote: $decisionNote, deciderName: $deciderName, decidedAt: $decidedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ClockRequestCopyWith<$Res>  {
  factory $ClockRequestCopyWith(ClockRequest value, $Res Function(ClockRequest) _then) = _$ClockRequestCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String userName, String branchId, String branchTitle, String dateId, String punchTime, ClockPunchType punchType, double? latitude, double? longitude, double? accuracy, String? locationLabel, double? distanceKm, double? branchRadiusKm, bool autoFlagged, String reason, ClockRequestStatus status, String? decisionNote, String deciderName, DateTime? decidedAt, DateTime? createdAt
});




}
/// @nodoc
class _$ClockRequestCopyWithImpl<$Res>
    implements $ClockRequestCopyWith<$Res> {
  _$ClockRequestCopyWithImpl(this._self, this._then);

  final ClockRequest _self;
  final $Res Function(ClockRequest) _then;

/// Create a copy of ClockRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? userName = null,Object? branchId = null,Object? branchTitle = null,Object? dateId = null,Object? punchTime = null,Object? punchType = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? locationLabel = freezed,Object? distanceKm = freezed,Object? branchRadiusKm = freezed,Object? autoFlagged = null,Object? reason = null,Object? status = null,Object? decisionNote = freezed,Object? deciderName = null,Object? decidedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,branchTitle: null == branchTitle ? _self.branchTitle : branchTitle // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as ClockPunchType,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,locationLabel: freezed == locationLabel ? _self.locationLabel : locationLabel // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,branchRadiusKm: freezed == branchRadiusKm ? _self.branchRadiusKm : branchRadiusKm // ignore: cast_nullable_to_non_nullable
as double?,autoFlagged: null == autoFlagged ? _self.autoFlagged : autoFlagged // ignore: cast_nullable_to_non_nullable
as bool,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClockRequestStatus,decisionNote: freezed == decisionNote ? _self.decisionNote : decisionNote // ignore: cast_nullable_to_non_nullable
as String?,deciderName: null == deciderName ? _self.deciderName : deciderName // ignore: cast_nullable_to_non_nullable
as String,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ClockRequest].
extension ClockRequestPatterns on ClockRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockRequest value)  $default,){
final _that = this;
switch (_that) {
case _ClockRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockRequest value)?  $default,){
final _that = this;
switch (_that) {
case _ClockRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String userName,  String branchId,  String branchTitle,  String dateId,  String punchTime,  ClockPunchType punchType,  double? latitude,  double? longitude,  double? accuracy,  String? locationLabel,  double? distanceKm,  double? branchRadiusKm,  bool autoFlagged,  String reason,  ClockRequestStatus status,  String? decisionNote,  String deciderName,  DateTime? decidedAt,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockRequest() when $default != null:
return $default(_that.id,_that.userId,_that.userName,_that.branchId,_that.branchTitle,_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.distanceKm,_that.branchRadiusKm,_that.autoFlagged,_that.reason,_that.status,_that.decisionNote,_that.deciderName,_that.decidedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String userName,  String branchId,  String branchTitle,  String dateId,  String punchTime,  ClockPunchType punchType,  double? latitude,  double? longitude,  double? accuracy,  String? locationLabel,  double? distanceKm,  double? branchRadiusKm,  bool autoFlagged,  String reason,  ClockRequestStatus status,  String? decisionNote,  String deciderName,  DateTime? decidedAt,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ClockRequest():
return $default(_that.id,_that.userId,_that.userName,_that.branchId,_that.branchTitle,_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.distanceKm,_that.branchRadiusKm,_that.autoFlagged,_that.reason,_that.status,_that.decisionNote,_that.deciderName,_that.decidedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String userName,  String branchId,  String branchTitle,  String dateId,  String punchTime,  ClockPunchType punchType,  double? latitude,  double? longitude,  double? accuracy,  String? locationLabel,  double? distanceKm,  double? branchRadiusKm,  bool autoFlagged,  String reason,  ClockRequestStatus status,  String? decisionNote,  String deciderName,  DateTime? decidedAt,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ClockRequest() when $default != null:
return $default(_that.id,_that.userId,_that.userName,_that.branchId,_that.branchTitle,_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.distanceKm,_that.branchRadiusKm,_that.autoFlagged,_that.reason,_that.status,_that.decisionNote,_that.deciderName,_that.decidedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _ClockRequest extends ClockRequest {
  const _ClockRequest({this.id = '', this.userId = '', this.userName = '', this.branchId = '', this.branchTitle = '', this.dateId = '', this.punchTime = '', this.punchType = ClockPunchType.clockIn, this.latitude, this.longitude, this.accuracy, this.locationLabel, this.distanceKm, this.branchRadiusKm, this.autoFlagged = false, this.reason = '', this.status = ClockRequestStatus.pending, this.decisionNote, this.deciderName = '', this.decidedAt, this.createdAt}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String userId;
@override@JsonKey() final  String userName;
@override@JsonKey() final  String branchId;
@override@JsonKey() final  String branchTitle;
@override@JsonKey() final  String dateId;
@override@JsonKey() final  String punchTime;
@override@JsonKey() final  ClockPunchType punchType;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;
@override final  String? locationLabel;
@override final  double? distanceKm;
@override final  double? branchRadiusKm;
@override@JsonKey() final  bool autoFlagged;
@override@JsonKey() final  String reason;
@override@JsonKey() final  ClockRequestStatus status;
@override final  String? decisionNote;
@override@JsonKey() final  String deciderName;
@override final  DateTime? decidedAt;
@override final  DateTime? createdAt;

/// Create a copy of ClockRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockRequestCopyWith<_ClockRequest> get copyWith => __$ClockRequestCopyWithImpl<_ClockRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.userName, userName) || other.userName == userName)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.branchTitle, branchTitle) || other.branchTitle == branchTitle)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.locationLabel, locationLabel) || other.locationLabel == locationLabel)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.branchRadiusKm, branchRadiusKm) || other.branchRadiusKm == branchRadiusKm)&&(identical(other.autoFlagged, autoFlagged) || other.autoFlagged == autoFlagged)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.decisionNote, decisionNote) || other.decisionNote == decisionNote)&&(identical(other.deciderName, deciderName) || other.deciderName == deciderName)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,userId,userName,branchId,branchTitle,dateId,punchTime,punchType,latitude,longitude,accuracy,locationLabel,distanceKm,branchRadiusKm,autoFlagged,reason,status,decisionNote,deciderName,decidedAt,createdAt]);

@override
String toString() {
  return 'ClockRequest(id: $id, userId: $userId, userName: $userName, branchId: $branchId, branchTitle: $branchTitle, dateId: $dateId, punchTime: $punchTime, punchType: $punchType, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, locationLabel: $locationLabel, distanceKm: $distanceKm, branchRadiusKm: $branchRadiusKm, autoFlagged: $autoFlagged, reason: $reason, status: $status, decisionNote: $decisionNote, deciderName: $deciderName, decidedAt: $decidedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ClockRequestCopyWith<$Res> implements $ClockRequestCopyWith<$Res> {
  factory _$ClockRequestCopyWith(_ClockRequest value, $Res Function(_ClockRequest) _then) = __$ClockRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String userName, String branchId, String branchTitle, String dateId, String punchTime, ClockPunchType punchType, double? latitude, double? longitude, double? accuracy, String? locationLabel, double? distanceKm, double? branchRadiusKm, bool autoFlagged, String reason, ClockRequestStatus status, String? decisionNote, String deciderName, DateTime? decidedAt, DateTime? createdAt
});




}
/// @nodoc
class __$ClockRequestCopyWithImpl<$Res>
    implements _$ClockRequestCopyWith<$Res> {
  __$ClockRequestCopyWithImpl(this._self, this._then);

  final _ClockRequest _self;
  final $Res Function(_ClockRequest) _then;

/// Create a copy of ClockRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? userName = null,Object? branchId = null,Object? branchTitle = null,Object? dateId = null,Object? punchTime = null,Object? punchType = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? locationLabel = freezed,Object? distanceKm = freezed,Object? branchRadiusKm = freezed,Object? autoFlagged = null,Object? reason = null,Object? status = null,Object? decisionNote = freezed,Object? deciderName = null,Object? decidedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_ClockRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,userName: null == userName ? _self.userName : userName // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,branchTitle: null == branchTitle ? _self.branchTitle : branchTitle // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as ClockPunchType,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,locationLabel: freezed == locationLabel ? _self.locationLabel : locationLabel // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,branchRadiusKm: freezed == branchRadiusKm ? _self.branchRadiusKm : branchRadiusKm // ignore: cast_nullable_to_non_nullable
as double?,autoFlagged: null == autoFlagged ? _self.autoFlagged : autoFlagged // ignore: cast_nullable_to_non_nullable
as bool,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClockRequestStatus,decisionNote: freezed == decisionNote ? _self.decisionNote : decisionNote // ignore: cast_nullable_to_non_nullable
as String?,deciderName: null == deciderName ? _self.deciderName : deciderName // ignore: cast_nullable_to_non_nullable
as String,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
