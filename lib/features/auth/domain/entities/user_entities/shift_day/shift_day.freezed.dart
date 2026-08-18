// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShiftDay {

 String get day; int get dayNo; bool get isWorkingDay; bool get isOffDay; bool get isHalfDay; String? get workStart; String? get workEnd; String? get restStart; String? get restEnd; String? get otStart; int get late1Minutes; int get late2Minutes; int get late3Minutes; int get absentMinutes; int get halfDayMinutes; bool get includeRestInHours; bool get overnight;
/// Create a copy of ShiftDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftDayCopyWith<ShiftDay> get copyWith => _$ShiftDayCopyWithImpl<ShiftDay>(this as ShiftDay, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftDay&&(identical(other.day, day) || other.day == day)&&(identical(other.dayNo, dayNo) || other.dayNo == dayNo)&&(identical(other.isWorkingDay, isWorkingDay) || other.isWorkingDay == isWorkingDay)&&(identical(other.isOffDay, isOffDay) || other.isOffDay == isOffDay)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.workStart, workStart) || other.workStart == workStart)&&(identical(other.workEnd, workEnd) || other.workEnd == workEnd)&&(identical(other.restStart, restStart) || other.restStart == restStart)&&(identical(other.restEnd, restEnd) || other.restEnd == restEnd)&&(identical(other.otStart, otStart) || other.otStart == otStart)&&(identical(other.late1Minutes, late1Minutes) || other.late1Minutes == late1Minutes)&&(identical(other.late2Minutes, late2Minutes) || other.late2Minutes == late2Minutes)&&(identical(other.late3Minutes, late3Minutes) || other.late3Minutes == late3Minutes)&&(identical(other.absentMinutes, absentMinutes) || other.absentMinutes == absentMinutes)&&(identical(other.halfDayMinutes, halfDayMinutes) || other.halfDayMinutes == halfDayMinutes)&&(identical(other.includeRestInHours, includeRestInHours) || other.includeRestInHours == includeRestInHours)&&(identical(other.overnight, overnight) || other.overnight == overnight));
}


@override
int get hashCode => Object.hash(runtimeType,day,dayNo,isWorkingDay,isOffDay,isHalfDay,workStart,workEnd,restStart,restEnd,otStart,late1Minutes,late2Minutes,late3Minutes,absentMinutes,halfDayMinutes,includeRestInHours,overnight);

@override
String toString() {
  return 'ShiftDay(day: $day, dayNo: $dayNo, isWorkingDay: $isWorkingDay, isOffDay: $isOffDay, isHalfDay: $isHalfDay, workStart: $workStart, workEnd: $workEnd, restStart: $restStart, restEnd: $restEnd, otStart: $otStart, late1Minutes: $late1Minutes, late2Minutes: $late2Minutes, late3Minutes: $late3Minutes, absentMinutes: $absentMinutes, halfDayMinutes: $halfDayMinutes, includeRestInHours: $includeRestInHours, overnight: $overnight)';
}


}

