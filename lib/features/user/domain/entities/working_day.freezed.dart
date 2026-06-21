// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WorkingDay {

 int get dayId; String get day; int get workStart; int get workEnd; int get restStart; int get restEnd; int get otStart; int get late1Start; int get late2Start; int get late3Start; int get absStart; int get halfDayStart; bool get isWorkingDay; bool get isOffDay; bool get includeRestHours; bool get isHalfDay; String? get id;
/// Create a copy of WorkingDay
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingDayCopyWith<WorkingDay> get copyWith => _$WorkingDayCopyWithImpl<WorkingDay>(this as WorkingDay, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingDay&&(identical(other.dayId, dayId) || other.dayId == dayId)&&(identical(other.day, day) || other.day == day)&&(identical(other.workStart, workStart) || other.workStart == workStart)&&(identical(other.workEnd, workEnd) || other.workEnd == workEnd)&&(identical(other.restStart, restStart) || other.restStart == restStart)&&(identical(other.restEnd, restEnd) || other.restEnd == restEnd)&&(identical(other.otStart, otStart) || other.otStart == otStart)&&(identical(other.late1Start, late1Start) || other.late1Start == late1Start)&&(identical(other.late2Start, late2Start) || other.late2Start == late2Start)&&(identical(other.late3Start, late3Start) || other.late3Start == late3Start)&&(identical(other.absStart, absStart) || other.absStart == absStart)&&(identical(other.halfDayStart, halfDayStart) || other.halfDayStart == halfDayStart)&&(identical(other.isWorkingDay, isWorkingDay) || other.isWorkingDay == isWorkingDay)&&(identical(other.isOffDay, isOffDay) || other.isOffDay == isOffDay)&&(identical(other.includeRestHours, includeRestHours) || other.includeRestHours == includeRestHours)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,dayId,day,workStart,workEnd,restStart,restEnd,otStart,late1Start,late2Start,late3Start,absStart,halfDayStart,isWorkingDay,isOffDay,includeRestHours,isHalfDay,id);

@override
String toString() {
  return 'WorkingDay(dayId: $dayId, day: $day, workStart: $workStart, workEnd: $workEnd, restStart: $restStart, restEnd: $restEnd, otStart: $otStart, late1Start: $late1Start, late2Start: $late2Start, late3Start: $late3Start, absStart: $absStart, halfDayStart: $halfDayStart, isWorkingDay: $isWorkingDay, isOffDay: $isOffDay, includeRestHours: $includeRestHours, isHalfDay: $isHalfDay, id: $id)';
}


}

