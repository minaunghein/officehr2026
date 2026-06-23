// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Attendance {

 String get id; String get companyId; String get userId; DateTime get clockIn; int get dateId; int get timeId; String get clockInBy; bool get needApproval; AttendanceStatus? get status; double get latitude; double get longitude; String get description; bool get isSod; bool get isEod; String? get terminalId; bool get deleted; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceCopyWith<Attendance> get copyWith => _$AttendanceCopyWithImpl<Attendance>(this as Attendance, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attendance&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.timeId, timeId) || other.timeId == timeId)&&(identical(other.clockInBy, clockInBy) || other.clockInBy == clockInBy)&&(identical(other.needApproval, needApproval) || other.needApproval == needApproval)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSod, isSod) || other.isSod == isSod)&&(identical(other.isEod, isEod) || other.isEod == isEod)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,userId,clockIn,dateId,timeId,clockInBy,needApproval,status,latitude,longitude,description,isSod,isEod,terminalId,deleted,createdAt,updatedAt);

@override
String toString() {
  return 'Attendance(id: $id, companyId: $companyId, userId: $userId, clockIn: $clockIn, dateId: $dateId, timeId: $timeId, clockInBy: $clockInBy, needApproval: $needApproval, status: $status, latitude: $latitude, longitude: $longitude, description: $description, isSod: $isSod, isEod: $isEod, terminalId: $terminalId, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AttendanceCopyWith<$Res>  {
  factory $AttendanceCopyWith(Attendance value, $Res Function(Attendance) _then) = _$AttendanceCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String userId, DateTime clockIn, int dateId, int timeId, String clockInBy, bool needApproval, AttendanceStatus? status, double latitude, double longitude, String description, bool isSod, bool isEod, String? terminalId, bool deleted, DateTime? createdAt, DateTime? updatedAt
});


$AttendanceStatusCopyWith<$Res>? get status;

}
/// @nodoc
class _$AttendanceCopyWithImpl<$Res>
    implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._self, this._then);

  final Attendance _self;
  final $Res Function(Attendance) _then;

/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? clockIn = null,Object? dateId = null,Object? timeId = null,Object? clockInBy = null,Object? needApproval = null,Object? status = freezed,Object? latitude = null,Object? longitude = null,Object? description = null,Object? isSod = null,Object? isEod = null,Object? terminalId = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,clockIn: null == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as DateTime,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as int,timeId: null == timeId ? _self.timeId : timeId // ignore: cast_nullable_to_non_nullable
as int,clockInBy: null == clockInBy ? _self.clockInBy : clockInBy // ignore: cast_nullable_to_non_nullable
as String,needApproval: null == needApproval ? _self.needApproval : needApproval // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isSod: null == isSod ? _self.isSod : isSod // ignore: cast_nullable_to_non_nullable
as bool,isEod: null == isEod ? _self.isEod : isEod // ignore: cast_nullable_to_non_nullable
as bool,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $AttendanceStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [Attendance].
extension AttendancePatterns on Attendance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attendance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attendance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attendance value)  $default,){
final _that = this;
switch (_that) {
case _Attendance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attendance value)?  $default,){
final _that = this;
switch (_that) {
case _Attendance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String userId,  DateTime clockIn,  int dateId,  int timeId,  String clockInBy,  bool needApproval,  AttendanceStatus? status,  double latitude,  double longitude,  String description,  bool isSod,  bool isEod,  String? terminalId,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attendance() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.clockIn,_that.dateId,_that.timeId,_that.clockInBy,_that.needApproval,_that.status,_that.latitude,_that.longitude,_that.description,_that.isSod,_that.isEod,_that.terminalId,_that.deleted,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String userId,  DateTime clockIn,  int dateId,  int timeId,  String clockInBy,  bool needApproval,  AttendanceStatus? status,  double latitude,  double longitude,  String description,  bool isSod,  bool isEod,  String? terminalId,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Attendance():
return $default(_that.id,_that.companyId,_that.userId,_that.clockIn,_that.dateId,_that.timeId,_that.clockInBy,_that.needApproval,_that.status,_that.latitude,_that.longitude,_that.description,_that.isSod,_that.isEod,_that.terminalId,_that.deleted,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String userId,  DateTime clockIn,  int dateId,  int timeId,  String clockInBy,  bool needApproval,  AttendanceStatus? status,  double latitude,  double longitude,  String description,  bool isSod,  bool isEod,  String? terminalId,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Attendance() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.clockIn,_that.dateId,_that.timeId,_that.clockInBy,_that.needApproval,_that.status,_that.latitude,_that.longitude,_that.description,_that.isSod,_that.isEod,_that.terminalId,_that.deleted,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Attendance implements Attendance {
  const _Attendance({required this.id, required this.companyId, required this.userId, required this.clockIn, required this.dateId, required this.timeId, required this.clockInBy, required this.needApproval, this.status, required this.latitude, required this.longitude, required this.description, required this.isSod, required this.isEod, this.terminalId, required this.deleted, this.createdAt, this.updatedAt});
  

@override final  String id;
@override final  String companyId;
@override final  String userId;
@override final  DateTime clockIn;
@override final  int dateId;
@override final  int timeId;
@override final  String clockInBy;
@override final  bool needApproval;
@override final  AttendanceStatus? status;
@override final  double latitude;
@override final  double longitude;
@override final  String description;
@override final  bool isSod;
@override final  bool isEod;
@override final  String? terminalId;
@override final  bool deleted;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceCopyWith<_Attendance> get copyWith => __$AttendanceCopyWithImpl<_Attendance>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attendance&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.timeId, timeId) || other.timeId == timeId)&&(identical(other.clockInBy, clockInBy) || other.clockInBy == clockInBy)&&(identical(other.needApproval, needApproval) || other.needApproval == needApproval)&&(identical(other.status, status) || other.status == status)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSod, isSod) || other.isSod == isSod)&&(identical(other.isEod, isEod) || other.isEod == isEod)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,userId,clockIn,dateId,timeId,clockInBy,needApproval,status,latitude,longitude,description,isSod,isEod,terminalId,deleted,createdAt,updatedAt);

