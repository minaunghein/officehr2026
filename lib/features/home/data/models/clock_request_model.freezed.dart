// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clock_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClockRequestModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(name: 'user_id') String get userId;@JsonKey(name: 'branch_id') String get branchId;@JsonKey(name: 'date_id') String get dateId;@JsonKey(name: 'punch_time') String get punchTime;@JsonKey(name: 'punch_type') String get punchType; double? get latitude; double? get longitude; double? get accuracy;@JsonKey(name: 'location_label') String? get locationLabel;@JsonKey(name: 'distance_km') double? get distanceKm;@JsonKey(name: 'branch_radius_km') double? get branchRadiusKm;@JsonKey(name: 'auto_flagged') bool get autoFlagged; String get reason; String get status;@JsonKey(name: 'decision_note') String? get decisionNote;@JsonKey(name: 'decided_at', fromJson: parseLocalDateTime) DateTime? get decidedAt;@JsonKey(fromJson: parseLocalDateTime) DateTime? get createdAt; ClockRequestUserModel? get user; ClockRequestBranchModel? get branch; ClockRequestUserModel? get decider;
/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockRequestModelCopyWith<ClockRequestModel> get copyWith => _$ClockRequestModelCopyWithImpl<ClockRequestModel>(this as ClockRequestModel, _$identity);

  /// Serializes this ClockRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.locationLabel, locationLabel) || other.locationLabel == locationLabel)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.branchRadiusKm, branchRadiusKm) || other.branchRadiusKm == branchRadiusKm)&&(identical(other.autoFlagged, autoFlagged) || other.autoFlagged == autoFlagged)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.decisionNote, decisionNote) || other.decisionNote == decisionNote)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.user, user) || other.user == user)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.decider, decider) || other.decider == decider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,branchId,dateId,punchTime,punchType,latitude,longitude,accuracy,locationLabel,distanceKm,branchRadiusKm,autoFlagged,reason,status,decisionNote,decidedAt,createdAt,user,branch,decider]);

@override
String toString() {
  return 'ClockRequestModel(id: $id, userId: $userId, branchId: $branchId, dateId: $dateId, punchTime: $punchTime, punchType: $punchType, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, locationLabel: $locationLabel, distanceKm: $distanceKm, branchRadiusKm: $branchRadiusKm, autoFlagged: $autoFlagged, reason: $reason, status: $status, decisionNote: $decisionNote, decidedAt: $decidedAt, createdAt: $createdAt, user: $user, branch: $branch, decider: $decider)';
}


}

/// @nodoc
abstract mixin class $ClockRequestModelCopyWith<$Res>  {
  factory $ClockRequestModelCopyWith(ClockRequestModel value, $Res Function(ClockRequestModel) _then) = _$ClockRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'branch_id') String branchId,@JsonKey(name: 'date_id') String dateId,@JsonKey(name: 'punch_time') String punchTime,@JsonKey(name: 'punch_type') String punchType, double? latitude, double? longitude, double? accuracy,@JsonKey(name: 'location_label') String? locationLabel,@JsonKey(name: 'distance_km') double? distanceKm,@JsonKey(name: 'branch_radius_km') double? branchRadiusKm,@JsonKey(name: 'auto_flagged') bool autoFlagged, String reason, String status,@JsonKey(name: 'decision_note') String? decisionNote,@JsonKey(name: 'decided_at', fromJson: parseLocalDateTime) DateTime? decidedAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt, ClockRequestUserModel? user, ClockRequestBranchModel? branch, ClockRequestUserModel? decider
});


