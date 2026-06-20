// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_leave.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserLeave {

 String get id; String get companyId; String get userId; String get settingLeaveId; List<String> get tags; bool get isPaid; bool get addToAll; String get leaveTitle; int get consecutiveDays; int get allowedDaysPerYear; int get allowedDaysSixMonth; int get requiredServiceDays; int get requiredWorkingDays; int get leaveTaken; int get validDaysNextYear; int get yearId; bool get carryNextYear; bool get defaultForNoClockInOut; bool get deleted; DateTime? get deletedAt; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of UserLeave
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserLeaveCopyWith<UserLeave> get copyWith => _$UserLeaveCopyWithImpl<UserLeave>(this as UserLeave, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLeave&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.settingLeaveId, settingLeaveId) || other.settingLeaveId == settingLeaveId)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.addToAll, addToAll) || other.addToAll == addToAll)&&(identical(other.leaveTitle, leaveTitle) || other.leaveTitle == leaveTitle)&&(identical(other.consecutiveDays, consecutiveDays) || other.consecutiveDays == consecutiveDays)&&(identical(other.allowedDaysPerYear, allowedDaysPerYear) || other.allowedDaysPerYear == allowedDaysPerYear)&&(identical(other.allowedDaysSixMonth, allowedDaysSixMonth) || other.allowedDaysSixMonth == allowedDaysSixMonth)&&(identical(other.requiredServiceDays, requiredServiceDays) || other.requiredServiceDays == requiredServiceDays)&&(identical(other.requiredWorkingDays, requiredWorkingDays) || other.requiredWorkingDays == requiredWorkingDays)&&(identical(other.leaveTaken, leaveTaken) || other.leaveTaken == leaveTaken)&&(identical(other.validDaysNextYear, validDaysNextYear) || other.validDaysNextYear == validDaysNextYear)&&(identical(other.yearId, yearId) || other.yearId == yearId)&&(identical(other.carryNextYear, carryNextYear) || other.carryNextYear == carryNextYear)&&(identical(other.defaultForNoClockInOut, defaultForNoClockInOut) || other.defaultForNoClockInOut == defaultForNoClockInOut)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,companyId,userId,settingLeaveId,const DeepCollectionEquality().hash(tags),isPaid,addToAll,leaveTitle,consecutiveDays,allowedDaysPerYear,allowedDaysSixMonth,requiredServiceDays,requiredWorkingDays,leaveTaken,validDaysNextYear,yearId,carryNextYear,defaultForNoClockInOut,deleted,deletedAt,createdAt,updatedAt]);

