// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance_stats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AttendanceStatsModel {

@JsonKey(name: 'PRESENT') int get present;@JsonKey(name: 'LATE') int get late;@JsonKey(name: 'ABSENT') int get absent;@JsonKey(name: 'HALF_DAY') int get halfDay;@JsonKey(name: 'ON_LEAVE') int get onLeave;@JsonKey(name: 'HOLIDAY') int get holiday;@JsonKey(name: 'REST_DAY') int get restDay;
/// Create a copy of AttendanceStatsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttendanceStatsModelCopyWith<AttendanceStatsModel> get copyWith => _$AttendanceStatsModelCopyWithImpl<AttendanceStatsModel>(this as AttendanceStatsModel, _$identity);

  /// Serializes this AttendanceStatsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttendanceStatsModel&&(identical(other.present, present) || other.present == present)&&(identical(other.late, late) || other.late == late)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.halfDay, halfDay) || other.halfDay == halfDay)&&(identical(other.onLeave, onLeave) || other.onLeave == onLeave)&&(identical(other.holiday, holiday) || other.holiday == holiday)&&(identical(other.restDay, restDay) || other.restDay == restDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,present,late,absent,halfDay,onLeave,holiday,restDay);

@override
String toString() {
  return 'AttendanceStatsModel(present: $present, late: $late, absent: $absent, halfDay: $halfDay, onLeave: $onLeave, holiday: $holiday, restDay: $restDay)';
}


}

/// @nodoc
abstract mixin class $AttendanceStatsModelCopyWith<$Res>  {
  factory $AttendanceStatsModelCopyWith(AttendanceStatsModel value, $Res Function(AttendanceStatsModel) _then) = _$AttendanceStatsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'PRESENT') int present,@JsonKey(name: 'LATE') int late,@JsonKey(name: 'ABSENT') int absent,@JsonKey(name: 'HALF_DAY') int halfDay,@JsonKey(name: 'ON_LEAVE') int onLeave,@JsonKey(name: 'HOLIDAY') int holiday,@JsonKey(name: 'REST_DAY') int restDay
});




}
/// @nodoc
class _$AttendanceStatsModelCopyWithImpl<$Res>
    implements $AttendanceStatsModelCopyWith<$Res> {
  _$AttendanceStatsModelCopyWithImpl(this._self, this._then);

  final AttendanceStatsModel _self;
  final $Res Function(AttendanceStatsModel) _then;

/// Create a copy of AttendanceStatsModel
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


/// Adds pattern-matching-related methods to [AttendanceStatsModel].
extension AttendanceStatsModelPatterns on AttendanceStatsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttendanceStatsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttendanceStatsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttendanceStatsModel value)  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttendanceStatsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AttendanceStatsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'PRESENT')  int present, @JsonKey(name: 'LATE')  int late, @JsonKey(name: 'ABSENT')  int absent, @JsonKey(name: 'HALF_DAY')  int halfDay, @JsonKey(name: 'ON_LEAVE')  int onLeave, @JsonKey(name: 'HOLIDAY')  int holiday, @JsonKey(name: 'REST_DAY')  int restDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttendanceStatsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'PRESENT')  int present, @JsonKey(name: 'LATE')  int late, @JsonKey(name: 'ABSENT')  int absent, @JsonKey(name: 'HALF_DAY')  int halfDay, @JsonKey(name: 'ON_LEAVE')  int onLeave, @JsonKey(name: 'HOLIDAY')  int holiday, @JsonKey(name: 'REST_DAY')  int restDay)  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'PRESENT')  int present, @JsonKey(name: 'LATE')  int late, @JsonKey(name: 'ABSENT')  int absent, @JsonKey(name: 'HALF_DAY')  int halfDay, @JsonKey(name: 'ON_LEAVE')  int onLeave, @JsonKey(name: 'HOLIDAY')  int holiday, @JsonKey(name: 'REST_DAY')  int restDay)?  $default,) {final _that = this;
switch (_that) {
case _AttendanceStatsModel() when $default != null:
return $default(_that.present,_that.late,_that.absent,_that.halfDay,_that.onLeave,_that.holiday,_that.restDay);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttendanceStatsModel extends AttendanceStatsModel {
  const _AttendanceStatsModel({@JsonKey(name: 'PRESENT') this.present = 0, @JsonKey(name: 'LATE') this.late = 0, @JsonKey(name: 'ABSENT') this.absent = 0, @JsonKey(name: 'HALF_DAY') this.halfDay = 0, @JsonKey(name: 'ON_LEAVE') this.onLeave = 0, @JsonKey(name: 'HOLIDAY') this.holiday = 0, @JsonKey(name: 'REST_DAY') this.restDay = 0}): super._();
  factory _AttendanceStatsModel.fromJson(Map<String, dynamic> json) => _$AttendanceStatsModelFromJson(json);

@override@JsonKey(name: 'PRESENT') final  int present;
@override@JsonKey(name: 'LATE') final  int late;
@override@JsonKey(name: 'ABSENT') final  int absent;
@override@JsonKey(name: 'HALF_DAY') final  int halfDay;
@override@JsonKey(name: 'ON_LEAVE') final  int onLeave;
@override@JsonKey(name: 'HOLIDAY') final  int holiday;
@override@JsonKey(name: 'REST_DAY') final  int restDay;

/// Create a copy of AttendanceStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttendanceStatsModelCopyWith<_AttendanceStatsModel> get copyWith => __$AttendanceStatsModelCopyWithImpl<_AttendanceStatsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttendanceStatsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttendanceStatsModel&&(identical(other.present, present) || other.present == present)&&(identical(other.late, late) || other.late == late)&&(identical(other.absent, absent) || other.absent == absent)&&(identical(other.halfDay, halfDay) || other.halfDay == halfDay)&&(identical(other.onLeave, onLeave) || other.onLeave == onLeave)&&(identical(other.holiday, holiday) || other.holiday == holiday)&&(identical(other.restDay, restDay) || other.restDay == restDay));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,present,late,absent,halfDay,onLeave,holiday,restDay);

@override
String toString() {
  return 'AttendanceStatsModel(present: $present, late: $late, absent: $absent, halfDay: $halfDay, onLeave: $onLeave, holiday: $holiday, restDay: $restDay)';
}


}

/// @nodoc
abstract mixin class _$AttendanceStatsModelCopyWith<$Res> implements $AttendanceStatsModelCopyWith<$Res> {
  factory _$AttendanceStatsModelCopyWith(_AttendanceStatsModel value, $Res Function(_AttendanceStatsModel) _then) = __$AttendanceStatsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'PRESENT') int present,@JsonKey(name: 'LATE') int late,@JsonKey(name: 'ABSENT') int absent,@JsonKey(name: 'HALF_DAY') int halfDay,@JsonKey(name: 'ON_LEAVE') int onLeave,@JsonKey(name: 'HOLIDAY') int holiday,@JsonKey(name: 'REST_DAY') int restDay
});




}
/// @nodoc
class __$AttendanceStatsModelCopyWithImpl<$Res>
    implements _$AttendanceStatsModelCopyWith<$Res> {
  __$AttendanceStatsModelCopyWithImpl(this._self, this._then);

  final _AttendanceStatsModel _self;
  final $Res Function(_AttendanceStatsModel) _then;

/// Create a copy of AttendanceStatsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? present = null,Object? late = null,Object? absent = null,Object? halfDay = null,Object? onLeave = null,Object? holiday = null,Object? restDay = null,}) {
  return _then(_AttendanceStatsModel(
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
