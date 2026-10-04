// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_amendment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceAmendmentModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'company_id') String get companyId;@JsonKey(name: 'date_id') String get dateId;@JsonKey(name: 'amendment_type') String get amendmentType;@JsonKey(name: 'requested_clock_in') String? get requestedClockIn;@JsonKey(name: 'requested_clock_out') String? get requestedClockOut; String get reason; String get status;@JsonKey(name: 'approved_by') String? get approvedBy; bool get deleted;@JsonKey(fromJson: parseLocalDateTime) DateTime? get createdAt;@JsonKey(fromJson: parseLocalDateTime) DateTime? get updatedAt;@JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) DateTime? get approvedAt;
/// Create a copy of AttendanceAmendmentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceAmendmentModelCopyWith<AttendanceAmendmentModel> get copyWith => _$AttendanceAmendmentModelCopyWithImpl<AttendanceAmendmentModel>(this as AttendanceAmendmentModel, _$identity);

  /// Serializes this AttendanceAmendmentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceAmendmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.amendmentType, amendmentType) || other.amendmentType == amendmentType)&&(identical(other.requestedClockIn, requestedClockIn) || other.requestedClockIn == requestedClockIn)&&(identical(other.requestedClockOut, requestedClockOut) || other.requestedClockOut == requestedClockOut)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,dateId,amendmentType,requestedClockIn,requestedClockOut,reason,status,approvedBy,deleted,createdAt,updatedAt,approvedAt);

@override
String toString() {
  return 'AttendanceAmendmentModel(id: $id, userId: $userId, companyId: $companyId, dateId: $dateId, amendmentType: $amendmentType, requestedClockIn: $requestedClockIn, requestedClockOut: $requestedClockOut, reason: $reason, status: $status, approvedBy: $approvedBy, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, approvedAt: $approvedAt)';
}


}

/// @nodoc
abstract mixin class $AttendanceAmendmentModelCopyWith<$Res>  {
  factory $AttendanceAmendmentModelCopyWith(AttendanceAmendmentModel value, $Res Function(AttendanceAmendmentModel) _then) = _$AttendanceAmendmentModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'date_id') String dateId,@JsonKey(name: 'amendment_type') String amendmentType,@JsonKey(name: 'requested_clock_in') String? requestedClockIn,@JsonKey(name: 'requested_clock_out') String? requestedClockOut, String reason, String status,@JsonKey(name: 'approved_by') String? approvedBy, bool deleted,@JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt,@JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) DateTime? approvedAt
});




}
/// @nodoc
class _$AttendanceAmendmentModelCopyWithImpl<$Res>
    implements $AttendanceAmendmentModelCopyWith<$Res> {
  _$AttendanceAmendmentModelCopyWithImpl(this._self, this._then);

  final AttendanceAmendmentModel _self;
  final $Res Function(AttendanceAmendmentModel) _then;

/// Create a copy of AttendanceAmendmentModel
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


/// Adds pattern-matching-related methods to [AttendanceAmendmentModel].
extension AttendanceAmendmentModelPatterns on AttendanceAmendmentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceAmendmentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceAmendmentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceAmendmentModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceAmendmentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceAmendmentModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceAmendmentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'amendment_type')  String amendmentType, @JsonKey(name: 'requested_clock_in')  String? requestedClockIn, @JsonKey(name: 'requested_clock_out')  String? requestedClockOut,  String reason,  String status, @JsonKey(name: 'approved_by')  String? approvedBy,  bool deleted, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt, @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime)  DateTime? approvedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceAmendmentModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'amendment_type')  String amendmentType, @JsonKey(name: 'requested_clock_in')  String? requestedClockIn, @JsonKey(name: 'requested_clock_out')  String? requestedClockOut,  String reason,  String status, @JsonKey(name: 'approved_by')  String? approvedBy,  bool deleted, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt, @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime)  DateTime? approvedAt)  $default,) {final _that = this;
switch (_that) {
case _AttendanceAmendmentModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'amendment_type')  String amendmentType, @JsonKey(name: 'requested_clock_in')  String? requestedClockIn, @JsonKey(name: 'requested_clock_out')  String? requestedClockOut,  String reason,  String status, @JsonKey(name: 'approved_by')  String? approvedBy,  bool deleted, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? updatedAt, @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime)  DateTime? approvedAt)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceAmendmentModel() when $default != null:
return $default(_that.id,_that.userId,_that.companyId,_that.dateId,_that.amendmentType,_that.requestedClockIn,_that.requestedClockOut,_that.reason,_that.status,_that.approvedBy,_that.deleted,_that.createdAt,_that.updatedAt,_that.approvedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceAmendmentModel extends AttendanceAmendmentModel {
  const _AttendanceAmendmentModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(name: 'user_id') this.userId = '', @JsonKey(name: 'company_id') this.companyId = '', @JsonKey(name: 'date_id') this.dateId = '', @JsonKey(name: 'amendment_type') this.amendmentType = '', @JsonKey(name: 'requested_clock_in') this.requestedClockIn, @JsonKey(name: 'requested_clock_out') this.requestedClockOut, this.reason = '', this.status = '', @JsonKey(name: 'approved_by') this.approvedBy, this.deleted = false, @JsonKey(fromJson: parseLocalDateTime) this.createdAt, @JsonKey(fromJson: parseLocalDateTime) this.updatedAt, @JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) this.approvedAt}): super._();
  factory _AttendanceAmendmentModel.fromJson(Map<String, dynamic> json) => _$AttendanceAmendmentModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(name: 'date_id') final  String dateId;