@override
String toString() {
  return 'UserLeave(id: $id, companyId: $companyId, userId: $userId, settingLeaveId: $settingLeaveId, tags: $tags, isPaid: $isPaid, addToAll: $addToAll, leaveTitle: $leaveTitle, consecutiveDays: $consecutiveDays, allowedDaysPerYear: $allowedDaysPerYear, allowedDaysSixMonth: $allowedDaysSixMonth, requiredServiceDays: $requiredServiceDays, requiredWorkingDays: $requiredWorkingDays, leaveTaken: $leaveTaken, validDaysNextYear: $validDaysNextYear, yearId: $yearId, carryNextYear: $carryNextYear, defaultForNoClockInOut: $defaultForNoClockInOut, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserLeaveCopyWith<$Res>  {
  factory $UserLeaveCopyWith(UserLeave value, $Res Function(UserLeave) _then) = _$UserLeaveCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String userId, String settingLeaveId, List<String> tags, bool isPaid, bool addToAll, String leaveTitle, int consecutiveDays, int allowedDaysPerYear, int allowedDaysSixMonth, int requiredServiceDays, int requiredWorkingDays, int leaveTaken, int validDaysNextYear, int yearId, bool carryNextYear, bool defaultForNoClockInOut, bool deleted, DateTime? deletedAt, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$UserLeaveCopyWithImpl<$Res>
    implements $UserLeaveCopyWith<$Res> {
  _$UserLeaveCopyWithImpl(this._self, this._then);

  final UserLeave _self;
  final $Res Function(UserLeave) _then;

/// Create a copy of UserLeave
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? settingLeaveId = null,Object? tags = null,Object? isPaid = null,Object? addToAll = null,Object? leaveTitle = null,Object? consecutiveDays = null,Object? allowedDaysPerYear = null,Object? allowedDaysSixMonth = null,Object? requiredServiceDays = null,Object? requiredWorkingDays = null,Object? leaveTaken = null,Object? validDaysNextYear = null,Object? yearId = null,Object? carryNextYear = null,Object? defaultForNoClockInOut = null,Object? deleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,settingLeaveId: null == settingLeaveId ? _self.settingLeaveId : settingLeaveId // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,addToAll: null == addToAll ? _self.addToAll : addToAll // ignore: cast_nullable_to_non_nullable
as bool,leaveTitle: null == leaveTitle ? _self.leaveTitle : leaveTitle // ignore: cast_nullable_to_non_nullable
as String,consecutiveDays: null == consecutiveDays ? _self.consecutiveDays : consecutiveDays // ignore: cast_nullable_to_non_nullable
as int,allowedDaysPerYear: null == allowedDaysPerYear ? _self.allowedDaysPerYear : allowedDaysPerYear // ignore: cast_nullable_to_non_nullable
as int,allowedDaysSixMonth: null == allowedDaysSixMonth ? _self.allowedDaysSixMonth : allowedDaysSixMonth // ignore: cast_nullable_to_non_nullable
as int,requiredServiceDays: null == requiredServiceDays ? _self.requiredServiceDays : requiredServiceDays // ignore: cast_nullable_to_non_nullable
as int,requiredWorkingDays: null == requiredWorkingDays ? _self.requiredWorkingDays : requiredWorkingDays // ignore: cast_nullable_to_non_nullable
as int,leaveTaken: null == leaveTaken ? _self.leaveTaken : leaveTaken // ignore: cast_nullable_to_non_nullable
as int,validDaysNextYear: null == validDaysNextYear ? _self.validDaysNextYear : validDaysNextYear // ignore: cast_nullable_to_non_nullable
as int,yearId: null == yearId ? _self.yearId : yearId // ignore: cast_nullable_to_non_nullable
as int,carryNextYear: null == carryNextYear ? _self.carryNextYear : carryNextYear // ignore: cast_nullable_to_non_nullable
as bool,defaultForNoClockInOut: null == defaultForNoClockInOut ? _self.defaultForNoClockInOut : defaultForNoClockInOut // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserLeave].
extension UserLeavePatterns on UserLeave {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserLeave value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserLeave() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserLeave value)  $default,){
final _that = this;
switch (_that) {
case _UserLeave():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserLeave value)?  $default,){
final _that = this;
switch (_that) {
case _UserLeave() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String userId,  String settingLeaveId,  List<String> tags,  bool isPaid,  bool addToAll,  String leaveTitle,  int consecutiveDays,  int allowedDaysPerYear,  int allowedDaysSixMonth,  int requiredServiceDays,  int requiredWorkingDays,  int leaveTaken,  int validDaysNextYear,  int yearId,  bool carryNextYear,  bool defaultForNoClockInOut,  bool deleted,  DateTime? deletedAt,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserLeave() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.settingLeaveId,_that.tags,_that.isPaid,_that.addToAll,_that.leaveTitle,_that.consecutiveDays,_that.allowedDaysPerYear,_that.allowedDaysSixMonth,_that.requiredServiceDays,_that.requiredWorkingDays,_that.leaveTaken,_that.validDaysNextYear,_that.yearId,_that.carryNextYear,_that.defaultForNoClockInOut,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String userId,  String settingLeaveId,  List<String> tags,  bool isPaid,  bool addToAll,  String leaveTitle,  int consecutiveDays,  int allowedDaysPerYear,  int allowedDaysSixMonth,  int requiredServiceDays,  int requiredWorkingDays,  int leaveTaken,  int validDaysNextYear,  int yearId,  bool carryNextYear,  bool defaultForNoClockInOut,  bool deleted,  DateTime? deletedAt,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserLeave():
return $default(_that.id,_that.companyId,_that.userId,_that.settingLeaveId,_that.tags,_that.isPaid,_that.addToAll,_that.leaveTitle,_that.consecutiveDays,_that.allowedDaysPerYear,_that.allowedDaysSixMonth,_that.requiredServiceDays,_that.requiredWorkingDays,_that.leaveTaken,_that.validDaysNextYear,_that.yearId,_that.carryNextYear,_that.defaultForNoClockInOut,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String userId,  String settingLeaveId,  List<String> tags,  bool isPaid,  bool addToAll,  String leaveTitle,  int consecutiveDays,  int allowedDaysPerYear,  int allowedDaysSixMonth,  int requiredServiceDays,  int requiredWorkingDays,  int leaveTaken,  int validDaysNextYear,  int yearId,  bool carryNextYear,  bool defaultForNoClockInOut,  bool deleted,  DateTime? deletedAt,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserLeave() when $default != null:
return $default(_that.id,_that.companyId,_that.userId,_that.settingLeaveId,_that.tags,_that.isPaid,_that.addToAll,_that.leaveTitle,_that.consecutiveDays,_that.allowedDaysPerYear,_that.allowedDaysSixMonth,_that.requiredServiceDays,_that.requiredWorkingDays,_that.leaveTaken,_that.validDaysNextYear,_that.yearId,_that.carryNextYear,_that.defaultForNoClockInOut,_that.deleted,_that.deletedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserLeave implements UserLeave {
  const _UserLeave({required this.id, required this.companyId, required this.userId, required this.settingLeaveId, required final  List<String> tags, required this.isPaid, required this.addToAll, required this.leaveTitle, required this.consecutiveDays, required this.allowedDaysPerYear, required this.allowedDaysSixMonth, required this.requiredServiceDays, required this.requiredWorkingDays, required this.leaveTaken, required this.validDaysNextYear, required this.yearId, required this.carryNextYear, required this.defaultForNoClockInOut, required this.deleted, this.deletedAt, this.createdAt, this.updatedAt}): _tags = tags;
  

@override final  String id;
@override final  String companyId;
@override final  String userId;
@override final  String settingLeaveId;
 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  bool isPaid;
@override final  bool addToAll;
@override final  String leaveTitle;
@override final  int consecutiveDays;
@override final  int allowedDaysPerYear;
@override final  int allowedDaysSixMonth;
@override final  int requiredServiceDays;
@override final  int requiredWorkingDays;
@override final  int leaveTaken;
@override final  int validDaysNextYear;
@override final  int yearId;
@override final  bool carryNextYear;
@override final  bool defaultForNoClockInOut;
@override final  bool deleted;
@override final  DateTime? deletedAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of UserLeave
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserLeaveCopyWith<_UserLeave> get copyWith => __$UserLeaveCopyWithImpl<_UserLeave>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserLeave&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.settingLeaveId, settingLeaveId) || other.settingLeaveId == settingLeaveId)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.addToAll, addToAll) || other.addToAll == addToAll)&&(identical(other.leaveTitle, leaveTitle) || other.leaveTitle == leaveTitle)&&(identical(other.consecutiveDays, consecutiveDays) || other.consecutiveDays == consecutiveDays)&&(identical(other.allowedDaysPerYear, allowedDaysPerYear) || other.allowedDaysPerYear == allowedDaysPerYear)&&(identical(other.allowedDaysSixMonth, allowedDaysSixMonth) || other.allowedDaysSixMonth == allowedDaysSixMonth)&&(identical(other.requiredServiceDays, requiredServiceDays) || other.requiredServiceDays == requiredServiceDays)&&(identical(other.requiredWorkingDays, requiredWorkingDays) || other.requiredWorkingDays == requiredWorkingDays)&&(identical(other.leaveTaken, leaveTaken) || other.leaveTaken == leaveTaken)&&(identical(other.validDaysNextYear, validDaysNextYear) || other.validDaysNextYear == validDaysNextYear)&&(identical(other.yearId, yearId) || other.yearId == yearId)&&(identical(other.carryNextYear, carryNextYear) || other.carryNextYear == carryNextYear)&&(identical(other.defaultForNoClockInOut, defaultForNoClockInOut) || other.defaultForNoClockInOut == defaultForNoClockInOut)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,companyId,userId,settingLeaveId,const DeepCollectionEquality().hash(_tags),isPaid,addToAll,leaveTitle,consecutiveDays,allowedDaysPerYear,allowedDaysSixMonth,requiredServiceDays,requiredWorkingDays,leaveTaken,validDaysNextYear,yearId,carryNextYear,defaultForNoClockInOut,deleted,deletedAt,createdAt,updatedAt]);

