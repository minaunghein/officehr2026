// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceModel {

@JsonKey(name: '_id') String get id; String get company;@JsonKey(name: 'userid') String get userId;@JsonKey(name: 'clockin') DateTime get clockIn;@JsonKey(name: 'dateid') int get dateId;@JsonKey(name: 'timeid') int get timeId;@JsonKey(name: 'clockinby') String get clockInBy;@JsonKey(name: 'needapproval') bool get needApproval; AttendanceStatusModel? get status; double get lat; double get long;@JsonKey(name: 'desc') String get description;@JsonKey(name: 'issod') bool get isSod;@JsonKey(name: 'iseod') bool get isEod;@JsonKey(name: 'terminalid') String? get terminalId; bool get deleted; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<AttendanceModel> get copyWith => _$AttendanceModelCopyWithImpl<AttendanceModel>(this as AttendanceModel, _$identity);

  /// Serializes this AttendanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.timeId, timeId) || other.timeId == timeId)&&(identical(other.clockInBy, clockInBy) || other.clockInBy == clockInBy)&&(identical(other.needApproval, needApproval) || other.needApproval == needApproval)&&(identical(other.status, status) || other.status == status)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSod, isSod) || other.isSod == isSod)&&(identical(other.isEod, isEod) || other.isEod == isEod)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,userId,clockIn,dateId,timeId,clockInBy,needApproval,status,lat,long,description,isSod,isEod,terminalId,deleted,createdAt,updatedAt,version]);

@override
String toString() {
  return 'AttendanceModel(id: $id, company: $company, userId: $userId, clockIn: $clockIn, dateId: $dateId, timeId: $timeId, clockInBy: $clockInBy, needApproval: $needApproval, status: $status, lat: $lat, long: $long, description: $description, isSod: $isSod, isEod: $isEod, terminalId: $terminalId, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $AttendanceModelCopyWith<$Res>  {
  factory $AttendanceModelCopyWith(AttendanceModel value, $Res Function(AttendanceModel) _then) = _$AttendanceModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String id, String company,@JsonKey(name: 'userid') String userId,@JsonKey(name: 'clockin') DateTime clockIn,@JsonKey(name: 'dateid') int dateId,@JsonKey(name: 'timeid') int timeId,@JsonKey(name: 'clockinby') String clockInBy,@JsonKey(name: 'needapproval') bool needApproval, AttendanceStatusModel? status, double lat, double long,@JsonKey(name: 'desc') String description,@JsonKey(name: 'issod') bool isSod,@JsonKey(name: 'iseod') bool isEod,@JsonKey(name: 'terminalid') String? terminalId, bool deleted, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});