/// @nodoc
abstract mixin class $ShiftDayCopyWith<$Res>  {
  factory $ShiftDayCopyWith(ShiftDay value, $Res Function(ShiftDay) _then) = _$ShiftDayCopyWithImpl;
@useResult
$Res call({
 String day, int dayNo, bool isWorkingDay, bool isOffDay, bool isHalfDay, String? workStart, String? workEnd, String? restStart, String? restEnd, String? otStart, int late1Minutes, int late2Minutes, int late3Minutes, int absentMinutes, int halfDayMinutes, bool includeRestInHours, bool overnight
});




}
/// @nodoc
class _$ShiftDayCopyWithImpl<$Res>
    implements $ShiftDayCopyWith<$Res> {
  _$ShiftDayCopyWithImpl(this._self, this._then);

  final ShiftDay _self;
  final $Res Function(ShiftDay) _then;

/// Create a copy of ShiftDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? dayNo = null,Object? isWorkingDay = null,Object? isOffDay = null,Object? isHalfDay = null,Object? workStart = freezed,Object? workEnd = freezed,Object? restStart = freezed,Object? restEnd = freezed,Object? otStart = freezed,Object? late1Minutes = null,Object? late2Minutes = null,Object? late3Minutes = null,Object? absentMinutes = null,Object? halfDayMinutes = null,Object? includeRestInHours = null,Object? overnight = null,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,dayNo: null == dayNo ? _self.dayNo : dayNo // ignore: cast_nullable_to_non_nullable
as int,isWorkingDay: null == isWorkingDay ? _self.isWorkingDay : isWorkingDay // ignore: cast_nullable_to_non_nullable
as bool,isOffDay: null == isOffDay ? _self.isOffDay : isOffDay // ignore: cast_nullable_to_non_nullable
as bool,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,workStart: freezed == workStart ? _self.workStart : workStart // ignore: cast_nullable_to_non_nullable
as String?,workEnd: freezed == workEnd ? _self.workEnd : workEnd // ignore: cast_nullable_to_non_nullable
as String?,restStart: freezed == restStart ? _self.restStart : restStart // ignore: cast_nullable_to_non_nullable
as String?,restEnd: freezed == restEnd ? _self.restEnd : restEnd // ignore: cast_nullable_to_non_nullable
as String?,otStart: freezed == otStart ? _self.otStart : otStart // ignore: cast_nullable_to_non_nullable
as String?,late1Minutes: null == late1Minutes ? _self.late1Minutes : late1Minutes // ignore: cast_nullable_to_non_nullable
as int,late2Minutes: null == late2Minutes ? _self.late2Minutes : late2Minutes // ignore: cast_nullable_to_non_nullable
as int,late3Minutes: null == late3Minutes ? _self.late3Minutes : late3Minutes // ignore: cast_nullable_to_non_nullable
as int,absentMinutes: null == absentMinutes ? _self.absentMinutes : absentMinutes // ignore: cast_nullable_to_non_nullable
as int,halfDayMinutes: null == halfDayMinutes ? _self.halfDayMinutes : halfDayMinutes // ignore: cast_nullable_to_non_nullable
as int,includeRestInHours: null == includeRestInHours ? _self.includeRestInHours : includeRestInHours // ignore: cast_nullable_to_non_nullable
as bool,overnight: null == overnight ? _self.overnight : overnight // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ShiftDay].
extension ShiftDayPatterns on ShiftDay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftDay() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftDay value)  $default,){
final _that = this;
switch (_that) {
case _ShiftDay():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftDay value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftDay() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String day,  int dayNo,  bool isWorkingDay,  bool isOffDay,  bool isHalfDay,  String? workStart,  String? workEnd,  String? restStart,  String? restEnd,  String? otStart,  int late1Minutes,  int late2Minutes,  int late3Minutes,  int absentMinutes,  int halfDayMinutes,  bool includeRestInHours,  bool overnight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftDay() when $default != null:
return $default(_that.day,_that.dayNo,_that.isWorkingDay,_that.isOffDay,_that.isHalfDay,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Minutes,_that.late2Minutes,_that.late3Minutes,_that.absentMinutes,_that.halfDayMinutes,_that.includeRestInHours,_that.overnight);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String day,  int dayNo,  bool isWorkingDay,  bool isOffDay,  bool isHalfDay,  String? workStart,  String? workEnd,  String? restStart,  String? restEnd,  String? otStart,  int late1Minutes,  int late2Minutes,  int late3Minutes,  int absentMinutes,  int halfDayMinutes,  bool includeRestInHours,  bool overnight)  $default,) {final _that = this;
switch (_that) {
case _ShiftDay():
return $default(_that.day,_that.dayNo,_that.isWorkingDay,_that.isOffDay,_that.isHalfDay,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Minutes,_that.late2Minutes,_that.late3Minutes,_that.absentMinutes,_that.halfDayMinutes,_that.includeRestInHours,_that.overnight);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String day,  int dayNo,  bool isWorkingDay,  bool isOffDay,  bool isHalfDay,  String? workStart,  String? workEnd,  String? restStart,  String? restEnd,  String? otStart,  int late1Minutes,  int late2Minutes,  int late3Minutes,  int absentMinutes,  int halfDayMinutes,  bool includeRestInHours,  bool overnight)?  $default,) {final _that = this;
switch (_that) {
case _ShiftDay() when $default != null:
return $default(_that.day,_that.dayNo,_that.isWorkingDay,_that.isOffDay,_that.isHalfDay,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Minutes,_that.late2Minutes,_that.late3Minutes,_that.absentMinutes,_that.halfDayMinutes,_that.includeRestInHours,_that.overnight);case _:
  return null;

}
}

}