/// @nodoc
abstract mixin class $WorkingDayCopyWith<$Res>  {
  factory $WorkingDayCopyWith(WorkingDay value, $Res Function(WorkingDay) _then) = _$WorkingDayCopyWithImpl;
@useResult
$Res call({
 int dayId, String day, int workStart, int workEnd, int restStart, int restEnd, int otStart, int late1Start, int late2Start, int late3Start, int absStart, int halfDayStart, bool isWorkingDay, bool isOffDay, bool includeRestHours, bool isHalfDay, String? id
});




}
/// @nodoc
class _$WorkingDayCopyWithImpl<$Res>
    implements $WorkingDayCopyWith<$Res> {
  _$WorkingDayCopyWithImpl(this._self, this._then);

  final WorkingDay _self;
  final $Res Function(WorkingDay) _then;

/// Create a copy of WorkingDay
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dayId = null,Object? day = null,Object? workStart = null,Object? workEnd = null,Object? restStart = null,Object? restEnd = null,Object? otStart = null,Object? late1Start = null,Object? late2Start = null,Object? late3Start = null,Object? absStart = null,Object? halfDayStart = null,Object? isWorkingDay = null,Object? isOffDay = null,Object? includeRestHours = null,Object? isHalfDay = null,Object? id = freezed,}) {
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
as int,absStart: null == absStart ? _self.absStart : absStart // ignore: cast_nullable_to_non_nullable
as int,halfDayStart: null == halfDayStart ? _self.halfDayStart : halfDayStart // ignore: cast_nullable_to_non_nullable
as int,isWorkingDay: null == isWorkingDay ? _self.isWorkingDay : isWorkingDay // ignore: cast_nullable_to_non_nullable
as bool,isOffDay: null == isOffDay ? _self.isOffDay : isOffDay // ignore: cast_nullable_to_non_nullable
as bool,includeRestHours: null == includeRestHours ? _self.includeRestHours : includeRestHours // ignore: cast_nullable_to_non_nullable
as bool,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingDay].
extension WorkingDayPatterns on WorkingDay {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingDay value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingDay() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingDay value)  $default,){
final _that = this;
switch (_that) {
case _WorkingDay():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingDay value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingDay() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dayId,  String day,  int workStart,  int workEnd,  int restStart,  int restEnd,  int otStart,  int late1Start,  int late2Start,  int late3Start,  int absStart,  int halfDayStart,  bool isWorkingDay,  bool isOffDay,  bool includeRestHours,  bool isHalfDay,  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingDay() when $default != null:
return $default(_that.dayId,_that.day,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Start,_that.late2Start,_that.late3Start,_that.absStart,_that.halfDayStart,_that.isWorkingDay,_that.isOffDay,_that.includeRestHours,_that.isHalfDay,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dayId,  String day,  int workStart,  int workEnd,  int restStart,  int restEnd,  int otStart,  int late1Start,  int late2Start,  int late3Start,  int absStart,  int halfDayStart,  bool isWorkingDay,  bool isOffDay,  bool includeRestHours,  bool isHalfDay,  String? id)  $default,) {final _that = this;
switch (_that) {
case _WorkingDay():
return $default(_that.dayId,_that.day,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Start,_that.late2Start,_that.late3Start,_that.absStart,_that.halfDayStart,_that.isWorkingDay,_that.isOffDay,_that.includeRestHours,_that.isHalfDay,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dayId,  String day,  int workStart,  int workEnd,  int restStart,  int restEnd,  int otStart,  int late1Start,  int late2Start,  int late3Start,  int absStart,  int halfDayStart,  bool isWorkingDay,  bool isOffDay,  bool includeRestHours,  bool isHalfDay,  String? id)?  $default,) {final _that = this;
switch (_that) {
case _WorkingDay() when $default != null:
return $default(_that.dayId,_that.day,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Start,_that.late2Start,_that.late3Start,_that.absStart,_that.halfDayStart,_that.isWorkingDay,_that.isOffDay,_that.includeRestHours,_that.isHalfDay,_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _WorkingDay implements WorkingDay {
  const _WorkingDay({required this.dayId, required this.day, required this.workStart, required this.workEnd, required this.restStart, required this.restEnd, required this.otStart, required this.late1Start, required this.late2Start, required this.late3Start, required this.absStart, required this.halfDayStart, required this.isWorkingDay, required this.isOffDay, required this.includeRestHours, required this.isHalfDay, this.id});
  

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
@override final  int absStart;
@override final  int halfDayStart;
@override final  bool isWorkingDay;
@override final  bool isOffDay;
@override final  bool includeRestHours;
@override final  bool isHalfDay;
@override final  String? id;

/// Create a copy of WorkingDay
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingDayCopyWith<_WorkingDay> get copyWith => __$WorkingDayCopyWithImpl<_WorkingDay>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingDay&&(identical(other.dayId, dayId) || other.dayId == dayId)&&(identical(other.day, day) || other.day == day)&&(identical(other.workStart, workStart) || other.workStart == workStart)&&(identical(other.workEnd, workEnd) || other.workEnd == workEnd)&&(identical(other.restStart, restStart) || other.restStart == restStart)&&(identical(other.restEnd, restEnd) || other.restEnd == restEnd)&&(identical(other.otStart, otStart) || other.otStart == otStart)&&(identical(other.late1Start, late1Start) || other.late1Start == late1Start)&&(identical(other.late2Start, late2Start) || other.late2Start == late2Start)&&(identical(other.late3Start, late3Start) || other.late3Start == late3Start)&&(identical(other.absStart, absStart) || other.absStart == absStart)&&(identical(other.halfDayStart, halfDayStart) || other.halfDayStart == halfDayStart)&&(identical(other.isWorkingDay, isWorkingDay) || other.isWorkingDay == isWorkingDay)&&(identical(other.isOffDay, isOffDay) || other.isOffDay == isOffDay)&&(identical(other.includeRestHours, includeRestHours) || other.includeRestHours == includeRestHours)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,dayId,day,workStart,workEnd,restStart,restEnd,otStart,late1Start,late2Start,late3Start,absStart,halfDayStart,isWorkingDay,isOffDay,includeRestHours,isHalfDay,id);

@override
String toString() {
  return 'WorkingDay(dayId: $dayId, day: $day, workStart: $workStart, workEnd: $workEnd, restStart: $restStart, restEnd: $restEnd, otStart: $otStart, late1Start: $late1Start, late2Start: $late2Start, late3Start: $late3Start, absStart: $absStart, halfDayStart: $halfDayStart, isWorkingDay: $isWorkingDay, isOffDay: $isOffDay, includeRestHours: $includeRestHours, isHalfDay: $isHalfDay, id: $id)';
}


}

/// @nodoc
abstract mixin class _$WorkingDayCopyWith<$Res> implements $WorkingDayCopyWith<$Res> {
  factory _$WorkingDayCopyWith(_WorkingDay value, $Res Function(_WorkingDay) _then) = __$WorkingDayCopyWithImpl;
@override @useResult
$Res call({
 int dayId, String day, int workStart, int workEnd, int restStart, int restEnd, int otStart, int late1Start, int late2Start, int late3Start, int absStart, int halfDayStart, bool isWorkingDay, bool isOffDay, bool includeRestHours, bool isHalfDay, String? id
});




}
/// @nodoc
class __$WorkingDayCopyWithImpl<$Res>
    implements _$WorkingDayCopyWith<$Res> {
  __$WorkingDayCopyWithImpl(this._self, this._then);

  final _WorkingDay _self;
  final $Res Function(_WorkingDay) _then;

/// Create a copy of WorkingDay
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dayId = null,Object? day = null,Object? workStart = null,Object? workEnd = null,Object? restStart = null,Object? restEnd = null,Object? otStart = null,Object? late1Start = null,Object? late2Start = null,Object? late3Start = null,Object? absStart = null,Object? halfDayStart = null,Object? isWorkingDay = null,Object? isOffDay = null,Object? includeRestHours = null,Object? isHalfDay = null,Object? id = freezed,}) {
  return _then(_WorkingDay(
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
as int,absStart: null == absStart ? _self.absStart : absStart // ignore: cast_nullable_to_non_nullable
as int,halfDayStart: null == halfDayStart ? _self.halfDayStart : halfDayStart // ignore: cast_nullable_to_non_nullable
as int,isWorkingDay: null == isWorkingDay ? _self.isWorkingDay : isWorkingDay // ignore: cast_nullable_to_non_nullable
as bool,isOffDay: null == isOffDay ? _self.isOffDay : isOffDay // ignore: cast_nullable_to_non_nullable
as bool,includeRestHours: null == includeRestHours ? _self.includeRestHours : includeRestHours // ignore: cast_nullable_to_non_nullable
as bool,isHalfDay: null == isHalfDay ? _self.isHalfDay : isHalfDay // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
