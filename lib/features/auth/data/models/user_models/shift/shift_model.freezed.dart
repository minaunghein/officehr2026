// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShiftModel {

@JsonKey(readValue: _readId) String get id; String get title; String get code; String get type; String? get description;@JsonKey(name: 'default_start') String get defaultStart;@JsonKey(name: 'default_end') String get defaultEnd; List<ShiftDayModel> get days;@JsonKey(name: 'core_hours_start') String? get coreHoursStart;@JsonKey(name: 'core_hours_end') String? get coreHoursEnd;@JsonKey(name: 'is_default') bool get isDefault;@JsonKey(name: 'company_id') String get companyId;@JsonKey(name: 'is_active') bool get isActive; bool get deleted; String? get deletedAt;@JsonKey(name: 'early_leave_grace_minutes') int get earlyLeaveGraceMinutes;@JsonKey(name: 'late_grace_minutes') int get lateGraceMinutes;@JsonKey(name: 'merge_window_minutes') int get mergeWindowMinutes;@JsonKey(name: 'rounding_interval') int get roundingInterval;@JsonKey(name: 'rounding_mode') String get roundingMode; String? get createdAt; String? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftModelCopyWith<ShiftModel> get copyWith => _$ShiftModelCopyWithImpl<ShiftModel>(this as ShiftModel, _$identity);

  /// Serializes this ShiftModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.code, code) || other.code == code)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.defaultStart, defaultStart) || other.defaultStart == defaultStart)&&(identical(other.defaultEnd, defaultEnd) || other.defaultEnd == defaultEnd)&&const DeepCollectionEquality().equals(other.days, days)&&(identical(other.coreHoursStart, coreHoursStart) || other.coreHoursStart == coreHoursStart)&&(identical(other.coreHoursEnd, coreHoursEnd) || other.coreHoursEnd == coreHoursEnd)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.earlyLeaveGraceMinutes, earlyLeaveGraceMinutes) || other.earlyLeaveGraceMinutes == earlyLeaveGraceMinutes)&&(identical(other.lateGraceMinutes, lateGraceMinutes) || other.lateGraceMinutes == lateGraceMinutes)&&(identical(other.mergeWindowMinutes, mergeWindowMinutes) || other.mergeWindowMinutes == mergeWindowMinutes)&&(identical(other.roundingInterval, roundingInterval) || other.roundingInterval == roundingInterval)&&(identical(other.roundingMode, roundingMode) || other.roundingMode == roundingMode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,code,type,description,defaultStart,defaultEnd,const DeepCollectionEquality().hash(days),coreHoursStart,coreHoursEnd,isDefault,companyId,isActive,deleted,deletedAt,earlyLeaveGraceMinutes,lateGraceMinutes,mergeWindowMinutes,roundingInterval,roundingMode,createdAt,updatedAt,version]);