@override@JsonKey(name: 'amendment_type') final  String amendmentType;
@override@JsonKey(name: 'requested_clock_in') final  String? requestedClockIn;
@override@JsonKey(name: 'requested_clock_out') final  String? requestedClockOut;
@override@JsonKey() final  String reason;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'approved_by') final  String? approvedBy;
@override@JsonKey() final  bool deleted;
@override@JsonKey(fromJson: parseLocalDateTime) final  DateTime? createdAt;
@override@JsonKey(fromJson: parseLocalDateTime) final  DateTime? updatedAt;
@override@JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) final  DateTime? approvedAt;

/// Create a copy of AttendanceAmendmentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceAmendmentModelCopyWith<_AttendanceAmendmentModel> get copyWith => __$AttendanceAmendmentModelCopyWithImpl<_AttendanceAmendmentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceAmendmentModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceAmendmentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.amendmentType, amendmentType) || other.amendmentType == amendmentType)&&(identical(other.requestedClockIn, requestedClockIn) || other.requestedClockIn == requestedClockIn)&&(identical(other.requestedClockOut, requestedClockOut) || other.requestedClockOut == requestedClockOut)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.approvedBy, approvedBy) || other.approvedBy == approvedBy)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.approvedAt, approvedAt) || other.approvedAt == approvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,companyId,dateId,amendmentType,requestedClockIn,requestedClockOut,reason,status,approvedBy,deleted,createdAt,updatedAt,approvedAt);

@override
String toString() {
  return 'AttendanceAmendmentModel(id: $id, userId: $userId, companyId: $companyId, dateId: $dateId, amendmentType: $amendmentType, requestedClockIn: $requestedClockIn, requestedClockOut: $requestedClockOut, reason: $reason, status: $status, approvedBy: $approvedBy, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, approvedAt: $approvedAt)';
}


}

/// @nodoc
abstract mixin class _$AttendanceAmendmentModelCopyWith<$Res> implements $AttendanceAmendmentModelCopyWith<$Res> {
  factory _$AttendanceAmendmentModelCopyWith(_AttendanceAmendmentModel value, $Res Function(_AttendanceAmendmentModel) _then) = __$AttendanceAmendmentModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'date_id') String dateId,@JsonKey(name: 'amendment_type') String amendmentType,@JsonKey(name: 'requested_clock_in') String? requestedClockIn,@JsonKey(name: 'requested_clock_out') String? requestedClockOut, String reason, String status,@JsonKey(name: 'approved_by') String? approvedBy, bool deleted,@JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? updatedAt,@JsonKey(name: 'approved_at', fromJson: parseLocalDateTime) DateTime? approvedAt
});




}
/// @nodoc
class __$AttendanceAmendmentModelCopyWithImpl<$Res>
    implements _$AttendanceAmendmentModelCopyWith<$Res> {
  __$AttendanceAmendmentModelCopyWithImpl(this._self, this._then);

  final _AttendanceAmendmentModel _self;
  final $Res Function(_AttendanceAmendmentModel) _then;

/// Create a copy of AttendanceAmendmentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? companyId = null,Object? dateId = null,Object? amendmentType = null,Object? requestedClockIn = freezed,Object? requestedClockOut = freezed,Object? reason = null,Object? status = null,Object? approvedBy = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? approvedAt = freezed,}) {
  return _then(_AttendanceAmendmentModel(
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