/// @nodoc


class _ShiftDay implements ShiftDay {
  const _ShiftDay({required this.day, required this.dayNo, required this.isWorkingDay, required this.isOffDay, required this.isHalfDay, this.workStart, this.workEnd, this.restStart, this.restEnd, this.otStart, required this.late1Minutes, required this.late2Minutes, required this.late3Minutes, required this.absentMinutes, required this.halfDayMinutes, required this.includeRestInHours, required this.overnight});
  

@override final  String day;
@override final  int dayNo;
@override final  bool isWorkingDay;
@override final  bool isOffDay;
@override final  bool isHalfDay;
@override final  String? workStart;
@override final  String? workEnd;
@override final  String? restStart;
@override final  String? restEnd;
@override final  String? otStart;
@override final  int late1Minutes;
@override final  int late2Minutes;
@override final  int late3Minutes;
@override final  int absentMinutes;
@override final  int halfDayMinutes;
@override final  bool includeRestInHours;
@override final  bool overnight;

/// Create a copy of ShiftDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftDayCopyWith<_ShiftDay> get copyWith => __$ShiftDayCopyWithImpl<_ShiftDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftDay&&(identical(other.day, day) || other.day == day)&&(identical(other.dayNo, dayNo) || other.dayNo == dayNo)&&(identical(other.isWorkingDay, isWorkingDay) || other.isWorkingDay == isWorkingDay)&&(identical(other.isOffDay, isOffDay) || other.isOffDay == isOffDay)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.workStart, workStart) || other.workStart == workStart)&&(identical(other.workEnd, workEnd) || other.workEnd == workEnd)&&(identical(other.restStart, restStart) || other.restStart == restStart)&&(identical(other.restEnd, restEnd) || other.restEnd == restEnd)&&(identical(other.otStart, otStart) || other.otStart == otStart)&&(identical(other.late1Minutes, late1Minutes) || other.late1Minutes == late1Minutes)&&(identical(other.late2Minutes, late2Minutes) || other.late2Minutes == late2Minutes)&&(identical(other.late3Minutes, late3Minutes) || other.late3Minutes == late3Minutes)&&(identical(other.absentMinutes, absentMinutes) || other.absentMinutes == absentMinutes)&&(identical(other.halfDayMinutes, halfDayMinutes) || other.halfDayMinutes == halfDayMinutes)&&(identical(other.includeRestInHours, includeRestInHours) || other.includeRestInHours == includeRestInHours)&&(identical(other.overnight, overnight) || other.overnight == overnight));
}


@override
int get hashCode => Object.hash(runtimeType,day,dayNo,isWorkingDay,isOffDay,isHalfDay,workStart,workEnd,restStart,restEnd,otStart,late1Minutes,late2Minutes,late3Minutes,absentMinutes,halfDayMinutes,includeRestInHours,overnight);

