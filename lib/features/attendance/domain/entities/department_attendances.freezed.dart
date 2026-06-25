// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department_attendances.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DepartmentAttendances {

 UserDetails get user; List<Attendance> get clockins; Attendance? get sod; Attendance? get eod;
/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentAttendancesCopyWith<DepartmentAttendances> get copyWith => _$DepartmentAttendancesCopyWithImpl<DepartmentAttendances>(this as DepartmentAttendances, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentAttendances&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.clockins, clockins)&&(identical(other.sod, sod) || other.sod == sod)&&(identical(other.eod, eod) || other.eod == eod));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(clockins),sod,eod);

@override
String toString() {
  return 'DepartmentAttendances(user: $user, clockins: $clockins, sod: $sod, eod: $eod)';
}


}

/// @nodoc
abstract mixin class $DepartmentAttendancesCopyWith<$Res>  {
  factory $DepartmentAttendancesCopyWith(DepartmentAttendances value, $Res Function(DepartmentAttendances) _then) = _$DepartmentAttendancesCopyWithImpl;
@useResult
$Res call({
 UserDetails user, List<Attendance> clockins, Attendance? sod, Attendance? eod
});


$UserDetailsCopyWith<$Res> get user;$AttendanceCopyWith<$Res>? get sod;$AttendanceCopyWith<$Res>? get eod;

}
/// @nodoc
class _$DepartmentAttendancesCopyWithImpl<$Res>
    implements $DepartmentAttendancesCopyWith<$Res> {
  _$DepartmentAttendancesCopyWithImpl(this._self, this._then);

  final DepartmentAttendances _self;
  final $Res Function(DepartmentAttendances) _then;

/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? clockins = null,Object? sod = freezed,Object? eod = freezed,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetails,clockins: null == clockins ? _self.clockins : clockins // ignore: cast_nullable_to_non_nullable
as List<Attendance>,sod: freezed == sod ? _self.sod : sod // ignore: cast_nullable_to_non_nullable
as Attendance?,eod: freezed == eod ? _self.eod : eod // ignore: cast_nullable_to_non_nullable
as Attendance?,
  ));
}
/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsCopyWith<$Res> get user {
  
  return $UserDetailsCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res>? get sod {
    if (_self.sod == null) {
    return null;
  }

  return $AttendanceCopyWith<$Res>(_self.sod!, (value) {
    return _then(_self.copyWith(sod: value));
  });
}/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res>? get eod {
    if (_self.eod == null) {
    return null;
  }

  return $AttendanceCopyWith<$Res>(_self.eod!, (value) {
    return _then(_self.copyWith(eod: value));
  });
}
}


/// Adds pattern-matching-related methods to [DepartmentAttendances].
extension DepartmentAttendancesPatterns on DepartmentAttendances {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepartmentAttendances value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepartmentAttendances() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepartmentAttendances value)  $default,){
final _that = this;
switch (_that) {
case _DepartmentAttendances():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepartmentAttendances value)?  $default,){
final _that = this;
switch (_that) {
case _DepartmentAttendances() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDetails user,  List<Attendance> clockins,  Attendance? sod,  Attendance? eod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepartmentAttendances() when $default != null:
return $default(_that.user,_that.clockins,_that.sod,_that.eod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDetails user,  List<Attendance> clockins,  Attendance? sod,  Attendance? eod)  $default,) {final _that = this;
switch (_that) {
case _DepartmentAttendances():
return $default(_that.user,_that.clockins,_that.sod,_that.eod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDetails user,  List<Attendance> clockins,  Attendance? sod,  Attendance? eod)?  $default,) {final _that = this;
switch (_that) {
case _DepartmentAttendances() when $default != null:
return $default(_that.user,_that.clockins,_that.sod,_that.eod);case _:
  return null;

}
}

}

/// @nodoc


class _DepartmentAttendances implements DepartmentAttendances {
  const _DepartmentAttendances({required this.user, required final  List<Attendance> clockins, this.sod, this.eod}): _clockins = clockins;
  

@override final  UserDetails user;
 final  List<Attendance> _clockins;
@override List<Attendance> get clockins {
  if (_clockins is EqualUnmodifiableListView) return _clockins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clockins);
}

@override final  Attendance? sod;
@override final  Attendance? eod;

/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartmentAttendancesCopyWith<_DepartmentAttendances> get copyWith => __$DepartmentAttendancesCopyWithImpl<_DepartmentAttendances>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepartmentAttendances&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._clockins, _clockins)&&(identical(other.sod, sod) || other.sod == sod)&&(identical(other.eod, eod) || other.eod == eod));
}


@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(_clockins),sod,eod);

@override
String toString() {
  return 'DepartmentAttendances(user: $user, clockins: $clockins, sod: $sod, eod: $eod)';
}


}

/// @nodoc
abstract mixin class _$DepartmentAttendancesCopyWith<$Res> implements $DepartmentAttendancesCopyWith<$Res> {
  factory _$DepartmentAttendancesCopyWith(_DepartmentAttendances value, $Res Function(_DepartmentAttendances) _then) = __$DepartmentAttendancesCopyWithImpl;
@override @useResult
$Res call({
 UserDetails user, List<Attendance> clockins, Attendance? sod, Attendance? eod
});


@override $UserDetailsCopyWith<$Res> get user;@override $AttendanceCopyWith<$Res>? get sod;@override $AttendanceCopyWith<$Res>? get eod;

}
/// @nodoc
class __$DepartmentAttendancesCopyWithImpl<$Res>
    implements _$DepartmentAttendancesCopyWith<$Res> {
  __$DepartmentAttendancesCopyWithImpl(this._self, this._then);

  final _DepartmentAttendances _self;
  final $Res Function(_DepartmentAttendances) _then;

/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? clockins = null,Object? sod = freezed,Object? eod = freezed,}) {
  return _then(_DepartmentAttendances(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetails,clockins: null == clockins ? _self._clockins : clockins // ignore: cast_nullable_to_non_nullable
as List<Attendance>,sod: freezed == sod ? _self.sod : sod // ignore: cast_nullable_to_non_nullable
as Attendance?,eod: freezed == eod ? _self.eod : eod // ignore: cast_nullable_to_non_nullable
as Attendance?,
  ));
}

/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsCopyWith<$Res> get user {
  
  return $UserDetailsCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res>? get sod {
    if (_self.sod == null) {
    return null;
  }

  return $AttendanceCopyWith<$Res>(_self.sod!, (value) {
    return _then(_self.copyWith(sod: value));
  });
}/// Create a copy of DepartmentAttendances
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceCopyWith<$Res>? get eod {
    if (_self.eod == null) {
    return null;
  }

  return $AttendanceCopyWith<$Res>(_self.eod!, (value) {
    return _then(_self.copyWith(eod: value));
  });
}
}

// dart format on