$ClockRequestUserModelCopyWith<$Res>? get user;$ClockRequestBranchModelCopyWith<$Res>? get branch;$ClockRequestUserModelCopyWith<$Res>? get decider;

}
/// @nodoc
class _$ClockRequestModelCopyWithImpl<$Res>
    implements $ClockRequestModelCopyWith<$Res> {
  _$ClockRequestModelCopyWithImpl(this._self, this._then);

  final ClockRequestModel _self;
  final $Res Function(ClockRequestModel) _then;

/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? branchId = null,Object? dateId = null,Object? punchTime = null,Object? punchType = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? locationLabel = freezed,Object? distanceKm = freezed,Object? branchRadiusKm = freezed,Object? autoFlagged = null,Object? reason = null,Object? status = null,Object? decisionNote = freezed,Object? decidedAt = freezed,Object? createdAt = freezed,Object? user = freezed,Object? branch = freezed,Object? decider = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,locationLabel: freezed == locationLabel ? _self.locationLabel : locationLabel // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,branchRadiusKm: freezed == branchRadiusKm ? _self.branchRadiusKm : branchRadiusKm // ignore: cast_nullable_to_non_nullable
as double?,autoFlagged: null == autoFlagged ? _self.autoFlagged : autoFlagged // ignore: cast_nullable_to_non_nullable
as bool,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,decisionNote: freezed == decisionNote ? _self.decisionNote : decisionNote // ignore: cast_nullable_to_non_nullable
as String?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ClockRequestUserModel?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as ClockRequestBranchModel?,decider: freezed == decider ? _self.decider : decider // ignore: cast_nullable_to_non_nullable
as ClockRequestUserModel?,
  ));
}
/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockRequestUserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ClockRequestUserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockRequestBranchModelCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $ClockRequestBranchModelCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockRequestUserModelCopyWith<$Res>? get decider {
    if (_self.decider == null) {
    return null;
  }

  return $ClockRequestUserModelCopyWith<$Res>(_self.decider!, (value) {
    return _then(_self.copyWith(decider: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClockRequestModel].
extension ClockRequestModelPatterns on ClockRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ClockRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClockRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type')  String punchType,  double? latitude,  double? longitude,  double? accuracy, @JsonKey(name: 'location_label')  String? locationLabel, @JsonKey(name: 'distance_km')  double? distanceKm, @JsonKey(name: 'branch_radius_km')  double? branchRadiusKm, @JsonKey(name: 'auto_flagged')  bool autoFlagged,  String reason,  String status, @JsonKey(name: 'decision_note')  String? decisionNote, @JsonKey(name: 'decided_at', fromJson: parseLocalDateTime)  DateTime? decidedAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt,  ClockRequestUserModel? user,  ClockRequestBranchModel? branch,  ClockRequestUserModel? decider)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockRequestModel() when $default != null:
return $default(_that.id,_that.userId,_that.branchId,_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.distanceKm,_that.branchRadiusKm,_that.autoFlagged,_that.reason,_that.status,_that.decisionNote,_that.decidedAt,_that.createdAt,_that.user,_that.branch,_that.decider);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type')  String punchType,  double? latitude,  double? longitude,  double? accuracy, @JsonKey(name: 'location_label')  String? locationLabel, @JsonKey(name: 'distance_km')  double? distanceKm, @JsonKey(name: 'branch_radius_km')  double? branchRadiusKm, @JsonKey(name: 'auto_flagged')  bool autoFlagged,  String reason,  String status, @JsonKey(name: 'decision_note')  String? decisionNote, @JsonKey(name: 'decided_at', fromJson: parseLocalDateTime)  DateTime? decidedAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt,  ClockRequestUserModel? user,  ClockRequestBranchModel? branch,  ClockRequestUserModel? decider)  $default,) {final _that = this;
switch (_that) {
case _ClockRequestModel():
return $default(_that.id,_that.userId,_that.branchId,_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.distanceKm,_that.branchRadiusKm,_that.autoFlagged,_that.reason,_that.status,_that.decisionNote,_that.decidedAt,_that.createdAt,_that.user,_that.branch,_that.decider);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'user_id')  String userId, @JsonKey(name: 'branch_id')  String branchId, @JsonKey(name: 'date_id')  String dateId, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type')  String punchType,  double? latitude,  double? longitude,  double? accuracy, @JsonKey(name: 'location_label')  String? locationLabel, @JsonKey(name: 'distance_km')  double? distanceKm, @JsonKey(name: 'branch_radius_km')  double? branchRadiusKm, @JsonKey(name: 'auto_flagged')  bool autoFlagged,  String reason,  String status, @JsonKey(name: 'decision_note')  String? decisionNote, @JsonKey(name: 'decided_at', fromJson: parseLocalDateTime)  DateTime? decidedAt, @JsonKey(fromJson: parseLocalDateTime)  DateTime? createdAt,  ClockRequestUserModel? user,  ClockRequestBranchModel? branch,  ClockRequestUserModel? decider)?  $default,) {final _that = this;
switch (_that) {
case _ClockRequestModel() when $default != null:
return $default(_that.id,_that.userId,_that.branchId,_that.dateId,_that.punchTime,_that.punchType,_that.latitude,_that.longitude,_that.accuracy,_that.locationLabel,_that.distanceKm,_that.branchRadiusKm,_that.autoFlagged,_that.reason,_that.status,_that.decisionNote,_that.decidedAt,_that.createdAt,_that.user,_that.branch,_that.decider);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClockRequestModel extends ClockRequestModel {
  const _ClockRequestModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(name: 'user_id') this.userId = '', @JsonKey(name: 'branch_id') this.branchId = '', @JsonKey(name: 'date_id') this.dateId = '', @JsonKey(name: 'punch_time') this.punchTime = '', @JsonKey(name: 'punch_type') this.punchType = 'CLOCK_IN', this.latitude, this.longitude, this.accuracy, @JsonKey(name: 'location_label') this.locationLabel, @JsonKey(name: 'distance_km') this.distanceKm, @JsonKey(name: 'branch_radius_km') this.branchRadiusKm, @JsonKey(name: 'auto_flagged') this.autoFlagged = false, this.reason = '', this.status = 'PENDING', @JsonKey(name: 'decision_note') this.decisionNote, @JsonKey(name: 'decided_at', fromJson: parseLocalDateTime) this.decidedAt, @JsonKey(fromJson: parseLocalDateTime) this.createdAt, this.user, this.branch, this.decider}): super._();
  factory _ClockRequestModel.fromJson(Map<String, dynamic> json) => _$ClockRequestModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(name: 'user_id') final  String userId;
@override@JsonKey(name: 'branch_id') final  String branchId;
@override@JsonKey(name: 'date_id') final  String dateId;
@override@JsonKey(name: 'punch_time') final  String punchTime;
@override@JsonKey(name: 'punch_type') final  String punchType;
@override final  double? latitude;
@override final  double? longitude;
@override final  double? accuracy;
@override@JsonKey(name: 'location_label') final  String? locationLabel;
@override@JsonKey(name: 'distance_km') final  double? distanceKm;
@override@JsonKey(name: 'branch_radius_km') final  double? branchRadiusKm;
@override@JsonKey(name: 'auto_flagged') final  bool autoFlagged;
@override@JsonKey() final  String reason;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'decision_note') final  String? decisionNote;
@override@JsonKey(name: 'decided_at', fromJson: parseLocalDateTime) final  DateTime? decidedAt;
@override@JsonKey(fromJson: parseLocalDateTime) final  DateTime? createdAt;
@override final  ClockRequestUserModel? user;
@override final  ClockRequestBranchModel? branch;
@override final  ClockRequestUserModel? decider;

/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockRequestModelCopyWith<_ClockRequestModel> get copyWith => __$ClockRequestModelCopyWithImpl<_ClockRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClockRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockRequestModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.branchId, branchId) || other.branchId == branchId)&&(identical(other.dateId, dateId) || other.dateId == dateId)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.accuracy, accuracy) || other.accuracy == accuracy)&&(identical(other.locationLabel, locationLabel) || other.locationLabel == locationLabel)&&(identical(other.distanceKm, distanceKm) || other.distanceKm == distanceKm)&&(identical(other.branchRadiusKm, branchRadiusKm) || other.branchRadiusKm == branchRadiusKm)&&(identical(other.autoFlagged, autoFlagged) || other.autoFlagged == autoFlagged)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.decisionNote, decisionNote) || other.decisionNote == decisionNote)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.user, user) || other.user == user)&&(identical(other.branch, branch) || other.branch == branch)&&(identical(other.decider, decider) || other.decider == decider));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,userId,branchId,dateId,punchTime,punchType,latitude,longitude,accuracy,locationLabel,distanceKm,branchRadiusKm,autoFlagged,reason,status,decisionNote,decidedAt,createdAt,user,branch,decider]);

