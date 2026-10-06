// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_amendment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceAmendment {

 String get id; String get userId; String get companyId; String get dateId; String get amendmentType; String? get requestedClockIn; String? get requestedClockOut; String get reason; String get status; String? get approvedBy; bool get deleted; DateTime? get createdAt; DateTime? get updatedAt; DateTime? get approvedAt;
/// Create a copy of AttendanceAmendment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceAmendmentCopyWith<AttendanceAmendment> get copyWith => _$AttendanceAmendmentCopyWithImpl<AttendanceAmendment>(this as AttendanceAmendment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceAmendment&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.amendmentType, amendmentType) || other.amendmentType == amendmentType)&&(identical(other.requestedClockIn, requestedClockIn) || other.requestedClockIn == requestedClockIn)&&(identical(other.requestedClockOut, requestedClockOut) || other.requestedClockOut == requestedClockOut)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,dateId,amendmentType,requestedClockIn,requestedClockOut,reason,status,approvedBy,deleted,createdAt,updatedAt,approvedAt);

@override
String toString() {
  return 'AttendanceAmendment(id: $id, userId: $userId, companyId: $companyId, dateId: $dateId, amendmentType: $amendmentType, requestedClockIn: $requestedClockIn, requestedClockOut: $requestedClockOut, reason: $reason, status: $status, approvedBy: $approvedBy, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, approvedAt: $approvedAt)';
}


}

