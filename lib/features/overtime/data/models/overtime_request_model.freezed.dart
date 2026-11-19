// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overtime_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OvertimeRequestModel {

@JsonKey(readValue: readMongoId) String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'company_id') String get companyId;@JsonKey(fromJson: parseLocalDateTime) DateTime? get date;@JsonKey(name: 'start_time') String get startTime;@JsonKey(name: 'end_time') String get endTime;@JsonKey(name: 'ot_type') String get otType; String get reason;@JsonKey(name: 'approved_hours') double? get approvedHours; String get status;@JsonKey(name: 'approved_by') String? get approvedBy;@JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) DateTime? get approvedAt;@JsonKey(name: 'rejection_reason') String? get rejectionReason;@JsonKey(fromJson: parseLocalDateTime) DateTime? get createdAt;@JsonKey(fromJson: parseLocalDateTime) DateTime? get updatedAt; OvertimeRequestUserModel? get user;
/// Create a copy of OvertimeRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvertimeRequestModelCopyWith<OvertimeRequestModel> get copyWith => _$OvertimeRequestModelCopyWithImpl<OvertimeRequestModel>(this as OvertimeRequestModel, _$identity);

  /// Serializes this OvertimeRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.otType, otType) || other.otType == otType)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.approvedHours, approvedHours) || other.approvedHours == approvedHours)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,date,startTime,endTime,otType,reason,approvedHours,status,approvedBy,approvedAt,rejectionReason,createdAt,updatedAt,user);

@override
String toString() {
  return 'OvertimeRequestModel(id: $id, userId: $userId, companyId: $companyId, date: $date, startTime: $startTime, endTime: $endTime, otType: $otType, reason: $reason, approvedHours: $approvedHours, status: $status, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
}


}

/// @nodoc
abstract mixin class $OvertimeRequestModelCopyWith<$Res>  {
  factory $OvertimeRequestModelCopyWith(OvertimeRequestModel value, $Res Function(OvertimeRequestModel) _then) = _$OvertimeRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: readMongoId) String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'company_id') String companyId,@JsonKey(fromJson: parseLocalDateTime) DateTime? date,@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime,@JsonKey(name: 'ot_type') String otType, String reason,@JsonKey(name: 'approved_hours') double? approvedHours, String status,@JsonKey(name: 'approved_by') String? approvedBy,@JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) DateTime? approvedAt,@JsonKey(name: 'rejection_reason') String? rejectionReason,@JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt, OvertimeRequestUserModel? user
});


$OvertimeRequestUserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$OvertimeRequestModelCopyWithImpl<$Res>
    implements $OvertimeRequestModelCopyWith<$Res> {
  _$OvertimeRequestModelCopyWithImpl(this._self, this._then);

  final OvertimeRequestModel _self;
  final $Res Function(OvertimeRequestModel) _then;

/// Create a copy of OvertimeRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? date = freezed,Object? startTime = null,Object? endTime = null,Object? otType = null,Object? reason = null,Object? approvedHours = freezed,Object? status = null,Object? approvedBy = freezed,Object? approvedAt = freezed,Object? rejectionReason = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? user = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,otType: null == otType ? _self.otType : otType // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,approvedHours: freezed == approvedHours ? _self.approvedHours : approvedHours // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as OvertimeRequestUserModel?,
  ));
}
/// Create a copy of OvertimeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvertimeRequestUserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $OvertimeRequestUserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [OvertimeRequestModel].
extension OvertimeRequestModelPatterns on OvertimeRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvertimeRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvertimeRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvertimeRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _OvertimeRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvertimeRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _OvertimeRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(fromJson: parseLocalDateTime)  DateTime? date, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime, @JsonKey(name: 'ot_type')  String otType,  String reason, @JsonKey(name: 'approved_hours')  double? approvedHours,  String status, @JsonKey(name: 'approved_by')  String? approvedBy, @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime)  DateTime? approvedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt,  OvertimeRequestUserModel? user)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvertimeRequestModel() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.date,_that.startTime,_that.endTime,_that.otType,_that.reason,_that.approvedHours,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt,_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(fromJson: parseLocalDateTime)  DateTime? date, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime, @JsonKey(name: 'ot_type')  String otType,  String reason, @JsonKey(name: 'approved_hours')  double? approvedHours,  String status, @JsonKey(name: 'approved_by')  String? approvedBy, @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime)  DateTime? approvedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt,  OvertimeRequestUserModel? user)  $default,) {final _that = this;
switch (_that) {
case _OvertimeRequestModel():
return $default(_that.id,_that.userId,_that.companyId,_that.date,_that.startTime,_that.endTime,_that.otType,_that.reason,_that.approvedHours,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt,_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: readMongoId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(fromJson: parseLocalDateTime)  DateTime? date, @JsonKey(name: 'start_time')  String startTime, @JsonKey(name: 'end_time')  String endTime, @JsonKey(name: 'ot_type')  String otType,  String reason, @JsonKey(name: 'approved_hours')  double? approvedHours,  String status, @JsonKey(name: 'approved_by')  String? approvedBy, @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime)  DateTime? approvedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt,  OvertimeRequestUserModel? user)?  $default,) {final _that = this;
switch (_that) {
case _OvertimeRequestModel() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.date,_that.startTime,_that.endTime,_that.otType,_that.reason,_that.approvedHours,_that.status,_that.approvedBy,_that.approvedAt,_that.rejectionReason,_that.createdAt,_that.updatedAt,_that.user);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OvertimeRequestModel extends OvertimeRequestModel {
  const _OvertimeRequestModel({@JsonKey(readValue: readMongoId) this.id = '', @JsonKey(name: 'user_id') this.userId = '', @JsonKey(name: 'company_id') this.companyId = '', @JsonKey(fromJson: parseLocalDateTime) this.date, @JsonKey(name: 'start_time') this.startTime = '', @JsonKey(name: 'end_time') this.endTime = '', @JsonKey(name: 'ot_type') this.otType = 'OT1', this.reason = '', @JsonKey(name: 'approved_hours') this.approvedHours, this.status = 'PENDING', @JsonKey(name: 'approved_by') this.approvedBy, @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) this.approvedAt, @JsonKey(name: 'rejection_reason') this.rejectionReason, @JsonKey(fromJson: parseLocalDateTime) this.createdAt, @JsonKey(fromJson: parseLocalDateTime) this.updatedAt, this.user}): super._();
  factory _OvertimeRequestModel.fromJson(Map<String, dynamic> json) => _$OvertimeRequestModelFromJson(json);

@override@JsonKey(readValue: readMongoId) final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(fromJson: parseLocalDateTime) final  DateTime? date;
@override@JsonKey(name: 'start_time') final  String startTime;
@override@JsonKey(name: 'end_time') final  String endTime;
@override@JsonKey(name: 'ot_type') final  String otType;
@override@JsonKey() final  String reason;
@override@JsonKey(name: 'approved_hours') final  double? approvedHours;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'approved_by') final  String? approvedBy;
@override@JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) final  DateTime? approvedAt;
@override@JsonKey(name: 'rejection_reason') final  String? rejectionReason;
@override@JsonKey(fromJson: parseLocalDateTime) final  DateTime? createdAt;
@override@JsonKey(fromJson: parseLocalDateTime) final  DateTime? updatedAt;
@override final  OvertimeRequestUserModel? user;

/// Create a copy of OvertimeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvertimeRequestModelCopyWith<_OvertimeRequestModel> get copyWith => __$OvertimeRequestModelCopyWithImpl<_OvertimeRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OvertimeRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OvertimeRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.otType, otType) || other.otType == otType)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.approvedHours, approvedHours) || other.approvedHours == approvedHours)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,date,startTime,endTime,otType,reason,approvedHours,status,approvedBy,approvedAt,rejectionReason,createdAt,updatedAt,user);

@override
String toString() {
  return 'OvertimeRequestModel(id: $id, userId: $userId, companyId: $companyId, date: $date, startTime: $startTime, endTime: $endTime, otType: $otType, reason: $reason, approvedHours: $approvedHours, status: $status, approvedBy: $approvedBy, approvedAt: $approvedAt, rejectionReason: $rejectionReason, createdAt: $createdAt, updatedAt: $updatedAt, user: $user)';
}


}

/// @nodoc
abstract mixin class _$OvertimeRequestModelCopyWith<$Res> implements $OvertimeRequestModelCopyWith<$Res> {
  factory _$OvertimeRequestModelCopyWith(_OvertimeRequestModel value, $Res Function(_OvertimeRequestModel) _then) = __$OvertimeRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: readMongoId) String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'company_id') String companyId,@JsonKey(fromJson: parseLocalDateTime) DateTime? date,@JsonKey(name: 'start_time') String startTime,@JsonKey(name: 'end_time') String endTime,@JsonKey(name: 'ot_type') String otType, String reason,@JsonKey(name: 'approved_hours') double? approvedHours, String status,@JsonKey(name: 'approved_by') String? approvedBy,@JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) DateTime? approvedAt,@JsonKey(name: 'rejection_reason') String? rejectionReason,@JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt, OvertimeRequestUserModel? user
});


