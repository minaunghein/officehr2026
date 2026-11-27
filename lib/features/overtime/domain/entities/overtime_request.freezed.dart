// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overtime_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OvertimeRequest {

 String get id; String get userId; String get companyId; String get requesterName; String get requesterEmail; DateTime? get date; String get startTime; String get endTime; OvertimeType get otType; String get reason; double? get approvedHours; OvertimeStatus get status; String? get approvedBy; DateTime? get approvedAt; String? get rejectionReason; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of OvertimeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvertimeRequestCopyWith<OvertimeRequest> get copyWith => _$OvertimeRequestCopyWithImpl<OvertimeRequest>(this as OvertimeRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.requesterEmail, requesterEmail) || other.requesterEmail == requesterEmail)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.otType, otType) || other.otType == otType)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.approvedHours, approvedHours) || other.approvedHours == approvedHours)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,requesterName,requesterEmail,date,startTime,endTime,otType,reason,approvedHours,status,approvedBy,approvedAt,rejectionReason,createdAt,updatedAt);

@override
String toString() {
  return 'OvertimeRequest(id: $id, userId: $userId, companyId: $companyId, requesterName: $requesterName, requesterEmail: $requesterEmail, date: $date, startTime: $startTime, endTime: $endTime, otType: $otType, reason: $reason, approvedHours: $approvedHours, status: $status, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $OvertimeRequestCopyWith<$Res>  {
  factory $OvertimeRequestCopyWith(OvertimeRequest value, $Res Function(OvertimeRequest) _then) = _$OvertimeRequestCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String companyId, String requesterName, String requesterEmail, DateTime? date, String startTime, String endTime, OvertimeType otType, String reason, double? approvedHours, OvertimeStatus status, String? approvedBy, DateTime? approvedAt, String? rejectionReason, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$OvertimeRequestCopyWithImpl<$Res>
    implements $OvertimeRequestCopyWith<$Res> {
  _$OvertimeRequestCopyWithImpl(this._self, this._then);

  final OvertimeRequest _self;
  final $Res Function(OvertimeRequest) _then;

/// Create a copy of OvertimeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? requesterName = null,Object? requesterEmail = null,Object? date = freezed,Object? startTime = null,Object? endTime = null,Object? otType = null,Object? reason = null,Object? approvedHours = freezed,Object? status = null,Object? approvedBy = freezed,Object? approvedAt = freezed,Object? rejectionReason = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,requesterEmail: null == requesterEmail ? _self.requesterEmail : requesterEmail // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,otType: null == otType ? _self.otType : otType // ignore: cast_nullable_to_non_nullable
as OvertimeType,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,approvedHours: freezed == approvedHours ? _self.approvedHours : approvedHours // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OvertimeStatus,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [OvertimeRequest].
extension OvertimeRequestPatterns on OvertimeRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvertimeRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvertimeRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvertimeRequest value)  $default,){
final _that = this;
switch (_that) {
case _OvertimeRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvertimeRequest value)?  $default,){
final _that = this;
switch (_that) {
case _OvertimeRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String companyId,  String requesterName,  String requesterEmail,  DateTime? date,  String startTime,  String endTime,  OvertimeType otType,  String reason,  double? approvedHours,  OvertimeStatus status,  String? approvedBy,  DateTime? approvedAt,  String? rejectionReason,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvertimeRequest() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.requesterName,_that.requesterEmail,_that.date,_that.startTime,_that.endTime,_that.otType,_that.reason,_that.approvedHours,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String companyId,  String requesterName,  String requesterEmail,  DateTime? date,  String startTime,  String endTime,  OvertimeType otType,  String reason,  double? approvedHours,  OvertimeStatus status,  String? approvedBy,  DateTime? approvedAt,  String? rejectionReason,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _OvertimeRequest():
return $default(_that.id,_that.userId,_that.companyId,_that.requesterName,_that.requesterEmail,_that.date,_that.startTime,_that.endTime,_that.otType,_that.reason,_that.approvedHours,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String companyId,  String requesterName,  String requesterEmail,  DateTime? date,  String startTime,  String endTime,  OvertimeType otType,  String reason,  double? approvedHours,  OvertimeStatus status,  String? approvedBy,  DateTime? approvedAt,  String? rejectionReason,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _OvertimeRequest() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.requesterName,_that.requesterEmail,_that.date,_that.startTime,_that.endTime,_that.otType,_that.reason,_that.approvedHours,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _OvertimeRequest extends OvertimeRequest {
  const _OvertimeRequest({this.id = '', this.userId = '', this.companyId = '', this.requesterName = '', this.requesterEmail = '', this.date, this.startTime = '', this.endTime = '', this.otType = OvertimeType.ot1, this.reason = '', this.approvedHours, this.status = OvertimeStatus.pending, this.approvedBy, this.approvedAt, this.rejectionReason, this.createdAt, this.updatedAt}): super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String userId;
@override@JsonKey() final  String companyId;
@override@JsonKey() final  String requesterName;
@override@JsonKey() final  String requesterEmail;
@override final  DateTime? date;
@override@JsonKey() final  String startTime;
@override@JsonKey() final  String endTime;
@override@JsonKey() final  OvertimeType otType;
@override@JsonKey() final  String reason;
@override final  double? approvedHours;
@override@JsonKey() final  OvertimeStatus status;
@override final  String? approvedBy;
@override final  DateTime? approvedAt;
@override final  String? rejectionReason;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of OvertimeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvertimeRequestCopyWith<_OvertimeRequest> get copyWith => __$OvertimeRequestCopyWithImpl<_OvertimeRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OvertimeRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.requesterName, requesterName) || other.requesterName == requesterName)&&(identical(other.requesterEmail, requesterEmail) || other.requesterEmail == requesterEmail)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.otType, otType) || other.otType == otType)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.approvedHours, approvedHours) || other.approvedHours == approvedHours)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,requesterName,requesterEmail,date,startTime,endTime,otType,reason,approvedHours,status,approvedBy,approvedAt,rejectionReason,createdAt,updatedAt);