/// @nodoc
abstract mixin class $AttendanceAmendmentCopyWith<$Res>  {
  factory $AttendanceAmendmentCopyWith(AttendanceAmendment value, $Res Function(AttendanceAmendment) _then) = _$AttendanceAmendmentCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String companyId, String dateId, String amendmentType, String? requestedClockIn, String? requestedClockOut, String reason, String status, String? approvedBy, bool deleted, DateTime? createdAt, DateTime? updatedAt, DateTime? approvedAt
});




}
/// @nodoc
class _$AttendanceAmendmentCopyWithImpl<$Res>
    implements $AttendanceAmendmentCopyWith<$Res> {
  _$AttendanceAmendmentCopyWithImpl(this._self, this._then);

  final AttendanceAmendment _self;
  final $Res Function(AttendanceAmendment) _then;

/// Create a copy of AttendanceAmendment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? dateId = null,Object? amendmentType = null,Object? requestedClockIn = freezed,Object? requestedClockOut = freezed,Object? reason = null,Object? status = null,Object? approvedBy = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? approvedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,amendmentType: null == amendmentType ? _self.amendmentType : amendmentType // ignore: cast_nullable_to_non_nullable
as String,requestedClockIn: freezed == requestedClockIn ? _self.requestedClockIn : requestedClockIn // ignore: cast_nullable_to_non_nullable
as String?,requestedClockOut: freezed == requestedClockOut ? _self.requestedClockOut : requestedClockOut // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceAmendment].
extension AttendanceAmendmentPatterns on AttendanceAmendment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceAmendment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceAmendment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceAmendment value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceAmendment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceAmendment value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceAmendment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String userId,  String companyId,  String dateId,  String amendmentType,  String? requestedClockIn,  String? requestedClockOut,  String reason,  String status,  String? approvedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt,  DateTime? approvedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceAmendment() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.dateId,_that.amendmentType,_that.requestedClockIn,_that.requestedClockOut,_that.reason,_that.status,_that.approvedBy,_that.deleted,_that.createdAt,_that.updatedAt,_that.approvedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String userId,  String companyId,  String dateId,  String amendmentType,  String? requestedClockIn,  String? requestedClockOut,  String reason,  String status,  String? approvedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt,  DateTime? approvedAt)  $default,) {final _that = this;
switch (_that) {
case _AttendanceAmendment():
return $default(_that.id,_that.userId,_that.companyId,_that.dateId,_that.amendmentType,_that.requestedClockIn,_that.requestedClockOut,_that.reason,_that.status,_that.approvedBy,_that.deleted,_that.createdAt,_that.updatedAt,_that.approvedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String userId,  String companyId,  String dateId,  String amendmentType,  String? requestedClockIn,  String? requestedClockOut,  String reason,  String status,  String? approvedBy,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt,  DateTime? approvedAt)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceAmendment() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.dateId,_that.amendmentType,_that.requestedClockIn,_that.requestedClockOut,_that.reason,_that.status,_that.approvedBy,_that.deleted,_that.createdAt,_that.updatedAt,_that.approvedAt);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceAmendment implements AttendanceAmendment {
  const _AttendanceAmendment({required this.id, required this.userId, required this.companyId, required this.dateId, required this.amendmentType, this.requestedClockIn, this.requestedClockOut, required this.reason, required this.status, this.approvedBy, required this.deleted, this.createdAt, this.updatedAt, this.approvedAt});
  

@override final  String id;
@override final  String userId;
@override final  String companyId;
@override final  String dateId;
@override final  String amendmentType;
@override final  String? requestedClockIn;
@override final  String? requestedClockOut;
@override final  String reason;
@override final  String status;
@override final  String? approvedBy;
@override final  bool deleted;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  DateTime? approvedAt;

/// Create a copy of AttendanceAmendment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceAmendmentCopyWith<_AttendanceAmendment> get copyWith => __$AttendanceAmendmentCopyWithImpl<_AttendanceAmendment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceAmendment&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.amendmentType, amendmentType) || other.amendmentType == amendmentType)&&(identical(other.requestedClockIn, requestedClockIn) || other.requestedClockIn == requestedClockIn)&&(identical(other.requestedClockOut, requestedClockOut) || other.requestedClockOut == requestedClockOut)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,dateId,amendmentType,requestedClockIn,requestedClockOut,reason,status,approvedBy,deleted,createdAt,updatedAt,approvedAt);

@override
String toString() {
  return 'AttendanceAmendment(id: $id, userId: $userId, companyId: $companyId, dateId: $dateId, amendmentType: $amendmentType, requestedClockIn: $requestedClockIn, requestedClockOut: $requestedClockOut, reason: $reason, status: $status, approvedBy: $approvedBy, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, approvedAt: $approvedAt)';
}


}

/// @nodoc
abstract mixin class _$AttendanceAmendmentCopyWith<$Res> implements $AttendanceAmendmentCopyWith<$Res> {
  factory _$AttendanceAmendmentCopyWith(_AttendanceAmendment value, $Res Function(_AttendanceAmendment) _then) = __$AttendanceAmendmentCopyWithImpl;
@override @useResult
$Res call({
 String id, String userId, String companyId, String dateId, String amendmentType, String? requestedClockIn, String? requestedClockOut, String reason, String status, String? approvedBy, bool deleted, DateTime? createdAt, DateTime? updatedAt, DateTime? approvedAt
});




}
/// @nodoc
class __$AttendanceAmendmentCopyWithImpl<$Res>
    implements _$AttendanceAmendmentCopyWith<$Res> {
  __$AttendanceAmendmentCopyWithImpl(this._self, this._then);

  final _AttendanceAmendment _self;
  final $Res Function(_AttendanceAmendment) _then;

/// Create a copy of AttendanceAmendment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? dateId = null,Object? amendmentType = null,Object? requestedClockIn = freezed,Object? requestedClockOut = freezed,Object? reason = null,Object? status = null,Object? approvedBy = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? approvedAt = freezed,}) {
  return _then(_AttendanceAmendment(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,amendmentType: null == amendmentType ? _self.amendmentType : amendmentType // ignore: cast_nullable_to_non_nullable
as String,requestedClockIn: freezed == requestedClockIn ? _self.requestedClockIn : requestedClockIn // ignore: cast_nullable_to_non_nullable
as String?,requestedClockOut: freezed == requestedClockOut ? _self.requestedClockOut : requestedClockOut // ignore: cast_nullable_to_non_nullable
as String?,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,approvedBy: freezed == approvedBy ? _self.approvedBy : approvedBy // ignore: cast_nullable_to_non_nullable
as String?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,approvedAt: freezed == approvedAt ? _self.approvedAt : approvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