@override
String toString() {
  return 'ShiftModel(id: $id, title: $title, code: $code, type: $type, description: $description, defaultStart: $defaultStart, defaultEnd: $defaultEnd, days: $days, coreHoursStart: $coreHoursStart, coreHoursEnd: $coreHoursEnd, isDefault: $isDefault, companyId: $companyId, isActive: $isActive, deleted: $deleted, deletedAt: $deletedAt, earlyLeaveGraceMinutes: $earlyLeaveGraceMinutes, lateGraceMinutes: $lateGraceMinutes, mergeWindowMinutes: $mergeWindowMinutes, roundingInterval: $roundingInterval, roundingMode: $roundingMode, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $ShiftModelCopyWith<$Res>  {
  factory $ShiftModelCopyWith(ShiftModel value, $Res Function(ShiftModel) _then) = _$ShiftModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title, String code, String type, String? description,@JsonKey(name: 'default_start') String defaultStart,@JsonKey(name: 'default_end') String defaultEnd, List<ShiftDayModel> days,@JsonKey(name: 'core_hours_start') String? coreHoursStart,@JsonKey(name: 'core_hours_end') String? coreHoursEnd,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'is_active') bool isActive, bool deleted, String? deletedAt,@JsonKey(name: 'early_leave_grace_minutes') int earlyLeaveGraceMinutes,@JsonKey(name: 'late_grace_minutes') int lateGraceMinutes,@JsonKey(name: 'merge_window_minutes') int mergeWindowMinutes,@JsonKey(name: 'rounding_interval') int roundingInterval,@JsonKey(name: 'rounding_mode') String roundingMode, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class _$ShiftModelCopyWithImpl<$Res>
    implements $ShiftModelCopyWith<$Res> {
  _$ShiftModelCopyWithImpl(this._self, this._then);

  final ShiftModel _self;
  final $Res Function(ShiftModel) _then;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? code = null,Object? type = null,Object? description = freezed,Object? defaultStart = null,Object? defaultEnd = null,Object? days = null,Object? coreHoursStart = freezed,Object? coreHoursEnd = freezed,Object? isDefault = null,Object? companyId = null,Object? isActive = null,Object? deleted = null,Object? deletedAt = freezed,Object? earlyLeaveGraceMinutes = null,Object? lateGraceMinutes = null,Object? mergeWindowMinutes = null,Object? roundingInterval = null,Object? roundingMode = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,defaultStart: null == defaultStart ? _self.defaultStart : defaultStart // ignore: cast_nullable_to_non_nullable
as String,defaultEnd: null == defaultEnd ? _self.defaultEnd : defaultEnd // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as List<ShiftDayModel>,coreHoursStart: freezed == coreHoursStart ? _self.coreHoursStart : coreHoursStart // ignore: cast_nullable_to_non_nullable
as String?,coreHoursEnd: freezed == coreHoursEnd ? _self.coreHoursEnd : coreHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,earlyLeaveGraceMinutes: null == earlyLeaveGraceMinutes ? _self.earlyLeaveGraceMinutes : earlyLeaveGraceMinutes // ignore: cast_nullable_to_non_nullable
as int,lateGraceMinutes: null == lateGraceMinutes ? _self.lateGraceMinutes : lateGraceMinutes // ignore: cast_nullable_to_non_nullable
as int,mergeWindowMinutes: null == mergeWindowMinutes ? _self.mergeWindowMinutes : mergeWindowMinutes // ignore: cast_nullable_to_non_nullable
as int,roundingInterval: null == roundingInterval ? _self.roundingInterval : roundingInterval // ignore: cast_nullable_to_non_nullable
as int,roundingMode: null == roundingMode ? _self.roundingMode : roundingMode // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftModel].
extension ShiftModelPatterns on ShiftModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftModel value)  $default,){
final _that = this;
switch (_that) {
case _ShiftModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title,  String code,  String type,  String? description, @JsonKey(name: 'default_start')  String defaultStart, @JsonKey(name: 'default_end')  String defaultEnd,  List<ShiftDayModel> days, @JsonKey(name: 'core_hours_start')  String? coreHoursStart, @JsonKey(name: 'core_hours_end')  String? coreHoursEnd, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive,  bool deleted,  String? deletedAt, @JsonKey(name: 'early_leave_grace_minutes')  int earlyLeaveGraceMinutes, @JsonKey(name: 'late_grace_minutes')  int lateGraceMinutes, @JsonKey(name: 'merge_window_minutes')  int mergeWindowMinutes, @JsonKey(name: 'rounding_interval')  int roundingInterval, @JsonKey(name: 'rounding_mode')  String roundingMode,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
return $default(_that.id,_that.title,_that.code,_that.type,_that.description,_that.defaultStart,_that.defaultEnd,_that.days,_that.coreHoursStart,_that.coreHoursEnd,_that.isDefault,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt,_that.earlyLeaveGraceMinutes,_that.lateGraceMinutes,_that.mergeWindowMinutes,_that.roundingInterval,_that.roundingMode,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id,  String title,  String code,  String type,  String? description, @JsonKey(name: 'default_start')  String defaultStart, @JsonKey(name: 'default_end')  String defaultEnd,  List<ShiftDayModel> days, @JsonKey(name: 'core_hours_start')  String? coreHoursStart, @JsonKey(name: 'core_hours_end')  String? coreHoursEnd, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive,  bool deleted,  String? deletedAt, @JsonKey(name: 'early_leave_grace_minutes')  int earlyLeaveGraceMinutes, @JsonKey(name: 'late_grace_minutes')  int lateGraceMinutes, @JsonKey(name: 'merge_window_minutes')  int mergeWindowMinutes, @JsonKey(name: 'rounding_interval')  int roundingInterval, @JsonKey(name: 'rounding_mode')  String roundingMode,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _ShiftModel():
return $default(_that.id,_that.title,_that.code,_that.type,_that.description,_that.defaultStart,_that.defaultEnd,_that.days,_that.coreHoursStart,_that.coreHoursEnd,_that.isDefault,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt,_that.earlyLeaveGraceMinutes,_that.lateGraceMinutes,_that.mergeWindowMinutes,_that.roundingInterval,_that.roundingMode,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id,  String title,  String code,  String type,  String? description, @JsonKey(name: 'default_start')  String defaultStart, @JsonKey(name: 'default_end')  String defaultEnd,  List<ShiftDayModel> days, @JsonKey(name: 'core_hours_start')  String? coreHoursStart, @JsonKey(name: 'core_hours_end')  String? coreHoursEnd, @JsonKey(name: 'is_default')  bool isDefault, @JsonKey(name: 'company_id')  String companyId, @JsonKey(name: 'is_active')  bool isActive,  bool deleted,  String? deletedAt, @JsonKey(name: 'early_leave_grace_minutes')  int earlyLeaveGraceMinutes, @JsonKey(name: 'late_grace_minutes')  int lateGraceMinutes, @JsonKey(name: 'merge_window_minutes')  int mergeWindowMinutes, @JsonKey(name: 'rounding_interval')  int roundingInterval, @JsonKey(name: 'rounding_mode')  String roundingMode,  String? createdAt,  String? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _ShiftModel() when $default != null:
return $default(_that.id,_that.title,_that.code,_that.type,_that.description,_that.defaultStart,_that.defaultEnd,_that.days,_that.coreHoursStart,_that.coreHoursEnd,_that.isDefault,_that.companyId,_that.isActive,_that.deleted,_that.deletedAt,_that.earlyLeaveGraceMinutes,_that.lateGraceMinutes,_that.mergeWindowMinutes,_that.roundingInterval,_that.roundingMode,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftModel extends ShiftModel {
  const _ShiftModel({@JsonKey(readValue: _readId) this.id = '', this.title = '', this.code = '', this.type = '', this.description, @JsonKey(name: 'default_start') this.defaultStart = '', @JsonKey(name: 'default_end') this.defaultEnd = '', final  List<ShiftDayModel> days = const <ShiftDayModel>[], @JsonKey(name: 'core_hours_start') this.coreHoursStart, @JsonKey(name: 'core_hours_end') this.coreHoursEnd, @JsonKey(name: 'is_default') this.isDefault = false, @JsonKey(name: 'company_id') this.companyId = '', @JsonKey(name: 'is_active') this.isActive = false, this.deleted = false, this.deletedAt, @JsonKey(name: 'early_leave_grace_minutes') this.earlyLeaveGraceMinutes = 0, @JsonKey(name: 'late_grace_minutes') this.lateGraceMinutes = 0, @JsonKey(name: 'merge_window_minutes') this.mergeWindowMinutes = 0, @JsonKey(name: 'rounding_interval') this.roundingInterval = 0, @JsonKey(name: 'rounding_mode') this.roundingMode = '', this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version}): _days = days,super._();
  factory _ShiftModel.fromJson(Map<String, dynamic> json) => _$ShiftModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String code;
@override@JsonKey() final  String type;
@override final  String? description;
@override@JsonKey(name: 'default_start') final  String defaultStart;
@override@JsonKey(name: 'default_end') final  String defaultEnd;
 final  List<ShiftDayModel> _days;
@override@JsonKey() List<ShiftDayModel> get days {
  if (_days is EqualUnmodifiableListView) return _days;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_days);
}

@override@JsonKey(name: 'core_hours_start') final  String? coreHoursStart;
@override@JsonKey(name: 'core_hours_end') final  String? coreHoursEnd;
@override@JsonKey(name: 'is_default') final  bool isDefault;
@override@JsonKey(name: 'company_id') final  String companyId;
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey() final  bool deleted;
@override final  String? deletedAt;
@override@JsonKey(name: 'early_leave_grace_minutes') final  int earlyLeaveGraceMinutes;
@override@JsonKey(name: 'late_grace_minutes') final  int lateGraceMinutes;
@override@JsonKey(name: 'merge_window_minutes') final  int mergeWindowMinutes;
@override@JsonKey(name: 'rounding_interval') final  int roundingInterval;
@override@JsonKey(name: 'rounding_mode') final  String roundingMode;
@override final  String? createdAt;
@override final  String? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftModelCopyWith<_ShiftModel> get copyWith => __$ShiftModelCopyWithImpl<_ShiftModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.code, code) || other.code == code)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.defaultStart, defaultStart) || other.defaultStart == defaultStart)&&(identical(other.defaultEnd, defaultEnd) || other.defaultEnd == defaultEnd)&&const DeepCollectionEquality().equals(other._days, _days)&&(identical(other.coreHoursStart, coreHoursStart) || other.coreHoursStart == coreHoursStart)&&(identical(other.coreHoursEnd, coreHoursEnd) || other.coreHoursEnd == coreHoursEnd)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.earlyLeaveGraceMinutes, earlyLeaveGraceMinutes) || other.earlyLeaveGraceMinutes == earlyLeaveGraceMinutes)&&(identical(other.lateGraceMinutes, lateGraceMinutes) || other.lateGraceMinutes == lateGraceMinutes)&&(identical(other.mergeWindowMinutes, mergeWindowMinutes) || other.mergeWindowMinutes == mergeWindowMinutes)&&(identical(other.roundingInterval, roundingInterval) || other.roundingInterval == roundingInterval)&&(identical(other.roundingMode, roundingMode) || other.roundingMode == roundingMode)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,code,type,description,defaultStart,defaultEnd,const DeepCollectionEquality().hash(_days),coreHoursStart,coreHoursEnd,isDefault,companyId,isActive,deleted,deletedAt,earlyLeaveGraceMinutes,lateGraceMinutes,mergeWindowMinutes,roundingInterval,roundingMode,createdAt,updatedAt,version]);

