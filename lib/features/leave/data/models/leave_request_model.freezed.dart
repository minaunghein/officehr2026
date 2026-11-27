// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'leave_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LeaveRequestModel {

@JsonKey(readValue: readMongoId) String get id;@JsonKey(name: 'employee_id') String get employeeId;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'leave_type_id') String get leaveTypeId;@JsonKey(name: 'company_id') String get companyId;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'end_date') String? get endDate;@JsonKey(name: 'is_half_day') bool get isHalfDay;@JsonKey(name: 'half_day_period') String get halfDayPeriod;@JsonKey(name: 'total_days') double get totalDays; String get reason;@JsonKey(name: 'attachment_url', readValue: _readAttachment) String get attachmentUrl; String get status;@JsonKey(name: 'approved_by') String? get approvedBy;@JsonKey(name: 'approved_at') String? get approvedAt;@JsonKey(name: 'rejection_reason') String? get rejectionReason; String? get createdAt; String? get updatedAt;@JsonKey(name: 'leave_type') LeaveTypeModel? get leaveType;@JsonKey(name: 'user') LeaveRequestUserModel? get user;
/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaveRequestModelCopyWith<LeaveRequestModel> get copyWith => _$LeaveRequestModelCopyWithImpl<LeaveRequestModel>(this as LeaveRequestModel, _$identity);

  /// Serializes this LeaveRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaveRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.leaveTypeId, leaveTypeId) || other.leaveTypeId == leaveTypeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.halfDayPeriod, halfDayPeriod) || other.halfDayPeriod == halfDayPeriod)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,userId,leaveTypeId,companyId,startDate,endDate,isHalfDay,halfDayPeriod,totalDays,reason,attachmentUrl,status,approvedBy,approvedAt,rejectionReason,createdAt,updatedAt,leaveType,user]);

@override
String toString() {
  return 'LeaveRequestModel(id: $id, employeeId: $employeeId, userId: $userId, leaveTypeId: $leaveTypeId, companyId: $companyId, startDate: $startDate, endDate: $endDate, isHalfDay: $isHalfDay, halfDayPeriod: $halfDayPeriod, totalDays: $totalDays, reason: $reason, attachmentUrl: $attachmentUrl, status: $status, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, createdAt: $createdAt, updatedAt: $updatedAt, leaveType: $leaveType, user: $user)';
}


}

/// @nodoc
abstract mixin class $LeaveRequestModelCopyWith<$Res>  {
  factory $LeaveRequestModelCopyWith(LeaveRequestModel value, $Res Function(LeaveRequestModel) _then) = _$LeaveRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: readMongoId) String id,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'leave_type_id') String leaveTypeId,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate,@JsonKey(name: 'is_half_day') bool isHalfDay,@JsonKey(name: 'half_day_period') String halfDayPeriod,@JsonKey(name: 'total_days') double totalDays, String reason,@JsonKey(name: 'attachment_url', readValue: _readAttachment) String attachmentUrl, String status,@JsonKey(name: 'approved_by') String? approvedBy,@JsonKey(name: 'approved_at') String? approvedAt,@JsonKey(name: 'rejection_reason') String? rejectionReason, String? createdAt, String? updatedAt,@JsonKey(name: 'leave_type') LeaveTypeModel? leaveType,@JsonKey(name: 'user') LeaveRequestUserModel? user
});