@override $OvertimeRequestUserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$OvertimeRequestModelCopyWithImpl<$Res>
    implements _$OvertimeRequestModelCopyWith<$Res> {
  __$OvertimeRequestModelCopyWithImpl(this._self, this._then);

  final _OvertimeRequestModel _self;
  final $Res Function(_OvertimeRequestModel) _then;

/// Create a copy of OvertimeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? date = freezed,Object? startTime = null,Object? endTime = null,Object? otType = null,Object? reason = null,Object? approvedHours = freezed,Object? status = null,Object? approvedBy = freezed,Object? approvedAt = freezed,Object? rejectionReason = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? user = freezed,}) {
  return _then(_OvertimeRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,startTime: null == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String,endTime: null == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String,otType: null == otType ? _self.otType : otType // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,approvedHours: freezed == approvedHours ? _self.approvedHours : approvedHours // ignore: cast_nullable_to_non_nullable
as double?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as OvertimeRequestUserModel?,
  ));
}

/// Create a copy of OvertimeRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OvertimeRequestUserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $OvertimeRequestUserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$OvertimeRequestUserModel {

@JsonKey(readValue: readMongoId) String get id; String get username; String get email;
/// Create a copy of OvertimeRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OvertimeRequestUserModelCopyWith<OvertimeRequestUserModel> get copyWith => _$OvertimeRequestUserModelCopyWithImpl<OvertimeRequestUserModel>(this as OvertimeRequestUserModel, _$identity);

  /// Serializes this OvertimeRequestUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OvertimeRequestUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email);

@override
String toString() {
  return 'OvertimeRequestUserModel(id: $id, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class $OvertimeRequestUserModelCopyWith<$Res>  {
  factory $OvertimeRequestUserModelCopyWith(OvertimeRequestUserModel value, $Res Function(OvertimeRequestUserModel) _then) = _$OvertimeRequestUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: readMongoId) String id, String username, String email
});




}
/// @nodoc
class _$OvertimeRequestUserModelCopyWithImpl<$Res>
    implements $OvertimeRequestUserModelCopyWith<$Res> {
  _$OvertimeRequestUserModelCopyWithImpl(this._self, this._then);

  final OvertimeRequestUserModel _self;
  final $Res Function(OvertimeRequestUserModel) _then;

/// Create a copy of OvertimeRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? username = null,Object? email = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OvertimeRequestUserModel].
extension OvertimeRequestUserModelPatterns on OvertimeRequestUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OvertimeRequestUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OvertimeRequestUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OvertimeRequestUserModel value)  $default,){
final _that = this;
switch (_that) {
case _OvertimeRequestUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OvertimeRequestUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _OvertimeRequestUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id,  String username,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OvertimeRequestUserModel() when $default != null:
return $default(_that.id,_that.username,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: readMongoId)  String id,  String username,  String email)  $default,) {final _that = this;
switch (_that) {
case _OvertimeRequestUserModel():
return $default(_that.id,_that.username,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: readMongoId)  String id,  String username,  String email)?  $default,) {final _that = this;
switch (_that) {
case _OvertimeRequestUserModel() when $default != null:
return $default(_that.id,_that.username,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OvertimeRequestUserModel implements OvertimeRequestUserModel {
  const _OvertimeRequestUserModel({@JsonKey(readValue: readMongoId) this.id = '', this.username = '', this.email = ''});
  factory _OvertimeRequestUserModel.fromJson(Map<String, dynamic> json) => _$OvertimeRequestUserModelFromJson(json);

@override@JsonKey(readValue: readMongoId) final  String id;
@override@JsonKey() final  String username;
@override@JsonKey() final  String email;

/// Create a copy of OvertimeRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OvertimeRequestUserModelCopyWith<_OvertimeRequestUserModel> get copyWith => __$OvertimeRequestUserModelCopyWithImpl<_OvertimeRequestUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OvertimeRequestUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OvertimeRequestUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email);

@override
String toString() {
  return 'OvertimeRequestUserModel(id: $id, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class _$OvertimeRequestUserModelCopyWith<$Res> implements $OvertimeRequestUserModelCopyWith<$Res> {
  factory _$OvertimeRequestUserModelCopyWith(_OvertimeRequestUserModel value, $Res Function(_OvertimeRequestUserModel) _then) = __$OvertimeRequestUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: readMongoId) String id, String username, String email
});




}
/// @nodoc
class __$OvertimeRequestUserModelCopyWithImpl<$Res>
    implements _$OvertimeRequestUserModelCopyWith<$Res> {
  __$OvertimeRequestUserModelCopyWithImpl(this._self, this._then);

  final _OvertimeRequestUserModel _self;
  final $Res Function(_OvertimeRequestUserModel) _then;

/// Create a copy of OvertimeRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,}) {
  return _then(_OvertimeRequestUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