@override
String toString() {
  return 'ShiftModel(id: $id, title: $title, code: $code, type: $type, description: $description, defaultStart: $defaultStart, defaultEnd: $defaultEnd, days: $days, coreHoursStart: $coreHoursStart, coreHoursEnd: $coreHoursEnd, isDefault: $isDefault, companyId: $companyId, isActive: $isActive, deleted: $deleted, deletedAt: $deletedAt, earlyLeaveGraceMinutes: $earlyLeaveGraceMinutes, lateGraceMinutes: $lateGraceMinutes, mergeWindowMinutes: $mergeWindowMinutes, roundingInterval: $roundingInterval, roundingMode: $roundingMode, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$ShiftModelCopyWith<$Res> implements $ShiftModelCopyWith<$Res> {
  factory _$ShiftModelCopyWith(_ShiftModel value, $Res Function(_ShiftModel) _then) = __$ShiftModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id, String title, String code, String type, String? description,@JsonKey(name: 'default_start') String defaultStart,@JsonKey(name: 'default_end') String defaultEnd, List<ShiftDayModel> days,@JsonKey(name: 'core_hours_start') String? coreHoursStart,@JsonKey(name: 'core_hours_end') String? coreHoursEnd,@JsonKey(name: 'is_default') bool isDefault,@JsonKey(name: 'company_id') String companyId,@JsonKey(name: 'is_active') bool isActive, bool deleted, String? deletedAt,@JsonKey(name: 'early_leave_grace_minutes') int earlyLeaveGraceMinutes,@JsonKey(name: 'late_grace_minutes') int lateGraceMinutes,@JsonKey(name: 'merge_window_minutes') int mergeWindowMinutes,@JsonKey(name: 'rounding_interval') int roundingInterval,@JsonKey(name: 'rounding_mode') String roundingMode, String? createdAt, String? updatedAt,@JsonKey(name: '__v') int? version
});




}
/// @nodoc
class __$ShiftModelCopyWithImpl<$Res>
    implements _$ShiftModelCopyWith<$Res> {
  __$ShiftModelCopyWithImpl(this._self, this._then);

  final _ShiftModel _self;
  final $Res Function(_ShiftModel) _then;

/// Create a copy of ShiftModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? code = null,Object? type = null,Object? description = freezed,Object? defaultStart = null,Object? defaultEnd = null,Object? days = null,Object? coreHoursStart = freezed,Object? coreHoursEnd = freezed,Object? isDefault = null,Object? companyId = null,Object? isActive = null,Object? deleted = null,Object? deletedAt = freezed,Object? earlyLeaveGraceMinutes = null,Object? lateGraceMinutes = null,Object? mergeWindowMinutes = null,Object? roundingInterval = null,Object? roundingMode = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_ShiftModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,defaultStart: null == defaultStart ? _self.defaultStart : defaultStart // ignore: cast_nullable_to_non_nullable
as String,defaultEnd: null == defaultEnd ? _self.defaultEnd : defaultEnd // ignore: cast_nullable_to_non_nullable
as String,days: null == days ? _self._days : days // ignore: cast_nullable_to_non_nullable
as List<ShiftDayModel>,coreHoursStart: freezed == coreHoursStart ? _self.coreHoursStart : coreHoursStart // ignore: cast_nullable_to_non_nullable
as String?,coreHoursEnd: freezed == coreHoursEnd ? _self.coreHoursEnd : coreHoursEnd // ignore: cast_nullable_to_non_nullable
as String?,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,earlyLeaveGraceMinutes: null == earlyLeaveGraceMinutes ? _self.earlyLeaveGraceMinutes : earlyLeaveGraceMinutes // ignore: cast_nullable_to_non_nullable
as int,lateGraceMinutes: null == lateGraceMinutes ? _self.lateGraceMinutes : lateGraceMinutes // ignore: cast_nullable_to_non_nullable
as int,mergeWindowMinutes: null == mergeWindowMinutes ? _self.mergeWindowMinutes : mergeWindowMinutes // ignore: cast_nullable_to_non_nullable
as int,roundingInterval: null == roundingInterval ? _self.roundingInterval : roundingInterval // ignore: cast_nullable_to_non_nullable
as int,roundingMode: null == roundingMode ? _self.roundingMode : roundingMode // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