@override
String toString() {
  return 'ClockRequestModel(id: $id, userId: $userId, branchId: $branchId, dateId: $dateId, punchTime: $punchTime, punchType: $punchType, latitude: $latitude, longitude: $longitude, accuracy: $accuracy, locationLabel: $locationLabel, distanceKm: $distanceKm, branchRadiusKm: $branchRadiusKm, autoFlagged: $autoFlagged, reason: $reason, status: $status, decisionNote: $decisionNote, decidedAt: $decidedAt, createdAt: $createdAt, user: $user, branch: $branch, decider: $decider)';
}


}

/// @nodoc
abstract mixin class _$ClockRequestModelCopyWith<$Res> implements $ClockRequestModelCopyWith<$Res> {
  factory _$ClockRequestModelCopyWith(_ClockRequestModel value, $Res Function(_ClockRequestModel) _then) = __$ClockRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'user_id') String userId,@JsonKey(name: 'branch_id') String branchId,@JsonKey(name: 'date_id') String dateId,@JsonKey(name: 'punch_time') String punchTime,@JsonKey(name: 'punch_type') String punchType, double? latitude, double? longitude, double? accuracy,@JsonKey(name: 'location_label') String? locationLabel,@JsonKey(name: 'distance_km') double? distanceKm,@JsonKey(name: 'branch_radius_km') double? branchRadiusKm,@JsonKey(name: 'auto_flagged') bool autoFlagged, String reason, String status,@JsonKey(name: 'decision_note') String? decisionNote,@JsonKey(name: 'decided_at', fromJson: parseLocalDateTime) DateTime? decidedAt,@JsonKey(fromJson: parseLocalDateTime) DateTime? createdAt, ClockRequestUserModel? user, ClockRequestBranchModel? branch, ClockRequestUserModel? decider
});