@override
String toString() {
  return 'Attendance(id: $id, companyId: $companyId, userId: $userId, clockIn: $clockIn, dateId: $dateId, timeId: $timeId, clockInBy: $clockInBy, needApproval: $needApproval, status: $status, latitude: $latitude, longitude: $longitude, description: $description, isSod: $isSod, isEod: $isEod, terminalId: $terminalId, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AttendanceCopyWith<$Res> implements $AttendanceCopyWith<$Res> {
  factory _$AttendanceCopyWith(_Attendance value, $Res Function(_Attendance) _then) = __$AttendanceCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String userId, DateTime clockIn, int dateId, int timeId, String clockInBy, bool needApproval, AttendanceStatus? status, double latitude, double longitude, String description, bool isSod, bool isEod, String? terminalId, bool deleted, DateTime? createdAt, DateTime? updatedAt
});


@override $AttendanceStatusCopyWith<$Res>? get status;

}
/// @nodoc
class __$AttendanceCopyWithImpl<$Res>
    implements _$AttendanceCopyWith<$Res> {
  __$AttendanceCopyWithImpl(this._self, this._then);

  final _Attendance _self;
  final $Res Function(_Attendance) _then;

/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? clockIn = null,Object? dateId = null,Object? timeId = null,Object? clockInBy = null,Object? needApproval = null,Object? status = freezed,Object? latitude = null,Object? longitude = null,Object? description = null,Object? isSod = null,Object? isEod = null,Object? terminalId = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Attendance(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,clockIn: null == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as DateTime,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as int,timeId: null == timeId ? _self.timeId : timeId // ignore: cast_nullable_to_non_nullable
as int,clockInBy: null == clockInBy ? _self.clockInBy : clockInBy // ignore: cast_nullable_to_non_nullable
as String,needApproval: null == needApproval ? _self.needApproval : needApproval // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatus?,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isSod: null == isSod ? _self.isSod : isSod // ignore: cast_nullable_to_non_nullable
as bool,isEod: null == isEod ? _self.isEod : isEod // ignore: cast_nullable_to_non_nullable
as bool,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of Attendance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceStatusCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $AttendanceStatusCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
