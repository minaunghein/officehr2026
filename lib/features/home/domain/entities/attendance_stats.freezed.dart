// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AttendanceStats {

 int get present; int get late; int get absent; int get halfDay; int get onLeave; int get holiday; int get restDay;
/// Create a copy of AttendanceStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStatsCopyWith<AttendanceStats> get copyWith => _$AttendanceStatsCopyWithImpl<AttendanceStats>(this as AttendanceStats, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceStats&&(identical(other.present, present) || other.present == present)&&(identical(other.late, late) || other.late == late)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.halfDay, halfDay) || other.halfDay == halfDay)&&(identical(other.onLeave, onLeave) || other.onLeave == onLeave)&&(identical(other.holiday, holiday) || other.holiday == holiday)&&(identical(other.restDay, restDay) || other.restDay == restDay));
}


@override
int get hashCode => Object.hash(runtimeType,present,late,absent,halfDay,onLeave,holiday,restDay);

@override
String toString() {
  return 'AttendanceStats(present: $present, late: $late, absent: $absent, halfDay: $halfDay, onLeave: $onLeave, holiday: $holiday, restDay: $restDay)';
}


}

/// @nodoc
abstract mixin class $AttendanceStatsCopyWith<$Res>  {
  factory $AttendanceStatsCopyWith(AttendanceStats value, $Res Function(AttendanceStats) _then) = _$AttendanceStatsCopyWithImpl;
@useResult
$Res call({
 int present, int late, int absent, int halfDay, int onLeave, int holiday, int restDay
});




}
/// @nodoc
class _$AttendanceStatsCopyWithImpl<$Res>
    implements $AttendanceStatsCopyWith<$Res> {
  _$AttendanceStatsCopyWithImpl(this._self, this._then);

  final AttendanceStats _self;
  final $Res Function(AttendanceStats) _then;

/// Create a copy of AttendanceStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? present = null,Object? late = null,Object? absent = null,Object? halfDay = null,Object? onLeave = null,Object? holiday = null,Object? restDay = null,}) {
  return _then(_self.copyWith(
present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as int,late: null == late ? _self.late : late // ignore: cast_nullable_to_non_nullable
as int,absent: null == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as int,halfDay: null == halfDay ? _self.halfDay : halfDay // ignore: cast_nullable_to_non_nullable
as int,onLeave: null == onLeave ? _self.onLeave : onLeave // ignore: cast_nullable_to_non_nullable
as int,holiday: null == holiday ? _self.holiday : holiday // ignore: cast_nullable_to_non_nullable
as int,restDay: null == restDay ? _self.restDay : restDay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AttendanceStats].
extension AttendanceStatsPatterns on AttendanceStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceStats value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceStats value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int present,  int late,  int absent,  int halfDay,  int onLeave,  int holiday,  int restDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceStats() when $default != null:
return $default(_that.present,_that.late,_that.absent,_that.halfDay,_that.onLeave,_that.holiday,_that.restDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int present,  int late,  int absent,  int halfDay,  int onLeave,  int holiday,  int restDay)  $default,) {final _that = this;
switch (_that) {
case _AttendanceStats():
return $default(_that.present,_that.late,_that.absent,_that.halfDay,_that.onLeave,_that.holiday,_that.restDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int present,  int late,  int absent,  int halfDay,  int onLeave,  int holiday,  int restDay)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceStats() when $default != null:
return $default(_that.present,_that.late,_that.absent,_that.halfDay,_that.onLeave,_that.holiday,_that.restDay);case _:
  return null;

}
}

}

/// @nodoc


class _AttendanceStats implements AttendanceStats {
  const _AttendanceStats({required this.present, required this.late, required this.absent, required this.halfDay, required this.onLeave, required this.holiday, required this.restDay});
  

@override final  int present;
@override final  int late;
@override final  int absent;
@override final  int halfDay;
@override final  int onLeave;
@override final  int holiday;
@override final  int restDay;

/// Create a copy of AttendanceStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStatsCopyWith<_AttendanceStats> get copyWith => __$AttendanceStatsCopyWithImpl<_AttendanceStats>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceStats&&(identical(other.present, present) || other.present == present)&&(identical(other.late, late) || other.late == late)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.halfDay, halfDay) || other.halfDay == halfDay)&&(identical(other.onLeave, onLeave) || other.onLeave == onLeave)&&(identical(other.holiday, holiday) || other.holiday == holiday)&&(identical(other.restDay, restDay) || other.restDay == restDay));
}


@override
int get hashCode => Object.hash(runtimeType,present,late,absent,halfDay,onLeave,holiday,restDay);

@override
String toString() {
  return 'AttendanceStats(present: $present, late: $late, absent: $absent, halfDay: $halfDay, onLeave: $onLeave, holiday: $holiday, restDay: $restDay)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStatsCopyWith<$Res> implements $AttendanceStatsCopyWith<$Res> {
  factory _$AttendanceStatsCopyWith(_AttendanceStats value, $Res Function(_AttendanceStats) _then) = __$AttendanceStatsCopyWithImpl;
@override @useResult
$Res call({
 int present, int late, int absent, int halfDay, int onLeave, int holiday, int restDay
});




}
/// @nodoc
class __$AttendanceStatsCopyWithImpl<$Res>
    implements _$AttendanceStatsCopyWith<$Res> {
  __$AttendanceStatsCopyWithImpl(this._self, this._then);

  final _AttendanceStats _self;
  final $Res Function(_AttendanceStats) _then;

/// Create a copy of AttendanceStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? present = null,Object? late = null,Object? absent = null,Object? halfDay = null,Object? onLeave = null,Object? holiday = null,Object? restDay = null,}) {
  return _then(_AttendanceStats(
present: null == present ? _self.present : present // ignore: cast_nullable_to_non_nullable
as int,late: null == late ? _self.late : late // ignore: cast_nullable_to_non_nullable
as int,absent: null == absent ? _self.absent : absent // ignore: cast_nullable_to_non_nullable
as int,halfDay: null == halfDay ? _self.halfDay : halfDay // ignore: cast_nullable_to_non_nullable
as int,onLeave: null == onLeave ? _self.onLeave : onLeave // ignore: cast_nullable_to_non_nullable
as int,holiday: null == holiday ? _self.holiday : holiday // ignore: cast_nullable_to_non_nullable
as int,restDay: null == restDay ? _self.restDay : restDay // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
