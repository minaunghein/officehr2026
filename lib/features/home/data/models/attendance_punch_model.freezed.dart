// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_punch_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendancePunchModel {

@JsonKey(readValue: _readId) String get id;@JsonKey(name: 'employee_id') String get employeeId;@JsonKey(name: 'company_id') String get companyId; DateTime? get date;@JsonKey(name: 'punch_time') String get punchTime;@JsonKey(name: 'punch_type') String get punchType; AttendanceLocationModel? get location; AttendanceDeviceModel? get device;@JsonKey(name: 'is_manual') bool get isManual; bool get deleted; DateTime? get createdAt; DateTime? get updatedAt;@JsonKey(name: '__v') int? get version;
/// Create a copy of AttendancePunchModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendancePunchModelCopyWith<AttendancePunchModel> get copyWith => _$AttendancePunchModelCopyWithImpl<AttendancePunchModel>(this as AttendancePunchModel, _$identity);

  /// Serializes this AttendancePunchModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendancePunchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.location, location) || other.location == location)&&(identical(other.device, device) || other.device == device)&&(identical(other.isManual, isManual) || other.isManual == isManual)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,companyId,date,punchTime,punchType,location,device,isManual,deleted,createdAt,updatedAt,version);

@override
String toString() {
  return 'AttendancePunchModel(id: $id, employeeId: $employeeId, companyId: $companyId, date: $date, punchTime: $punchTime, punchType: $punchType, location: $location, device: $device, isManual: $isManual, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class $AttendancePunchModelCopyWith<$Res>  {
  factory $AttendancePunchModelCopyWith(AttendancePunchModel value, $Res Function(AttendancePunchModel) _then) = _$AttendancePunchModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'company_id') String companyId, DateTime? date,@JsonKey(name: 'punch_time') String punchTime,@JsonKey(name: 'punch_type') String punchType, AttendanceLocationModel? location, AttendanceDeviceModel? device,@JsonKey(name: 'is_manual') bool isManual, bool deleted, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});