@override $ClockRequestUserModelCopyWith<$Res>? get user;@override $ClockRequestBranchModelCopyWith<$Res>? get branch;@override $ClockRequestUserModelCopyWith<$Res>? get decider;

}
/// @nodoc
class __$ClockRequestModelCopyWithImpl<$Res>
    implements _$ClockRequestModelCopyWith<$Res> {
  __$ClockRequestModelCopyWithImpl(this._self, this._then);

  final _ClockRequestModel _self;
  final $Res Function(_ClockRequestModel) _then;

/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? branchId = null,Object? dateId = null,Object? punchTime = null,Object? punchType = null,Object? latitude = freezed,Object? longitude = freezed,Object? accuracy = freezed,Object? locationLabel = freezed,Object? distanceKm = freezed,Object? branchRadiusKm = freezed,Object? autoFlagged = null,Object? reason = null,Object? status = null,Object? decisionNote = freezed,Object? decidedAt = freezed,Object? createdAt = freezed,Object? user = freezed,Object? branch = freezed,Object? decider = freezed,}) {
  return _then(_ClockRequestModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,branchId: null == branchId ? _self.branchId : branchId // ignore: cast_nullable_to_non_nullable
as String,dateId: null == dateId ? _self.dateId : dateId // ignore: cast_nullable_to_non_nullable
as String,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as String,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double?,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double?,accuracy: freezed == accuracy ? _self.accuracy : accuracy // ignore: cast_nullable_to_non_nullable
as double?,locationLabel: freezed == locationLabel ? _self.locationLabel : locationLabel // ignore: cast_nullable_to_non_nullable
as String?,distanceKm: freezed == distanceKm ? _self.distanceKm : distanceKm // ignore: cast_nullable_to_non_nullable
as double?,branchRadiusKm: freezed == branchRadiusKm ? _self.branchRadiusKm : branchRadiusKm // ignore: cast_nullable_to_non_nullable
as double?,autoFlagged: null == autoFlagged ? _self.autoFlagged : autoFlagged // ignore: cast_nullable_to_non_nullable
as bool,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,decisionNote: freezed == decisionNote ? _self.decisionNote : decisionNote // ignore: cast_nullable_to_non_nullable
as String?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ClockRequestUserModel?,branch: freezed == branch ? _self.branch : branch // ignore: cast_nullable_to_non_nullable
as ClockRequestBranchModel?,decider: freezed == decider ? _self.decider : decider // ignore: cast_nullable_to_non_nullable
as ClockRequestUserModel?,
  ));
}