$LeaveTypeModelCopyWith<$Res>? get leaveType;$LeaveRequestUserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$LeaveRequestModelCopyWithImpl<$Res>
    implements $LeaveRequestModelCopyWith<$Res> {
  _$LeaveRequestModelCopyWithImpl(this._self, this._then);

  final LeaveRequestModel _self;
  final $Res Function(LeaveRequestModel) _then;

/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? userId = null,Object? leaveTypeId = null,Object? companyId = null,Object? startDate = freezed,Object? endDate = freezed,Object? isHalfDay = null,Object? halfDayPeriod = null,Object? totalDays = null,Object? reason = null,Object? attachmentUrl = null,Object? status = null,Object? approvedBy = freezed,Object? approvedAt = freezed,Object? rejectionReason = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? leaveType = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,leaveTypeId: null == leaveTypeId ? _self.leaveTypeId : leaveTypeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,halfDayPeriod: null == halfDayPeriod ? _self.halfDayPeriod : halfDayPeriod // ignore: cast_nullable_to_non_nullable
as String,totalDays: null == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,attachmentUrl: null == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as LeaveTypeModel?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as LeaveRequestUserModel?,
  ));
}
/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveTypeModelCopyWith<$Res>? get leaveType {
    if (_self.leaveType == null) {
    return null;
  }

  return $LeaveTypeModelCopyWith<$Res>(_self.leaveType!, (value) {
    return _then(_self.copyWith(leaveType: value));
  });
}/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveRequestUserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $LeaveRequestUserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [LeaveRequestModel].
extension LeaveRequestModelPatterns on LeaveRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaveRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaveRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaveRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaveRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaveRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaveRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'leave_type_id')  String leaveTypeId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'half_day_period')  String halfDayPeriod, @JsonKey(name: 'total_days')  double totalDays,  String reason, @JsonKey(name: 'attachment_url', readValue: _readAttachment)  String attachmentUrl,  String status, @JsonKey(name: 'approved_by')  String? approvedBy, @JsonKey(name: 'approved_at')  String? approvedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason,  String? createdAt,  String? updatedAt, @JsonKey(name: 'leave_type')  LeaveTypeModel? leaveType, @JsonKey(name: 'user')  LeaveRequestUserModel? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaveRequestModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.userId,_that.leaveTypeId,_that.companyId,_that.startDate,_that.endDate,_that.isHalfDay,_that.halfDayPeriod,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt,_that.leaveType,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'leave_type_id')  String leaveTypeId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'half_day_period')  String halfDayPeriod, @JsonKey(name: 'total_days')  double totalDays,  String reason, @JsonKey(name: 'attachment_url', readValue: _readAttachment)  String attachmentUrl,  String status, @JsonKey(name: 'approved_by')  String? approvedBy, @JsonKey(name: 'approved_at')  String? approvedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason,  String? createdAt,  String? updatedAt, @JsonKey(name: 'leave_type')  LeaveTypeModel? leaveType, @JsonKey(name: 'user')  LeaveRequestUserModel? user)  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestModel():
return $default(_that.id,_that.employeeId,_that.userId,_that.leaveTypeId,_that.companyId,_that.startDate,_that.endDate,_that.isHalfDay,_that.halfDayPeriod,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt,_that.leaveType,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'leave_type_id')  String leaveTypeId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'half_day_period')  String halfDayPeriod, @JsonKey(name: 'total_days')  double totalDays,  String reason, @JsonKey(name: 'attachment_url', readValue: _readAttachment)  String attachmentUrl,  String status, @JsonKey(name: 'approved_by')  String? approvedBy, @JsonKey(name: 'approved_at')  String? approvedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason,  String? createdAt,  String? updatedAt, @JsonKey(name: 'leave_type')  LeaveTypeModel? leaveType, @JsonKey(name: 'user')  LeaveRequestUserModel? user)?  $default,) {final _that = this;
switch (_that) {
case _LeaveRequestModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.userId,_that.leaveTypeId,_that.companyId,_that.startDate,_that.endDate,_that.isHalfDay,_that.halfDayPeriod,_that.totalDays,_that.reason,_that.attachmentUrl,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt,_that.leaveType,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaveRequestModel extends LeaveRequestModel {
  const _LeaveRequestModel({@JsonKey(readValue: readMongoId) this.id = '', @JsonKey(name: 'employee_id') this.employeeId = '', @JsonKey(name: 'user_id') this.userId = '', @JsonKey(name: 'leave_type_id') this.leaveTypeId = '', @JsonKey(name: 'company_id') this.companyId = '', @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, @JsonKey(name: 'is_half_day') this.isHalfDay = false, @JsonKey(name: 'half_day_period') this.halfDayPeriod = 'AM', @JsonKey(name: 'total_days') this.totalDays = 0, this.reason = '', @JsonKey(name: 'attachment_url', readValue: _readAttachment) this.attachmentUrl = '', this.status = 'PENDING', @JsonKey(name: 'approved_by') this.approvedBy, @JsonKey(name: 'approved_at') this.approvedAt, @JsonKey(name: 'rejection_reason') this.rejectionReason, this.createdAt, this.updatedAt, @JsonKey(name: 'leave_type') this.leaveType, @JsonKey(name: 'user') this.user}): super._();
  factory _LeaveRequestModel.fromJson(Map<String, dynamic> json) => _$LeaveRequestModelFromJson(json);

@override@JsonKey(readValue: readMongoId) final  String id;
@override@JsonKey(name: 'employee_id') final  String employeeId;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'leave_type_id') final  String leaveTypeId;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'end_date') final  String? endDate;
@override@JsonKey(name: 'is_half_day') final  bool isHalfDay;
@override@JsonKey(name: 'half_day_period') final  String halfDayPeriod;
@override@JsonKey(name: 'total_days') final  double totalDays;
@override@JsonKey() final  String reason;
@override@JsonKey(name: 'attachment_url', readValue: _readAttachment) final  String attachmentUrl;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'approved_by') final  String? approvedBy;
@override@JsonKey(name: 'approved_at') final  String? approvedAt;
@override@JsonKey(name: 'rejection_reason') final  String? rejectionReason;
@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: 'leave_type') final  LeaveTypeModel? leaveType;
@override@JsonKey(name: 'user') final  LeaveRequestUserModel? user;

