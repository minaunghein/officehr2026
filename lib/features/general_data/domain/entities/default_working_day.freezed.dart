// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_working_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DefaultWorkingDay {

 int get dayId; String get day; int get workStart; int get workEnd; int get restStart; int get restEnd; int get otStart; int get late1Start; int get late2Start; int get late3Start; int get halfDayStart; int get absStart; bool get isOffDay; bool get isWorkingDay;
/// Create a copy of DefaultWorkingDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultWorkingDayCopyWith<DefaultWorkingDay> get copyWith => _$DefaultWorkingDayCopyWithImpl<DefaultWorkingDay>(this as DefaultWorkingDay, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultWorkingDay&&(identical(other.dayId, dayId) || other.dayId == dayId)&&(identical(other.day, day) || other.day == day)&&(identical(other.workStart, workStart) || other.workStart == workStart)&&(identical(other.workEnd, workEnd) || other.workEnd == workEnd)&&(identical(other.restStart, restStart) || other.restStart == restStart)&&(identical(other.restEnd, restEnd) || other.restEnd == restEnd)&&(identical(other.otStart, otStart) || other.otStart == otStart)&&(identical(other.late1Start, late1Start) || other.late1Start == late1Start)&&(identical(other.late2Start, late2Start) || other.late2Start == late2Start)&&(identical(other.late3Start, late3Start) || other.late3Start == late3Start)&&(identical(other.halfDayStart, halfDayStart) || other.halfDayStart == halfDayStart)&&(identical(other.absStart, absStart) || other.absStart == absStart)&&(identical(other.isOffDay, isOffDay) || other.isOffDay == isOffDay)&&(identical(other.isWorkingDay, isWorkingDay) || other.isWorkingDay == isWorkingDay));
}


@override
int get hashCode => Object.hash(runtimeType,dayId,day,workStart,workEnd,restStart,restEnd,otStart,late1Start,late2Start,late3Start,halfDayStart,absStart,isOffDay,isWorkingDay);

@override
String toString() {
  return 'DefaultWorkingDay(dayId: $dayId, day: $day, workStart: $workStart, workEnd: $workEnd, restStart: $restStart, restEnd: $restEnd, otStart: $otStart, late1Start: $late1Start, late2Start: $late2Start, late3Start: $late3Start, halfDayStart: $halfDayStart, absStart: $absStart, isOffDay: $isOffDay, isWorkingDay: $isWorkingDay)';
}


}