$AttendanceLocationModelCopyWith<$Res>? get location;$AttendanceDeviceModelCopyWith<$Res>? get device;

}
/// @nodoc
class _$AttendancePunchModelCopyWithImpl<$Res>
    implements $AttendancePunchModelCopyWith<$Res> {
  _$AttendancePunchModelCopyWithImpl(this._self, this._then);

  final AttendancePunchModel _self;
  final $Res Function(AttendancePunchModel) _then;

/// Create a copy of AttendancePunchModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? companyId = null,Object? date = freezed,Object? punchTime = null,Object? punchType = null,Object? location = freezed,Object? device = freezed,Object? isManual = null,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AttendanceLocationModel?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceDeviceModel?,isManual: null == isManual ? _self.isManual : isManual // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of AttendancePunchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $AttendanceLocationModelCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of AttendancePunchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceDeviceModelCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceDeviceModelCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendancePunchModel].
extension AttendancePunchModelPatterns on AttendancePunchModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendancePunchModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendancePunchModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendancePunchModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendancePunchModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendancePunchModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendancePunchModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'company_id')  String companyId,  DateTime? date, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type')  String punchType,  AttendanceLocationModel? location,  AttendanceDeviceModel? device, @JsonKey(name: 'is_manual')  bool isManual,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendancePunchModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.punchTime,_that.punchType,_that.location,_that.device,_that.isManual,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'company_id')  String companyId,  DateTime? date, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type')  String punchType,  AttendanceLocationModel? location,  AttendanceDeviceModel? device, @JsonKey(name: 'is_manual')  bool isManual,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)  $default,) {final _that = this;
switch (_that) {
case _AttendancePunchModel():
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.punchTime,_that.punchType,_that.location,_that.device,_that.isManual,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readId)  String id, @JsonKey(name: 'employee_id')  String employeeId, @JsonKey(name: 'company_id')  String companyId,  DateTime? date, @JsonKey(name: 'punch_time')  String punchTime, @JsonKey(name: 'punch_type')  String punchType,  AttendanceLocationModel? location,  AttendanceDeviceModel? device, @JsonKey(name: 'is_manual')  bool isManual,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt, @JsonKey(name: '__v')  int? version)?  $default,) {final _that = this;
switch (_that) {
case _AttendancePunchModel() when $default != null:
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.punchTime,_that.punchType,_that.location,_that.device,_that.isManual,_that.deleted,_that.createdAt,_that.updatedAt,_that.version);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendancePunchModel extends AttendancePunchModel {
  const _AttendancePunchModel({@JsonKey(readValue: _readId) this.id = '', @JsonKey(name: 'employee_id') this.employeeId = '', @JsonKey(name: 'company_id') this.companyId = '', this.date, @JsonKey(name: 'punch_time') this.punchTime = '', @JsonKey(name: 'punch_type') this.punchType = '', this.location, this.device, @JsonKey(name: 'is_manual') this.isManual = false, this.deleted = false, this.createdAt, this.updatedAt, @JsonKey(name: '__v') this.version}): super._();
  factory _AttendancePunchModel.fromJson(Map<String, dynamic> json) => _$AttendancePunchModelFromJson(json);

@override@JsonKey(readValue: _readId) final  String id;
@override@JsonKey(name: 'employee_id') final  String employeeId;
@override@JsonKey(name: 'company_id') final  String companyId;
@override final  DateTime? date;
@override@JsonKey(name: 'punch_time') final  String punchTime;
@override@JsonKey(name: 'punch_type') final  String punchType;
@override final  AttendanceLocationModel? location;
@override final  AttendanceDeviceModel? device;
@override@JsonKey(name: 'is_manual') final  bool isManual;
@override@JsonKey() final  bool deleted;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey(name: '__v') final  int? version;

/// Create a copy of AttendancePunchModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendancePunchModelCopyWith<_AttendancePunchModel> get copyWith => __$AttendancePunchModelCopyWithImpl<_AttendancePunchModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendancePunchModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendancePunchModel&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.location, location) || other.location == location)&&(identical(other.device, device) || other.device == device)&&(identical(other.isManual, isManual) || other.isManual == isManual)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,employeeId,companyId,date,punchTime,punchType,location,device,isManual,deleted,createdAt,updatedAt,version);

@override
String toString() {
  return 'AttendancePunchModel(id: $id, employeeId: $employeeId, companyId: $companyId, date: $date, punchTime: $punchTime, punchType: $punchType, location: $location, device: $device, isManual: $isManual, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt, version: $version)';
}


}

/// @nodoc
abstract mixin class _$AttendancePunchModelCopyWith<$Res> implements $AttendancePunchModelCopyWith<$Res> {
  factory _$AttendancePunchModelCopyWith(_AttendancePunchModel value, $Res Function(_AttendancePunchModel) _then) = __$AttendancePunchModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readId) String id,@JsonKey(name: 'employee_id') String employeeId,@JsonKey(name: 'company_id') String companyId, DateTime? date,@JsonKey(name: 'punch_time') String punchTime,@JsonKey(name: 'punch_type') String punchType, AttendanceLocationModel? location, AttendanceDeviceModel? device,@JsonKey(name: 'is_manual') bool isManual, bool deleted, DateTime? createdAt, DateTime? updatedAt,@JsonKey(name: '__v') int? version
});


@override $AttendanceLocationModelCopyWith<$Res>? get location;@override $AttendanceDeviceModelCopyWith<$Res>? get device;

}
/// @nodoc
class __$AttendancePunchModelCopyWithImpl<$Res>
    implements _$AttendancePunchModelCopyWith<$Res> {
  __$AttendancePunchModelCopyWithImpl(this._self, this._then);

  final _AttendancePunchModel _self;
  final $Res Function(_AttendancePunchModel) _then;

/// Create a copy of AttendancePunchModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? companyId = null,Object? date = freezed,Object? punchTime = null,Object? punchType = null,Object? location = freezed,Object? device = freezed,Object? isManual = null,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? version = freezed,}) {
  return _then(_AttendancePunchModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AttendanceLocationModel?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceDeviceModel?,isManual: null == isManual ? _self.isManual : isManual // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AttendancePunchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationModelCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $AttendanceLocationModelCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of AttendancePunchModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceDeviceModelCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceDeviceModelCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

// dart format on