/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaveRequestModelCopyWith<_LeaveRequestModel> get copyWith => __$LeaveRequestModelCopyWithImpl<_LeaveRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaveRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaveRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.leaveTypeId, leaveTypeId) || other.leaveTypeId == leaveTypeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.halfDayPeriod, halfDayPeriod) || other.halfDayPeriod == halfDayPeriod)&&(identical(other.totalDays, totalDays) || other.totalDays == totalDays)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.attachmentUrl, attachmentUrl) || other.attachmentUrl == attachmentUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.leaveType, leaveType) || other.leaveType == leaveType)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,employeeId,userId,leaveTypeId,companyId,startDate,endDate,isHalfDay,halfDayPeriod,totalDays,reason,attachmentUrl,status,approvedBy,approvedAt,rejectionReason,createdAt,updatedAt,leaveType,user]);

@override
String toString() {
  return 'LeaveRequestModel(id: $id, employeeId: $employeeId, userId: $userId, leaveTypeId: $leaveTypeId, companyId: $companyId, startDate: $startDate, endDate: $endDate, isHalfDay: $isHalfDay, halfDayPeriod: $halfDayPeriod, totalDays: $totalDays, reason: $reason, attachmentUrl: $attachmentUrl, status: $status, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, createdAt: $createdAt, updatedAt: $updatedAt, leaveType: $leaveType, user: $user)';
}


}

/// @nodoc
abstract mixin class _$LeaveRequestModelCopyWith<$Res> implements $LeaveRequestModelCopyWith<$Res> {
  factory _$LeaveRequestModelCopyWith(_LeaveRequestModel value, $Res Function(_LeaveRequestModel) _then) = __$LeaveRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: readMongoId) String id,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'leave_type_id') String leaveTypeId,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate,@JsonKey(name: 'is_half_day') bool isHalfDay,@JsonKey(name: 'half_day_period') String halfDayPeriod,@JsonKey(name: 'total_days') double totalDays, String reason,@JsonKey(name: 'attachment_url', readValue: _readAttachment) String attachmentUrl, String status,@JsonKey(name: 'approved_by') String? approvedBy,@JsonKey(name: 'approved_at') String? approvedAt,@JsonKey(name: 'rejection_reason') String? rejectionReason, String? createdAt, String? updatedAt,@JsonKey(name: 'leave_type') LeaveTypeModel? leaveType,@JsonKey(name: 'user') LeaveRequestUserModel? user
});


@override $LeaveTypeModelCopyWith<$Res>? get leaveType;@override $LeaveRequestUserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$LeaveRequestModelCopyWithImpl<$Res>
    implements _$LeaveRequestModelCopyWith<$Res> {
  __$LeaveRequestModelCopyWithImpl(this._self, this._then);

  final _LeaveRequestModel _self;
  final $Res Function(_LeaveRequestModel) _then;

/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? userId = null,Object? leaveTypeId = null,Object? companyId = null,Object? startDate = freezed,Object? endDate = freezed,Object? isHalfDay = null,Object? halfDayPeriod = null,Object? totalDays = null,Object? reason = null,Object? attachmentUrl = null,Object? status = null,Object? approvedBy = freezed,Object? approvedAt = freezed,Object? rejectionReason = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? leaveType = freezed,Object? user = freezed,}) {
  return _then(_LeaveRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,leaveTypeId: null == leaveTypeId ? _self.leaveTypeId : leaveTypeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,halfDayPeriod: null == halfDayPeriod ? _self.halfDayPeriod : halfDayPeriod // ignore: cast_nullable_to_non_nullable
as String,totalDays: null == totalDays ? _self.totalDays : totalDays // ignore: cast_nullable_to_non_nullable
as double,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,attachmentUrl: null == attachmentUrl ? _self.attachmentUrl : attachmentUrl // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,leaveType: freezed == leaveType ? _self.leaveType : leaveType // ignore: cast_nullable_to_non_nullable
as LeaveTypeModel?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as LeaveRequestUserModel?,
  ));
}

/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveTypeModelCopyWith<$Res>? get leaveType {
    if (_self.leaveType == null) {
    return null;
  }

  return $LeaveTypeModelCopyWith<$Res>(_self.leaveType!, (value) {
    return _then(_self.copyWith(leaveType: value));
  });
}/// Create a copy of LeaveRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaveRequestUserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $LeaveRequestUserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