@override
String toString() {
  return 'UserLeave(id: $id, companyId: $companyId, userId: $userId, settingLeaveId: $settingLeaveId, tags: $tags, isPaid: $isPaid, addToAll: $addToAll, leaveTitle: $leaveTitle, consecutiveDays: $consecutiveDays, allowedDaysPerYear: $allowedDaysPerYear, allowedDaysSixMonth: $allowedDaysSixMonth, requiredServiceDays: $requiredServiceDays, requiredWorkingDays: $requiredWorkingDays, leaveTaken: $leaveTaken, validDaysNextYear: $validDaysNextYear, yearId: $yearId, carryNextYear: $carryNextYear, defaultForNoClockInOut: $defaultForNoClockInOut, deleted: $deleted, deletedAt: $deletedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserLeaveCopyWith<$Res> implements $UserLeaveCopyWith<$Res> {
  factory _$UserLeaveCopyWith(_UserLeave value, $Res Function(_UserLeave) _then) = __$UserLeaveCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String userId, String settingLeaveId, List<String> tags, bool isPaid, bool addToAll, String leaveTitle, int consecutiveDays, int allowedDaysPerYear, int allowedDaysSixMonth, int requiredServiceDays, int requiredWorkingDays, int leaveTaken, int validDaysNextYear, int yearId, bool carryNextYear, bool defaultForNoClockInOut, bool deleted, DateTime? deletedAt, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$UserLeaveCopyWithImpl<$Res>
    implements _$UserLeaveCopyWith<$Res> {
  __$UserLeaveCopyWithImpl(this._self, this._then);

  final _UserLeave _self;
  final $Res Function(_UserLeave) _then;

/// Create a copy of UserLeave
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? userId = null,Object? settingLeaveId = null,Object? tags = null,Object? isPaid = null,Object? addToAll = null,Object? leaveTitle = null,Object? consecutiveDays = null,Object? allowedDaysPerYear = null,Object? allowedDaysSixMonth = null,Object? requiredServiceDays = null,Object? requiredWorkingDays = null,Object? leaveTaken = null,Object? validDaysNextYear = null,Object? yearId = null,Object? carryNextYear = null,Object? defaultForNoClockInOut = null,Object? deleted = null,Object? deletedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserLeave(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,settingLeaveId: null == settingLeaveId ? _self.settingLeaveId : settingLeaveId // ignore: cast_nullable_to_non_nullable
as String,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,addToAll: null == addToAll ? _self.addToAll : addToAll // ignore: cast_nullable_to_non_nullable
as bool,leaveTitle: null == leaveTitle ? _self.leaveTitle : leaveTitle // ignore: cast_nullable_to_non_nullable
as String,consecutiveDays: null == consecutiveDays ? _self.consecutiveDays : consecutiveDays // ignore: cast_nullable_to_non_nullable
as int,allowedDaysPerYear: null == allowedDaysPerYear ? _self.allowedDaysPerYear : allowedDaysPerYear // ignore: cast_nullable_to_non_nullable
as int,allowedDaysSixMonth: null == allowedDaysSixMonth ? _self.allowedDaysSixMonth : allowedDaysSixMonth // ignore: cast_nullable_to_non_nullable
as int,requiredServiceDays: null == requiredServiceDays ? _self.requiredServiceDays : requiredServiceDays // ignore: cast_nullable_to_non_nullable
as int,requiredWorkingDays: null == requiredWorkingDays ? _self.requiredWorkingDays : requiredWorkingDays // ignore: cast_nullable_to_non_nullable
as int,leaveTaken: null == leaveTaken ? _self.leaveTaken : leaveTaken // ignore: cast_nullable_to_non_nullable
as int,validDaysNextYear: null == validDaysNextYear ? _self.validDaysNextYear : validDaysNextYear // ignore: cast_nullable_to_non_nullable
as int,yearId: null == yearId ? _self.yearId : yearId // ignore: cast_nullable_to_non_nullable
as int,carryNextYear: null == carryNextYear ? _self.carryNextYear : carryNextYear // ignore: cast_nullable_to_non_nullable
as bool,defaultForNoClockInOut: null == defaultForNoClockInOut ? _self.defaultForNoClockInOut : defaultForNoClockInOut // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