@override
String toString() {
  return 'OvertimeRequest(id: $id, userId: $userId, companyId: $companyId, requesterName: $requesterName, requesterEmail: $requesterEmail, date: $date, startTime: $startTime, endTime: $endTime, otType: $otType, reason: $reason, approvedHours: $approvedHours, status: $status, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$OvertimeRequestCopyWith<$Res> implements $OvertimeRequestCopyWith<$Res> {
  factory _$OvertimeRequestCopyWith(_OvertimeRequest value, $Res Function(_OvertimeRequest) _then) = __$OvertimeRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String companyId, String requesterName, String requesterEmail, DateTime? date, String startTime, String endTime, OvertimeType otType, String reason, double? approvedHours, OvertimeStatus status, String? approvedBy, DateTime? approvedAt, String? rejectionReason, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$OvertimeRequestCopyWithImpl<$Res>
    implements _$OvertimeRequestCopyWith<$Res> {
  __$OvertimeRequestCopyWithImpl(this._self, this._then);

  final _OvertimeRequest _self;
  final $Res Function(_OvertimeRequest) _then;

/// Create a copy of OvertimeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? requesterName = null,Object? requesterEmail = null,Object? date = freezed,Object? startTime = null,Object? endTime = null,Object? otType = null,Object? reason = null,Object? approvedHours = freezed,Object? status = null,Object? approvedBy = freezed,Object? approvedAt = freezed,Object? rejectionReason = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_OvertimeRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,requesterName: null == requesterName ? _self.requesterName : requesterName // ignore: cast_nullable_to_non_nullable
as String,requesterEmail: null == requesterEmail ? _self.requesterEmail : requesterEmail // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,otType: null == otType ? _self.otType : otType // ignore: cast_nullable_to_non_nullable
as OvertimeType,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,approvedHours: freezed == approvedHours ? _self.approvedHours : approvedHours // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as OvertimeStatus,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
