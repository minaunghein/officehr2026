// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LeaveRequest {

 String get id; String get employeeId; String get leaveTypeId; String get companyId; String? get startDate; String? get endDate; bool get isHalfDay; HalfDayPeriod get halfDayPeriod; double get totalDays; String get reason; String get attachmentUrl; LeaveStatus get status; String? get approvedBy; String? get createdAt; String? get updatedAt; LeaveType? get leaveType;
/// Create a copy of LeaveRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveRequestCopyWith<LeaveRequest> get copyWith => _$LeaveRequestCopyWithImpl<LeaveRequest>(this as LeaveRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.leaveTypeId, leaveTypeId) || other.leaveTypeId == leaveTypeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.halfDayPeriod, halfDayPeriod) || other.halfDayPeriod == halfDayPeriod)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType));
}


@override
int get hashCode => Object.hash(runtimeType,id,employeeId,leaveTypeId,companyId,startDate,endDate,isHalfDay,halfDayPeriod,totalDays,reason,attachmentUrl,status,approvedBy,createdAt,updatedAt,leaveType);

@override
String toString() {
  return 'LeaveRequest(id: $id, employeeId: $employeeId, leaveTypeId: $leaveTypeId, companyId: $companyId, startDate: $startDate, endDate: $endDate, isHalfDay: $isHalfDay, halfDayPeriod: $halfDayPeriod, totalDays: $totalDays, reason: $reason, attachmentUrl: $attachmentUrl, status: $status, approvedBy: $approvedBy, createdAt: $createdAt, updatedAt: $updatedAt, leaveType: $leaveType)';
}


}

/// @nodoc
abstract mixin class $LeaveRequestCopyWith<$Res>  {
  factory $LeaveRequestCopyWith(LeaveRequest value, $Res Function(LeaveRequest) _then) = _$LeaveRequestCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String leaveTypeId, String companyId, String? startDate, String? endDate, bool isHalfDay, HalfDayPeriod halfDayPeriod, double totalDays, String reason, String attachmentUrl, LeaveStatus status, String? approvedBy, String? createdAt, String? updatedAt, LeaveType? leaveType
});


