// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_punch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendancePunch {

 String get id; String get employeeId; String get companyId; DateTime? get date; String get punchTime; String get punchType; AttendanceLocation? get location; AttendanceDevice? get device; bool get isManual; bool get deleted; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of AttendancePunch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendancePunchCopyWith<AttendancePunch> get copyWith => _$AttendancePunchCopyWithImpl<AttendancePunch>(this as AttendancePunch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendancePunch&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.location, location) || other.location == location)&&(identical(other.device, device) || other.device == device)&&(identical(other.isManual, isManual) || other.isManual == isManual)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,employeeId,companyId,date,punchTime,punchType,location,device,isManual,deleted,createdAt,updatedAt);

@override
String toString() {
  return 'AttendancePunch(id: $id, employeeId: $employeeId, companyId: $companyId, date: $date, punchTime: $punchTime, punchType: $punchType, location: $location, device: $device, isManual: $isManual, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $AttendancePunchCopyWith<$Res>  {
  factory $AttendancePunchCopyWith(AttendancePunch value, $Res Function(AttendancePunch) _then) = _$AttendancePunchCopyWithImpl;
@useResult
$Res call({
 String id, String employeeId, String companyId, DateTime? date, String punchTime, String punchType, AttendanceLocation? location, AttendanceDevice? device, bool isManual, bool deleted, DateTime? createdAt, DateTime? updatedAt
});


$AttendanceLocationCopyWith<$Res>? get location;$AttendanceDeviceCopyWith<$Res>? get device;

}
/// @nodoc
class _$AttendancePunchCopyWithImpl<$Res>
    implements $AttendancePunchCopyWith<$Res> {
  _$AttendancePunchCopyWithImpl(this._self, this._then);

  final AttendancePunch _self;
  final $Res Function(AttendancePunch) _then;

/// Create a copy of AttendancePunch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? employeeId = null,Object? companyId = null,Object? date = freezed,Object? punchTime = null,Object? punchType = null,Object? location = freezed,Object? device = freezed,Object? isManual = null,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AttendanceLocation?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceDevice?,isManual: null == isManual ? _self.isManual : isManual // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}
/// Create a copy of AttendancePunch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $AttendanceLocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of AttendancePunch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceDeviceCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceDeviceCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}


/// Adds pattern-matching-related methods to [AttendancePunch].
extension AttendancePunchPatterns on AttendancePunch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendancePunch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendancePunch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendancePunch value)  $default,){
final _that = this;
switch (_that) {
case _AttendancePunch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendancePunch value)?  $default,){
final _that = this;
switch (_that) {
case _AttendancePunch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String employeeId,  String companyId,  DateTime? date,  String punchTime,  String punchType,  AttendanceLocation? location,  AttendanceDevice? device,  bool isManual,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendancePunch() when $default != null:
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.punchTime,_that.punchType,_that.location,_that.device,_that.isManual,_that.deleted,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String employeeId,  String companyId,  DateTime? date,  String punchTime,  String punchType,  AttendanceLocation? location,  AttendanceDevice? device,  bool isManual,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _AttendancePunch():
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.punchTime,_that.punchType,_that.location,_that.device,_that.isManual,_that.deleted,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String employeeId,  String companyId,  DateTime? date,  String punchTime,  String punchType,  AttendanceLocation? location,  AttendanceDevice? device,  bool isManual,  bool deleted,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _AttendancePunch() when $default != null:
return $default(_that.id,_that.employeeId,_that.companyId,_that.date,_that.punchTime,_that.punchType,_that.location,_that.device,_that.isManual,_that.deleted,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _AttendancePunch implements AttendancePunch {
  const _AttendancePunch({required this.id, required this.employeeId, required this.companyId, this.date, required this.punchTime, required this.punchType, this.location, this.device, required this.isManual, required this.deleted, this.createdAt, this.updatedAt});
  

@override final  String id;
@override final  String employeeId;
@override final  String companyId;
@override final  DateTime? date;
@override final  String punchTime;
@override final  String punchType;
@override final  AttendanceLocation? location;
@override final  AttendanceDevice? device;
@override final  bool isManual;
@override final  bool deleted;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of AttendancePunch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendancePunchCopyWith<_AttendancePunch> get copyWith => __$AttendancePunchCopyWithImpl<_AttendancePunch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendancePunch&&(identical(other.id, id) || other.id == id)&&(identical(other.employeeId, employeeId) || other.employeeId == employeeId)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.date, date) || other.date == date)&&(identical(other.punchTime, punchTime) || other.punchTime == punchTime)&&(identical(other.punchType, punchType) || other.punchType == punchType)&&(identical(other.location, location) || other.location == location)&&(identical(other.device, device) || other.device == device)&&(identical(other.isManual, isManual) || other.isManual == isManual)&&(identical(other.deleted, deleted) || other.deleted == deleted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,employeeId,companyId,date,punchTime,punchType,location,device,isManual,deleted,createdAt,updatedAt);

@override
String toString() {
  return 'AttendancePunch(id: $id, employeeId: $employeeId, companyId: $companyId, date: $date, punchTime: $punchTime, punchType: $punchType, location: $location, device: $device, isManual: $isManual, deleted: $deleted, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$AttendancePunchCopyWith<$Res> implements $AttendancePunchCopyWith<$Res> {
  factory _$AttendancePunchCopyWith(_AttendancePunch value, $Res Function(_AttendancePunch) _then) = __$AttendancePunchCopyWithImpl;
@override @useResult
$Res call({
 String id, String employeeId, String companyId, DateTime? date, String punchTime, String punchType, AttendanceLocation? location, AttendanceDevice? device, bool isManual, bool deleted, DateTime? createdAt, DateTime? updatedAt
});


@override $AttendanceLocationCopyWith<$Res>? get location;@override $AttendanceDeviceCopyWith<$Res>? get device;

}
/// @nodoc
class __$AttendancePunchCopyWithImpl<$Res>
    implements _$AttendancePunchCopyWith<$Res> {
  __$AttendancePunchCopyWithImpl(this._self, this._then);

  final _AttendancePunch _self;
  final $Res Function(_AttendancePunch) _then;

/// Create a copy of AttendancePunch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? employeeId = null,Object? companyId = null,Object? date = freezed,Object? punchTime = null,Object? punchType = null,Object? location = freezed,Object? device = freezed,Object? isManual = null,Object? deleted = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_AttendancePunch(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,employeeId: null == employeeId ? _self.employeeId : employeeId // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,punchTime: null == punchTime ? _self.punchTime : punchTime // ignore: cast_nullable_to_non_nullable
as String,punchType: null == punchType ? _self.punchType : punchType // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as AttendanceLocation?,device: freezed == device ? _self.device : device // ignore: cast_nullable_to_non_nullable
as AttendanceDevice?,isManual: null == isManual ? _self.isManual : isManual // ignore: cast_nullable_to_non_nullable
as bool,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

/// Create a copy of AttendancePunch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceLocationCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $AttendanceLocationCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of AttendancePunch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceDeviceCopyWith<$Res>? get device {
    if (_self.device == null) {
    return null;
  }

  return $AttendanceDeviceCopyWith<$Res>(_self.device!, (value) {
    return _then(_self.copyWith(device: value));
  });
}
}

// dart format on