$AttendanceStatusModelCopyWith<$Res>? get status;

}
/// @nodoc
class _$AttendanceModelCopyWithImpl<$Res>
    implements $AttendanceModelCopyWith<$Res> {
  _$AttendanceModelCopyWithImpl(this._self, this._then);

  final AttendanceModel _self;
  final $Res Function(AttendanceModel) _then;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? company = null,Object? userId = null,Object? clockIn = null,Object? dateId = null,Object? timeId = null,Object? clockInBy = null,Object? needApproval = null,Object? status = freezed,Object? lat = null,Object? long = null,Object? description = null,Object? isSod = null,Object? isEod = null,Object? terminalId = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,clockIn: null == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as DateTime,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as int,timeId: null == timeId ? _self.timeId : timeId // ignore: cast_nullable_to_non_nullable
as int,clockInBy: null == clockInBy ? _self.clockInBy : clockInBy // ignore: cast_nullable_to_non_nullable
as String,needApproval: null == needApproval ? _self.needApproval : needApproval // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatusModel?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isSod: null == isSod ? _self.isSod : isSod // ignore: cast_nullable_to_non_nullable
as bool,isEod: null == isEod ? _self.isEod : isEod // ignore: cast_nullable_to_non_nullable
as bool,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceStatusModelCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $AttendanceStatusModelCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendanceModel].
extension AttendanceModelPatterns on AttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company, @JsonKey(name: 'userid')  String userId, @JsonKey(name: 'clockin')  DateTime clockIn, @JsonKey(name: 'dateid')  int dateId, @JsonKey(name: 'timeid')  int timeId, @JsonKey(name: 'clockinby')  String clockInBy, @JsonKey(name: 'needapproval')  bool needApproval,  AttendanceStatusModel? status,  double lat,  double long, @JsonKey(name: 'desc')  String description, @JsonKey(name: 'issod')  bool isSod, @JsonKey(name: 'iseod')  bool isEod, @JsonKey(name: 'terminalid')  String? terminalId,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that.id,_that.company,_that.userId,_that.clockIn,_that.dateId,_that.timeId,_that.clockInBy,_that.needApproval,_that.status,_that.lat,_that.long,_that.description,_that.isSod,_that.isEod,_that.terminalId,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String id,  String company, @JsonKey(name: 'userid')  String userId, @JsonKey(name: 'clockin')  DateTime clockIn, @JsonKey(name: 'dateid')  int dateId, @JsonKey(name: 'timeid')  int timeId, @JsonKey(name: 'clockinby')  String clockInBy, @JsonKey(name: 'needapproval')  bool needApproval,  AttendanceStatusModel? status,  double lat,  double long, @JsonKey(name: 'desc')  String description, @JsonKey(name: 'issod')  bool isSod, @JsonKey(name: 'iseod')  bool isEod, @JsonKey(name: 'terminalid')  String? terminalId,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _AttendanceModel():
return $default(_that.id,_that.company,_that.userId,_that.clockIn,_that.dateId,_that.timeId,_that.clockInBy,_that.needApproval,_that.status,_that.lat,_that.long,_that.description,_that.isSod,_that.isEod,_that.terminalId,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String id,  String company, @JsonKey(name: 'userid')  String userId, @JsonKey(name: 'clockin')  DateTime clockIn, @JsonKey(name: 'dateid')  int dateId, @JsonKey(name: 'timeid')  int timeId, @JsonKey(name: 'clockinby')  String clockInBy, @JsonKey(name: 'needapproval')  bool needApproval,  AttendanceStatusModel? status,  double lat,  double long, @JsonKey(name: 'desc')  String description, @JsonKey(name: 'issod')  bool isSod, @JsonKey(name: 'iseod')  bool isEod, @JsonKey(name: 'terminalid')  String? terminalId,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceModel() when $default != null:
return $default(_that.id,_that.company,_that.userId,_that.clockIn,_that.dateId,_that.timeId,_that.clockInBy,_that.needApproval,_that.status,_that.lat,_that.long,_that.description,_that.isSod,_that.isEod,_that.terminalId,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceModel implements AttendanceModel {
  const _AttendanceModel({@JsonKey(name: '_id') required this.id, required this.company, @JsonKey(name: 'userid') required this.userId, @JsonKey(name: 'clockin') required this.clockIn, @JsonKey(name: 'dateid') required this.dateId, @JsonKey(name: 'timeid') required this.timeId, @JsonKey(name: 'clockinby') required this.clockInBy, @JsonKey(name: 'needapproval') required this.needApproval, this.status, required this.lat, required this.long, @JsonKey(name: 'desc') required this.description, @JsonKey(name: 'issod') required this.isSod, @JsonKey(name: 'iseod') required this.isEod, @JsonKey(name: 'terminalid') this.terminalId, this.deleted = false, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version});
  factory _AttendanceModel.fromJson(Map<String, dynamic> json) => _$AttendanceModelFromJson(json);

@override@JsonKey(name: '_id') final  String id;
@override final  String company;
@override@JsonKey(name: 'userid') final  String userId;
@override@JsonKey(name: 'clockin') final  DateTime clockIn;
@override@JsonKey(name: 'dateid') final  int dateId;
@override@JsonKey(name: 'timeid') final  int timeId;
@override@JsonKey(name: 'clockinby') final  String clockInBy;
@override@JsonKey(name: 'needapproval') final  bool needApproval;
@override final  AttendanceStatusModel? status;
@override final  double lat;
@override final  double long;
@override@JsonKey(name: 'desc') final  String description;
@override@JsonKey(name: 'issod') final  bool isSod;
@override@JsonKey(name: 'iseod') final  bool isEod;
@override@JsonKey(name: 'terminalid') final  String? terminalId;
@override@JsonKey() final  bool deleted;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceModelCopyWith<_AttendanceModel> get copyWith => __$AttendanceModelCopyWithImpl<_AttendanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceModel&&(identical(other.id, id) || other.id == id)&&(identical(other.company, company) || other.company == company)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.clockIn, clockIn) || other.clockIn == clockIn)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.timeId, timeId) || other.timeId == timeId)&&(identical(other.clockInBy, clockInBy) || other.clockInBy == clockInBy)&&(identical(other.needApproval, needApproval) || other.needApproval == needApproval)&&(identical(other.status, status) || other.status == status)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long)&&(identical(other.description, description) || other.description == description)&&(identical(other.isSod, isSod) || other.isSod == isSod)&&(identical(other.isEod, isEod) || other.isEod == isEod)&&(identical(other.terminalId, terminalId) || other.terminalId == terminalId)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,company,userId,clockIn,dateId,timeId,clockInBy,needApproval,status,lat,long,description,isSod,isEod,terminalId,deleted,createdAt,updatedAt,version]);