/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockRequestUserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ClockRequestUserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockRequestBranchModelCopyWith<$Res>? get branch {
    if (_self.branch == null) {
    return null;
  }

  return $ClockRequestBranchModelCopyWith<$Res>(_self.branch!, (value) {
    return _then(_self.copyWith(branch: value));
  });
}/// Create a copy of ClockRequestModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClockRequestUserModelCopyWith<$Res>? get decider {
    if (_self.decider == null) {
    return null;
  }

  return $ClockRequestUserModelCopyWith<$Res>(_self.decider!, (value) {
    return _then(_self.copyWith(decider: value));
  });
}
}


/// @nodoc
mixin _$ClockRequestUserModel {

@JsonKey(readValue: _readId) String get id; String get username; String get email;
/// Create a copy of ClockRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockRequestUserModelCopyWith<ClockRequestUserModel> get copyWith => _$ClockRequestUserModelCopyWithImpl<ClockRequestUserModel>(this as ClockRequestUserModel, _$identity);

  /// Serializes this ClockRequestUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockRequestUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email);

@override
String toString() {
  return 'ClockRequestUserModel(id: $id, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class $ClockRequestUserModelCopyWith<$Res>  {
  factory $ClockRequestUserModelCopyWith(ClockRequestUserModel value, $Res Function(ClockRequestUserModel) _then) = _$ClockRequestUserModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id, String username, String email
});




}
/// @nodoc
class _$ClockRequestUserModelCopyWithImpl<$Res>
    implements $ClockRequestUserModelCopyWith<$Res> {
  _$ClockRequestUserModelCopyWithImpl(this._self, this._then);

  final ClockRequestUserModel _self;
  final $Res Function(ClockRequestUserModel) _then;

/// Create a copy of ClockRequestUserModel
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


/// Adds pattern-matching-related methods to [ClockRequestUserModel].
extension ClockRequestUserModelPatterns on ClockRequestUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockRequestUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockRequestUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockRequestUserModel value)  $default,){
final _that = this;
switch (_that) {
case _ClockRequestUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockRequestUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClockRequestUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String username,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockRequestUserModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String username,  String email)  $default,) {final _that = this;
switch (_that) {
case _ClockRequestUserModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id,  String username,  String email)?  $default,) {final _that = this;
switch (_that) {
case _ClockRequestUserModel() when $default != null:
return $default(_that.id,_that.username,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClockRequestUserModel implements ClockRequestUserModel {
  const _ClockRequestUserModel({@JsonKey(readValue: _readId) this.id = '', this.username = '', this.email = ''});
  factory _ClockRequestUserModel.fromJson(Map<String, dynamic> json) => _$ClockRequestUserModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey() final  String username;
@override@JsonKey() final  String email;

/// Create a copy of ClockRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockRequestUserModelCopyWith<_ClockRequestUserModel> get copyWith => __$ClockRequestUserModelCopyWithImpl<_ClockRequestUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClockRequestUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockRequestUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,email);

@override
String toString() {
  return 'ClockRequestUserModel(id: $id, username: $username, email: $email)';
}


}

/// @nodoc
abstract mixin class _$ClockRequestUserModelCopyWith<$Res> implements $ClockRequestUserModelCopyWith<$Res> {
  factory _$ClockRequestUserModelCopyWith(_ClockRequestUserModel value, $Res Function(_ClockRequestUserModel) _then) = __$ClockRequestUserModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id, String username, String email
});




}
/// @nodoc
class __$ClockRequestUserModelCopyWithImpl<$Res>
    implements _$ClockRequestUserModelCopyWith<$Res> {
  __$ClockRequestUserModelCopyWithImpl(this._self, this._then);

  final _ClockRequestUserModel _self;
  final $Res Function(_ClockRequestUserModel) _then;

/// Create a copy of ClockRequestUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? username = null,Object? email = null,}) {
  return _then(_ClockRequestUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ClockRequestBranchModel {

@JsonKey(readValue: _readId) String get id; String get title; String get code;
/// Create a copy of ClockRequestBranchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClockRequestBranchModelCopyWith<ClockRequestBranchModel> get copyWith => _$ClockRequestBranchModelCopyWithImpl<ClockRequestBranchModel>(this as ClockRequestBranchModel, _$identity);

  /// Serializes this ClockRequestBranchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClockRequestBranchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,code);

@override
String toString() {
  return 'ClockRequestBranchModel(id: $id, title: $title, code: $code)';
}


}

/// @nodoc
abstract mixin class $ClockRequestBranchModelCopyWith<$Res>  {
  factory $ClockRequestBranchModelCopyWith(ClockRequestBranchModel value, $Res Function(ClockRequestBranchModel) _then) = _$ClockRequestBranchModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title, String code
});




}
/// @nodoc
class _$ClockRequestBranchModelCopyWithImpl<$Res>
    implements $ClockRequestBranchModelCopyWith<$Res> {
  _$ClockRequestBranchModelCopyWithImpl(this._self, this._then);

  final ClockRequestBranchModel _self;
  final $Res Function(ClockRequestBranchModel) _then;

/// Create a copy of ClockRequestBranchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? code = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClockRequestBranchModel].
extension ClockRequestBranchModelPatterns on ClockRequestBranchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClockRequestBranchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClockRequestBranchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClockRequestBranchModel value)  $default,){
final _that = this;
switch (_that) {
case _ClockRequestBranchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClockRequestBranchModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClockRequestBranchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClockRequestBranchModel() when $default != null:
return $default(_that.id,_that.title,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title,  String code)  $default,) {final _that = this;
switch (_that) {
case _ClockRequestBranchModel():
return $default(_that.id,_that.title,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id,  String title,  String code)?  $default,) {final _that = this;
switch (_that) {
case _ClockRequestBranchModel() when $default != null:
return $default(_that.id,_that.title,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClockRequestBranchModel implements ClockRequestBranchModel {
  const _ClockRequestBranchModel({@JsonKey(readValue: _readId) this.id = '', this.title = '', this.code = ''});
  factory _ClockRequestBranchModel.fromJson(Map<String, dynamic> json) => _$ClockRequestBranchModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String code;

/// Create a copy of ClockRequestBranchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClockRequestBranchModelCopyWith<_ClockRequestBranchModel> get copyWith => __$ClockRequestBranchModelCopyWithImpl<_ClockRequestBranchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClockRequestBranchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClockRequestBranchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,code);

@override
String toString() {
  return 'ClockRequestBranchModel(id: $id, title: $title, code: $code)';
}


}

/// @nodoc
abstract mixin class _$ClockRequestBranchModelCopyWith<$Res> implements $ClockRequestBranchModelCopyWith<$Res> {
  factory _$ClockRequestBranchModelCopyWith(_ClockRequestBranchModel value, $Res Function(_ClockRequestBranchModel) _then) = __$ClockRequestBranchModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title, String code
});




}
/// @nodoc
class __$ClockRequestBranchModelCopyWithImpl<$Res>
    implements _$ClockRequestBranchModelCopyWith<$Res> {
  __$ClockRequestBranchModelCopyWithImpl(this._self, this._then);

  final _ClockRequestBranchModel _self;
  final $Res Function(_ClockRequestBranchModel) _then;

/// Create a copy of ClockRequestBranchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? code = null,}) {
  return _then(_ClockRequestBranchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