@override
String toString() {
  return 'ShiftDay(day: $day, dayNo: $dayNo, isWorkingDay: $isWorkingDay, isOffDay: $isOffDay, isHalfDay: $isHalfDay, workStart: $workStart, workEnd: $workEnd, restStart: $restStart, restEnd: $restEnd, otStart: $otStart, late1Minutes: $late1Minutes, late2Minutes: $late2Minutes, late3Minutes: $late3Minutes, absentMinutes: $absentMinutes, halfDayMinutes: $halfDayMinutes, includeRestInHours: $includeRestInHours, overnight: $overnight)';
}


}

/// @nodoc
abstract mixin class _$ShiftDayCopyWith<$Res> implements $ShiftDayCopyWith<$Res> {
  factory _$ShiftDayCopyWith(_ShiftDay value, $Res Function(_ShiftDay) _then) = __$ShiftDayCopyWithImpl;
@override @useResult
$Res call({
 String day, int dayNo, bool isWorkingDay, bool isOffDay, bool isHalfDay, String? workStart, String? workEnd, String? restStart, String? restEnd, String? otStart, int late1Minutes, int late2Minutes, int late3Minutes, int absentMinutes, int halfDayMinutes, bool includeRestInHours, bool overnight
});




}
/// @nodoc
class __$ShiftDayCopyWithImpl<$Res>
    implements _$ShiftDayCopyWith<$Res> {
  __$ShiftDayCopyWithImpl(this._self, this._then);

  final _ShiftDay _self;
  final $Res Function(_ShiftDay) _then;

/// Create a copy of ShiftDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? dayNo = null,Object? isWorkingDay = null,Object? isOffDay = null,Object? isHalfDay = null,Object? workStart = freezed,Object? workEnd = freezed,Object? restStart = freezed,Object? restEnd = freezed,Object? otStart = freezed,Object? late1Minutes = null,Object? late2Minutes = null,Object? late3Minutes = null,Object? absentMinutes = null,Object? halfDayMinutes = null,Object? includeRestInHours = null,Object? overnight = null,}) {
  return _then(_ShiftDay(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,dayNo: null == dayNo ? _self.dayNo : dayNo // ignore: cast_nullable_to_non_nullable
as int,isWorkingDay: null == isWorkingDay ? _self.isWorkingDay : isWorkingDay // ignore: cast_nullable_to_non_nullable
as bool,isOffDay: null == isOffDay ? _self.isOffDay : isOffDay // ignore: cast_nullable_to_non_nullable
as bool,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,workStart: freezed == workStart ? _self.workStart : workStart // ignore: cast_nullable_to_non_nullable
as String?,workEnd: freezed == workEnd ? _self.workEnd : workEnd // ignore: cast_nullable_to_non_nullable
as String?,restStart: freezed == restStart ? _self.restStart : restStart // ignore: cast_nullable_to_non_nullable
as String?,restEnd: freezed == restEnd ? _self.restEnd : restEnd // ignore: cast_nullable_to_non_nullable
as String?,otStart: freezed == otStart ? _self.otStart : otStart // ignore: cast_nullable_to_non_nullable
as String?,late1Minutes: null == late1Minutes ? _self.late1Minutes : late1Minutes // ignore: cast_nullable_to_non_nullable
as int,late2Minutes: null == late2Minutes ? _self.late2Minutes : late2Minutes // ignore: cast_nullable_to_non_nullable
as int,late3Minutes: null == late3Minutes ? _self.late3Minutes : late3Minutes // ignore: cast_nullable_to_non_nullable
as int,absentMinutes: null == absentMinutes ? _self.absentMinutes : absentMinutes // ignore: cast_nullable_to_non_nullable
as int,halfDayMinutes: null == halfDayMinutes ? _self.halfDayMinutes : halfDayMinutes // ignore: cast_nullable_to_non_nullable
as int,includeRestInHours: null == includeRestInHours ? _self.includeRestInHours : includeRestInHours // ignore: cast_nullable_to_non_nullable
as bool,overnight: null == overnight ? _self.overnight : overnight // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