@override
String toString() {
  return 'AttendanceModel(id: $id, company: $company, userId: $userId, clockIn: $clockIn, dateId: $dateId, timeId: $timeId, clockInBy: $clockInBy, needApproval: $needApproval, status: $status, lat: $lat, long: $long, description: $description, isSod: $isSod, isEod: $isEod, terminalId: $terminalId, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$AttendanceModelCopyWith<$Res> implements $AttendanceModelCopyWith<$Res> {
  factory _$AttendanceModelCopyWith(_AttendanceModel value, $Res Function(_AttendanceModel) _then) = __$AttendanceModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String id, String company,@JsonKey(name: 'userid') String userId,@JsonKey(name: 'clockin') DateTime clockIn,@JsonKey(name: 'dateid') int dateId,@JsonKey(name: 'timeid') int timeId,@JsonKey(name: 'clockinby') String clockInBy,@JsonKey(name: 'needapproval') bool needApproval, AttendanceStatusModel? status, double lat, double long,@JsonKey(name: 'desc') String description,@JsonKey(name: 'issod') bool isSod,@JsonKey(name: 'iseod') bool isEod,@JsonKey(name: 'terminalid') String? terminalId, bool deleted, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});


@override $AttendanceStatusModelCopyWith<$Res>? get status;

}
/// @nodoc
class __$AttendanceModelCopyWithImpl<$Res>
    implements _$AttendanceModelCopyWith<$Res> {
  __$AttendanceModelCopyWithImpl(this._self, this._then);

  final _AttendanceModel _self;
  final $Res Function(_AttendanceModel) _then;

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? company = null,Object? userId = null,Object? clockIn = null,Object? dateId = null,Object? timeId = null,Object? clockInBy = null,Object? needApproval = null,Object? status = freezed,Object? lat = null,Object? long = null,Object? description = null,Object? isSod = null,Object? isEod = null,Object? terminalId = freezed,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_AttendanceModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,clockIn: null == clockIn ? _self.clockIn : clockIn // ignore: cast_nullable_to_non_nullable
as DateTime,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as int,timeId: null == timeId ? _self.timeId : timeId // ignore: cast_nullable_to_non_nullable
as int,clockInBy: null == clockInBy ? _self.clockInBy : clockInBy // ignore: cast_nullable_to_non_nullable
as String,needApproval: null == needApproval ? _self.needApproval : needApproval // ignore: cast_nullable_to_non_nullable
as bool,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as AttendanceStatusModel?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,isSod: null == isSod ? _self.isSod : isSod // ignore: cast_nullable_to_non_nullable
as bool,isEod: null == isEod ? _self.isEod : isEod // ignore: cast_nullable_to_non_nullable
as bool,terminalId: freezed == terminalId ? _self.terminalId : terminalId // ignore: cast_nullable_to_non_nullable
as String?,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceStatusModelCopyWith<$Res>? get status {
    if (_self.status == null) {
    return null;
  }

  return $AttendanceStatusModelCopyWith<$Res>(_self.status!, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