$LeaveTypeCopyWith<$Res>? get leaveType;

}
/// @nodoc
class _$LeaveRequestCopyWithImpl<$Res>
    implements $LeaveRequestCopyWith<$Res> {
  _$LeaveRequestCopyWithImpl(this._self, this._then);

  final LeaveRequest _self;
  final $Res Function(LeaveRequest) _then;

/// Create a copy of LeaveRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? leaveTypeId = null,Object? companyId = null,Object? startDate = freezed,Object? endDate = freezed,Object? isHalfDay = null,Object? halfDayPeriod = null,Object? totalDays = null,Object? reason = null,Object? attachmentUrl = null,Object? status = null,Object? approvedBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? leaveType = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,leaveTypeId: null == leaveTypeId ? _self.leaveTypeId : leaveTypeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,halfDayPeriod: null == halfDayPeriod ? _self.halfDayPeriod : halfDayPeriod // ignore: cast_nullable_to_non_nullable
as HalfDayPeriod,totalDays: null == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,attachmentUrl: null == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LeaveStatus,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as LeaveType?,
  ));
}
/// Create a copy of LeaveRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveTypeCopyWith<$Res>? get leaveType {
    if (_self.leaveType == null) {
    return null;
  }

  return $LeaveTypeCopyWith<$Res>(_self.leaveType!, (value) {
    return _then(_self.copyWith(leaveType: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaveRequest].
extension LeaveRequestPatterns on LeaveRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveRequest value)  $default,){
final _that = this;
switch (_that) {
case _LeaveRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveRequest value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String leaveTypeId,  String companyId,  String? startDate,  String? endDate,  bool isHalfDay,  HalfDayPeriod halfDayPeriod,  double totalDays,  String reason,  String attachmentUrl,  LeaveStatus status,  String? approvedBy,  String? createdAt,  String? updatedAt,  LeaveType? leaveType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveRequest() when $default != null:
return $default(_that.id,_that.employeeId,_that.leaveTypeId,_that.companyId,_that.startDate,_that.endDate,_that.isHalfDay,_that.halfDayPeriod,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.approvedBy,_that.createdAt,_that.updatedAt,_that.leaveType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String leaveTypeId,  String companyId,  String? startDate,  String? endDate,  bool isHalfDay,  HalfDayPeriod halfDayPeriod,  double totalDays,  String reason,  String attachmentUrl,  LeaveStatus status,  String? approvedBy,  String? createdAt,  String? updatedAt,  LeaveType? leaveType)  $default,) {final _that = this;
switch (_that) {
case _LeaveRequest():
return $default(_that.id,_that.employeeId,_that.leaveTypeId,_that.companyId,_that.startDate,_that.endDate,_that.isHalfDay,_that.halfDayPeriod,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.approvedBy,_that.createdAt,_that.updatedAt,_that.leaveType);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String leaveTypeId,  String companyId,  String? startDate,  String? endDate,  bool isHalfDay,  HalfDayPeriod halfDayPeriod,  double totalDays,  String reason,  String attachmentUrl,  LeaveStatus status,  String? approvedBy,  String? createdAt,  String? updatedAt,  LeaveType? leaveType)?  $default,) {final _that = this;
switch (_that) {
case _LeaveRequest() when $default != null:
return $default(_that.id,_that.employeeId,_that.leaveTypeId,_that.companyId,_that.startDate,_that.endDate,_that.isHalfDay,_that.halfDayPeriod,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.approvedBy,_that.createdAt,_that.updatedAt,_that.leaveType);case _:
  return null;

}
}

}

/// @nodoc


class _LeaveRequest extends LeaveRequest {
  const _LeaveRequest({required this.id, this.employeeId = '', this.leaveTypeId = '', this.companyId = '', this.startDate, this.endDate, this.isHalfDay = false, this.halfDayPeriod = HalfDayPeriod.am, this.totalDays = 0, this.reason = '', this.attachmentUrl = '', this.status = LeaveStatus.unknown, this.approvedBy, this.createdAt, this.updatedAt, this.leaveType}): super._();
  

@override final  String id;
@override@JsonKey() final  String employeeId;
@override@JsonKey() final  String leaveTypeId;
@override@JsonKey() final  String companyId;
@override final  String? startDate;
@override final  String? endDate;
@override@JsonKey() final  bool isHalfDay;
@override@JsonKey() final  HalfDayPeriod halfDayPeriod;
@override@JsonKey() final  double totalDays;
@override@JsonKey() final  String reason;
@override@JsonKey() final  String attachmentUrl;
@override@JsonKey() final  LeaveStatus status;
@override final  String? approvedBy;
@override final  String? createdAt;
@override final  String? updatedAt;
@override final  LeaveType? leaveType;

/// Create a copy of LeaveRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveRequestCopyWith<_LeaveRequest> get copyWith => __$LeaveRequestCopyWithImpl<_LeaveRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveRequest&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.leaveTypeId, leaveTypeId) || other.leaveTypeId == leaveTypeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.halfDayPeriod, halfDayPeriod) || other.halfDayPeriod == halfDayPeriod)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType));
}


@override
int get hashCode => Object.hash(runtimeType,id,employeeId,leaveTypeId,companyId,startDate,endDate,isHalfDay,halfDayPeriod,totalDays,reason,attachmentUrl,status,approvedBy,createdAt,updatedAt,leaveType);

@override
String toString() {
  return 'LeaveRequest(id: $id, employeeId: $employeeId, leaveTypeId: $leaveTypeId, companyId: $companyId, startDate: $startDate, endDate: $endDate, isHalfDay: $isHalfDay, halfDayPeriod: $halfDayPeriod, totalDays: $totalDays, reason: $reason, attachmentUrl: $attachmentUrl, status: $status, approvedBy: $approvedBy, createdAt: $createdAt, updatedAt: $updatedAt, leaveType: $leaveType)';
}


}

/// @nodoc
abstract mixin class _$LeaveRequestCopyWith<$Res> implements $LeaveRequestCopyWith<$Res> {
  factory _$LeaveRequestCopyWith(_LeaveRequest value, $Res Function(_LeaveRequest) _then) = __$LeaveRequestCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String leaveTypeId, String companyId, String? startDate, String? endDate, bool isHalfDay, HalfDayPeriod halfDayPeriod, double totalDays, String reason, String attachmentUrl, LeaveStatus status, String? approvedBy, String? createdAt, String? updatedAt, LeaveType? leaveType
});


@override $LeaveTypeCopyWith<$Res>? get leaveType;

}
/// @nodoc
class __$LeaveRequestCopyWithImpl<$Res>
    implements _$LeaveRequestCopyWith<$Res> {
  __$LeaveRequestCopyWithImpl(this._self, this._then);

  final _LeaveRequest _self;
  final $Res Function(_LeaveRequest) _then;

/// Create a copy of LeaveRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? leaveTypeId = null,Object? companyId = null,Object? startDate = freezed,Object? endDate = freezed,Object? isHalfDay = null,Object? halfDayPeriod = null,Object? totalDays = null,Object? reason = null,Object? attachmentUrl = null,Object? status = null,Object? approvedBy = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? leaveType = freezed,}) {
  return _then(_LeaveRequest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,leaveTypeId: null == leaveTypeId ? _self.leaveTypeId : leaveTypeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,halfDayPeriod: null == halfDayPeriod ? _self.halfDayPeriod : halfDayPeriod // ignore: cast_nullable_to_non_nullable
as HalfDayPeriod,totalDays: null == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,attachmentUrl: null == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as LeaveStatus,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as LeaveType?,
  ));
}

/// Create a copy of LeaveRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveTypeCopyWith<$Res>? get leaveType {
    if (_self.leaveType == null) {
    return null;
  }

  return $LeaveTypeCopyWith<$Res>(_self.leaveType!, (value) {
    return _then(_self.copyWith(leaveType: value));
  });
}
}

// dart format on