/// @nodoc
abstract mixin class $DefaultWorkingDayCopyWith<$Res>  {
  factory $DefaultWorkingDayCopyWith(DefaultWorkingDay value, $Res Function(DefaultWorkingDay) _then) = _$DefaultWorkingDayCopyWithImpl;
@useResult
$Res call({
 int dayId, String day, int workStart, int workEnd, int restStart, int restEnd, int otStart, int late1Start, int late2Start, int late3Start, int halfDayStart, int absStart, bool isOffDay, bool isWorkingDay
});




}
/// @nodoc
class _$DefaultWorkingDayCopyWithImpl<$Res>
    implements $DefaultWorkingDayCopyWith<$Res> {
  _$DefaultWorkingDayCopyWithImpl(this._self, this._then);

  final DefaultWorkingDay _self;
  final $Res Function(DefaultWorkingDay) _then;

/// Create a copy of DefaultWorkingDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dayId = null,Object? day = null,Object? workStart = null,Object? workEnd = null,Object? restStart = null,Object? restEnd = null,Object? otStart = null,Object? late1Start = null,Object? late2Start = null,Object? late3Start = null,Object? halfDayStart = null,Object? absStart = null,Object? isOffDay = null,Object? isWorkingDay = null,}) {
  return _then(_self.copyWith(
dayId: null == dayId ? _self.dayId : dayId // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,workStart: null == workStart ? _self.workStart : workStart // ignore: cast_nullable_to_non_nullable
as int,workEnd: null == workEnd ? _self.workEnd : workEnd // ignore: cast_nullable_to_non_nullable
as int,restStart: null == restStart ? _self.restStart : restStart // ignore: cast_nullable_to_non_nullable
as int,restEnd: null == restEnd ? _self.restEnd : restEnd // ignore: cast_nullable_to_non_nullable
as int,otStart: null == otStart ? _self.otStart : otStart // ignore: cast_nullable_to_non_nullable
as int,late1Start: null == late1Start ? _self.late1Start : late1Start // ignore: cast_nullable_to_non_nullable
as int,late2Start: null == late2Start ? _self.late2Start : late2Start // ignore: cast_nullable_to_non_nullable
as int,late3Start: null == late3Start ? _self.late3Start : late3Start // ignore: cast_nullable_to_non_nullable
as int,halfDayStart: null == halfDayStart ? _self.halfDayStart : halfDayStart // ignore: cast_nullable_to_non_nullable
as int,absStart: null == absStart ? _self.absStart : absStart // ignore: cast_nullable_to_non_nullable
as int,isOffDay: null == isOffDay ? _self.isOffDay : isOffDay // ignore: cast_nullable_to_non_nullable
as bool,isWorkingDay: null == isWorkingDay ? _self.isWorkingDay : isWorkingDay // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DefaultWorkingDay].
extension DefaultWorkingDayPatterns on DefaultWorkingDay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DefaultWorkingDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DefaultWorkingDay() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DefaultWorkingDay value)  $default,){
final _that = this;
switch (_that) {
case _DefaultWorkingDay():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DefaultWorkingDay value)?  $default,){
final _that = this;
switch (_that) {
case _DefaultWorkingDay() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dayId,  String day,  int workStart,  int workEnd,  int restStart,  int restEnd,  int otStart,  int late1Start,  int late2Start,  int late3Start,  int halfDayStart,  int absStart,  bool isOffDay,  bool isWorkingDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DefaultWorkingDay() when $default != null:
return $default(_that.dayId,_that.day,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Start,_that.late2Start,_that.late3Start,_that.halfDayStart,_that.absStart,_that.isOffDay,_that.isWorkingDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dayId,  String day,  int workStart,  int workEnd,  int restStart,  int restEnd,  int otStart,  int late1Start,  int late2Start,  int late3Start,  int halfDayStart,  int absStart,  bool isOffDay,  bool isWorkingDay)  $default,) {final _that = this;
switch (_that) {
case _DefaultWorkingDay():
return $default(_that.dayId,_that.day,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Start,_that.late2Start,_that.late3Start,_that.halfDayStart,_that.absStart,_that.isOffDay,_that.isWorkingDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dayId,  String day,  int workStart,  int workEnd,  int restStart,  int restEnd,  int otStart,  int late1Start,  int late2Start,  int late3Start,  int halfDayStart,  int absStart,  bool isOffDay,  bool isWorkingDay)?  $default,) {final _that = this;
switch (_that) {
case _DefaultWorkingDay() when $default != null:
return $default(_that.dayId,_that.day,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Start,_that.late2Start,_that.late3Start,_that.halfDayStart,_that.absStart,_that.isOffDay,_that.isWorkingDay);case _:
  return null;

}
}

}

/// @nodoc


class _DefaultWorkingDay implements DefaultWorkingDay {
  const _DefaultWorkingDay({required this.dayId, required this.day, required this.workStart, required this.workEnd, required this.restStart, required this.restEnd, required this.otStart, required this.late1Start, required this.late2Start, required this.late3Start, required this.halfDayStart, required this.absStart, required this.isOffDay, required this.isWorkingDay});
  

@override final  int dayId;
@override final  String day;
@override final  int workStart;
@override final  int workEnd;
@override final  int restStart;
@override final  int restEnd;
@override final  int otStart;
@override final  int late1Start;
@override final  int late2Start;
@override final  int late3Start;
@override final  int halfDayStart;
@override final  int absStart;
@override final  bool isOffDay;
@override final  bool isWorkingDay;

/// Create a copy of DefaultWorkingDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DefaultWorkingDayCopyWith<_DefaultWorkingDay> get copyWith => __$DefaultWorkingDayCopyWithImpl<_DefaultWorkingDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefaultWorkingDay&&(identical(other.dayId, dayId) || other.dayId == dayId)&&(identical(other.day, day) || other.day == day)&&(identical(other.workStart, workStart) || other.workStart == workStart)&&(identical(other.workEnd, workEnd) || other.workEnd == workEnd)&&(identical(other.restStart, restStart) || other.restStart == restStart)&&(identical(other.restEnd, restEnd) || other.restEnd == restEnd)&&(identical(other.otStart, otStart) || other.otStart == otStart)&&(identical(other.late1Start, late1Start) || other.late1Start == late1Start)&&(identical(other.late2Start, late2Start) || other.late2Start == late2Start)&&(identical(other.late3Start, late3Start) || other.late3Start == late3Start)&&(identical(other.halfDayStart, halfDayStart) || other.halfDayStart == halfDayStart)&&(identical(other.absStart, absStart) || other.absStart == absStart)&&(identical(other.isOffDay, isOffDay) || other.isOffDay == isOffDay)&&(identical(other.isWorkingDay, isWorkingDay) || other.isWorkingDay == isWorkingDay));
}


@override
int get hashCode => Object.hash(runtimeType,dayId,day,workStart,workEnd,restStart,restEnd,otStart,late1Start,late2Start,late3Start,halfDayStart,absStart,isOffDay,isWorkingDay);

@override
String toString() {
  return 'DefaultWorkingDay(dayId: $dayId, day: $day, workStart: $workStart, workEnd: $workEnd, restStart: $restStart, restEnd: $restEnd, otStart: $otStart, late1Start: $late1Start, late2Start: $late2Start, late3Start: $late3Start, halfDayStart: $halfDayStart, absStart: $absStart, isOffDay: $isOffDay, isWorkingDay: $isWorkingDay)';
}


}

/// @nodoc
abstract mixin class _$DefaultWorkingDayCopyWith<$Res> implements $DefaultWorkingDayCopyWith<$Res> {
  factory _$DefaultWorkingDayCopyWith(_DefaultWorkingDay value, $Res Function(_DefaultWorkingDay) _then) = __$DefaultWorkingDayCopyWithImpl;
@override @useResult
$Res call({
 int dayId, String day, int workStart, int workEnd, int restStart, int restEnd, int otStart, int late1Start, int late2Start, int late3Start, int halfDayStart, int absStart, bool isOffDay, bool isWorkingDay
});




}
/// @nodoc
class __$DefaultWorkingDayCopyWithImpl<$Res>
    implements _$DefaultWorkingDayCopyWith<$Res> {
  __$DefaultWorkingDayCopyWithImpl(this._self, this._then);

  final _DefaultWorkingDay _self;
  final $Res Function(_DefaultWorkingDay) _then;

/// Create a copy of DefaultWorkingDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dayId = null,Object? day = null,Object? workStart = null,Object? workEnd = null,Object? restStart = null,Object? restEnd = null,Object? otStart = null,Object? late1Start = null,Object? late2Start = null,Object? late3Start = null,Object? halfDayStart = null,Object? absStart = null,Object? isOffDay = null,Object? isWorkingDay = null,}) {
  return _then(_DefaultWorkingDay(
dayId: null == dayId ? _self.dayId : dayId // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,workStart: null == workStart ? _self.workStart : workStart // ignore: cast_nullable_to_non_nullable
as int,workEnd: null == workEnd ? _self.workEnd : workEnd // ignore: cast_nullable_to_non_nullable
as int,restStart: null == restStart ? _self.restStart : restStart // ignore: cast_nullable_to_non_nullable
as int,restEnd: null == restEnd ? _self.restEnd : restEnd // ignore: cast_nullable_to_non_nullable
as int,otStart: null == otStart ? _self.otStart : otStart // ignore: cast_nullable_to_non_nullable
as int,late1Start: null == late1Start ? _self.late1Start : late1Start // ignore: cast_nullable_to_non_nullable
as int,late2Start: null == late2Start ? _self.late2Start : late2Start // ignore: cast_nullable_to_non_nullable
as int,late3Start: null == late3Start ? _self.late3Start : late3Start // ignore: cast_nullable_to_non_nullable
as int,halfDayStart: null == halfDayStart ? _self.halfDayStart : halfDayStart // ignore: cast_nullable_to_non_nullable
as int,absStart: null == absStart ? _self.absStart : absStart // ignore: cast_nullable_to_non_nullable
as int,isOffDay: null == isOffDay ? _self.isOffDay : isOffDay // ignore: cast_nullable_to_non_nullable
as bool,isWorkingDay: null == isWorkingDay ? _self.isWorkingDay : isWorkingDay // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
