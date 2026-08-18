// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShiftDayModel {

 String get day;@JsonKey(name: 'day_no') int get dayNo;@JsonKey(name: 'is_working_day') bool get isWorkingDay;@JsonKey(name: 'is_off_day') bool get isOffDay;@JsonKey(name: 'is_half_day') bool get isHalfDay;@JsonKey(name: 'work_start') String? get workStart;@JsonKey(name: 'work_end') String? get workEnd;@JsonKey(name: 'rest_start') String? get restStart;@JsonKey(name: 'rest_end') String? get restEnd;@JsonKey(name: 'ot_start') String? get otStart;@JsonKey(name: 'late1_minutes') int get late1Minutes;@JsonKey(name: 'late2_minutes') int get late2Minutes;@JsonKey(name: 'late3_minutes') int get late3Minutes;@JsonKey(name: 'absent_minutes') int get absentMinutes;@JsonKey(name: 'half_day_minutes') int get halfDayMinutes;@JsonKey(name: 'include_rest_in_hours') bool get includeRestInHours; bool get overnight;
/// Create a copy of ShiftDayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftDayModelCopyWith<ShiftDayModel> get copyWith => _$ShiftDayModelCopyWithImpl<ShiftDayModel>(this as ShiftDayModel, _$identity);

  /// Serializes this ShiftDayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShiftDayModel&&(identical(other.day, day) || other.day == day)&&(identical(other.dayNo, dayNo) || other.dayNo == dayNo)&&(identical(other.isWorkingDay, isWorkingDay) || other.isWorkingDay == isWorkingDay)&&(identical(other.isOffDay, isOffDay) || other.isOffDay == isOffDay)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.workStart, workStart) || other.workStart == workStart)&&(identical(other.workEnd, workEnd) || other.workEnd == workEnd)&&(identical(other.restStart, restStart) || other.restStart == restStart)&&(identical(other.restEnd, restEnd) || other.restEnd == restEnd)&&(identical(other.otStart, otStart) || other.otStart == otStart)&&(identical(other.late1Minutes, late1Minutes) || other.late1Minutes == late1Minutes)&&(identical(other.late2Minutes, late2Minutes) || other.late2Minutes == late2Minutes)&&(identical(other.late3Minutes, late3Minutes) || other.late3Minutes == late3Minutes)&&(identical(other.absentMinutes, absentMinutes) || other.absentMinutes == absentMinutes)&&(identical(other.halfDayMinutes, halfDayMinutes) || other.halfDayMinutes == halfDayMinutes)&&(identical(other.includeRestInHours, includeRestInHours) || other.includeRestInHours == includeRestInHours)&&(identical(other.overnight, overnight) || other.overnight == overnight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,dayNo,isWorkingDay,isOffDay,isHalfDay,workStart,workEnd,restStart,restEnd,otStart,late1Minutes,late2Minutes,late3Minutes,absentMinutes,halfDayMinutes,includeRestInHours,overnight);

@override
String toString() {
  return 'ShiftDayModel(day: $day, dayNo: $dayNo, isWorkingDay: $isWorkingDay, isOffDay: $isOffDay, isHalfDay: $isHalfDay, workStart: $workStart, workEnd: $workEnd, restStart: $restStart, restEnd: $restEnd, otStart: $otStart, late1Minutes: $late1Minutes, late2Minutes: $late2Minutes, late3Minutes: $late3Minutes, absentMinutes: $absentMinutes, halfDayMinutes: $halfDayMinutes, includeRestInHours: $includeRestInHours, overnight: $overnight)';
}


}

/// @nodoc
abstract mixin class $ShiftDayModelCopyWith<$Res>  {
  factory $ShiftDayModelCopyWith(ShiftDayModel value, $Res Function(ShiftDayModel) _then) = _$ShiftDayModelCopyWithImpl;
@useResult
$Res call({
 String day,@JsonKey(name: 'day_no') int dayNo,@JsonKey(name: 'is_working_day') bool isWorkingDay,@JsonKey(name: 'is_off_day') bool isOffDay,@JsonKey(name: 'is_half_day') bool isHalfDay,@JsonKey(name: 'work_start') String? workStart,@JsonKey(name: 'work_end') String? workEnd,@JsonKey(name: 'rest_start') String? restStart,@JsonKey(name: 'rest_end') String? restEnd,@JsonKey(name: 'ot_start') String? otStart,@JsonKey(name: 'late1_minutes') int late1Minutes,@JsonKey(name: 'late2_minutes') int late2Minutes,@JsonKey(name: 'late3_minutes') int late3Minutes,@JsonKey(name: 'absent_minutes') int absentMinutes,@JsonKey(name: 'half_day_minutes') int halfDayMinutes,@JsonKey(name: 'include_rest_in_hours') bool includeRestInHours, bool overnight
});




}
/// @nodoc
class _$ShiftDayModelCopyWithImpl<$Res>
    implements $ShiftDayModelCopyWith<$Res> {
  _$ShiftDayModelCopyWithImpl(this._self, this._then);

  final ShiftDayModel _self;
  final $Res Function(ShiftDayModel) _then;

/// Create a copy of ShiftDayModel
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


/// Adds pattern-matching-related methods to [ShiftDayModel].
extension ShiftDayModelPatterns on ShiftDayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShiftDayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShiftDayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShiftDayModel value)  $default,){
final _that = this;
switch (_that) {
case _ShiftDayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShiftDayModel value)?  $default,){
final _that = this;
switch (_that) {
case _ShiftDayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String day, @JsonKey(name: 'day_no')  int dayNo, @JsonKey(name: 'is_working_day')  bool isWorkingDay, @JsonKey(name: 'is_off_day')  bool isOffDay, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'work_start')  String? workStart, @JsonKey(name: 'work_end')  String? workEnd, @JsonKey(name: 'rest_start')  String? restStart, @JsonKey(name: 'rest_end')  String? restEnd, @JsonKey(name: 'ot_start')  String? otStart, @JsonKey(name: 'late1_minutes')  int late1Minutes, @JsonKey(name: 'late2_minutes')  int late2Minutes, @JsonKey(name: 'late3_minutes')  int late3Minutes, @JsonKey(name: 'absent_minutes')  int absentMinutes, @JsonKey(name: 'half_day_minutes')  int halfDayMinutes, @JsonKey(name: 'include_rest_in_hours')  bool includeRestInHours,  bool overnight)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShiftDayModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String day, @JsonKey(name: 'day_no')  int dayNo, @JsonKey(name: 'is_working_day')  bool isWorkingDay, @JsonKey(name: 'is_off_day')  bool isOffDay, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'work_start')  String? workStart, @JsonKey(name: 'work_end')  String? workEnd, @JsonKey(name: 'rest_start')  String? restStart, @JsonKey(name: 'rest_end')  String? restEnd, @JsonKey(name: 'ot_start')  String? otStart, @JsonKey(name: 'late1_minutes')  int late1Minutes, @JsonKey(name: 'late2_minutes')  int late2Minutes, @JsonKey(name: 'late3_minutes')  int late3Minutes, @JsonKey(name: 'absent_minutes')  int absentMinutes, @JsonKey(name: 'half_day_minutes')  int halfDayMinutes, @JsonKey(name: 'include_rest_in_hours')  bool includeRestInHours,  bool overnight)  $default,) {final _that = this;
switch (_that) {
case _ShiftDayModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String day, @JsonKey(name: 'day_no')  int dayNo, @JsonKey(name: 'is_working_day')  bool isWorkingDay, @JsonKey(name: 'is_off_day')  bool isOffDay, @JsonKey(name: 'is_half_day')  bool isHalfDay, @JsonKey(name: 'work_start')  String? workStart, @JsonKey(name: 'work_end')  String? workEnd, @JsonKey(name: 'rest_start')  String? restStart, @JsonKey(name: 'rest_end')  String? restEnd, @JsonKey(name: 'ot_start')  String? otStart, @JsonKey(name: 'late1_minutes')  int late1Minutes, @JsonKey(name: 'late2_minutes')  int late2Minutes, @JsonKey(name: 'late3_minutes')  int late3Minutes, @JsonKey(name: 'absent_minutes')  int absentMinutes, @JsonKey(name: 'half_day_minutes')  int halfDayMinutes, @JsonKey(name: 'include_rest_in_hours')  bool includeRestInHours,  bool overnight)?  $default,) {final _that = this;
switch (_that) {
case _ShiftDayModel() when $default != null:
return $default(_that.day,_that.dayNo,_that.isWorkingDay,_that.isOffDay,_that.isHalfDay,_that.workStart,_that.workEnd,_that.restStart,_that.restEnd,_that.otStart,_that.late1Minutes,_that.late2Minutes,_that.late3Minutes,_that.absentMinutes,_that.halfDayMinutes,_that.includeRestInHours,_that.overnight);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ShiftDayModel extends ShiftDayModel {
  const _ShiftDayModel({this.day = '', @JsonKey(name: 'day_no') this.dayNo = 0, @JsonKey(name: 'is_working_day') this.isWorkingDay = false, @JsonKey(name: 'is_off_day') this.isOffDay = false, @JsonKey(name: 'is_half_day') this.isHalfDay = false, @JsonKey(name: 'work_start') this.workStart, @JsonKey(name: 'work_end') this.workEnd, @JsonKey(name: 'rest_start') this.restStart, @JsonKey(name: 'rest_end') this.restEnd, @JsonKey(name: 'ot_start') this.otStart, @JsonKey(name: 'late1_minutes') this.late1Minutes = 0, @JsonKey(name: 'late2_minutes') this.late2Minutes = 0, @JsonKey(name: 'late3_minutes') this.late3Minutes = 0, @JsonKey(name: 'absent_minutes') this.absentMinutes = 0, @JsonKey(name: 'half_day_minutes') this.halfDayMinutes = 0, @JsonKey(name: 'include_rest_in_hours') this.includeRestInHours = false, this.overnight = false}): super._();
  factory _ShiftDayModel.fromJson(Map<String, dynamic> json) => _$ShiftDayModelFromJson(json);

@override@JsonKey() final  String day;
@override@JsonKey(name: 'day_no') final  int dayNo;
@override@JsonKey(name: 'is_working_day') final  bool isWorkingDay;
@override@JsonKey(name: 'is_off_day') final  bool isOffDay;
@override@JsonKey(name: 'is_half_day') final  bool isHalfDay;
@override@JsonKey(name: 'work_start') final  String? workStart;
@override@JsonKey(name: 'work_end') final  String? workEnd;
@override@JsonKey(name: 'rest_start') final  String? restStart;
@override@JsonKey(name: 'rest_end') final  String? restEnd;
@override@JsonKey(name: 'ot_start') final  String? otStart;
@override@JsonKey(name: 'late1_minutes') final  int late1Minutes;
@override@JsonKey(name: 'late2_minutes') final  int late2Minutes;
@override@JsonKey(name: 'late3_minutes') final  int late3Minutes;
@override@JsonKey(name: 'absent_minutes') final  int absentMinutes;
@override@JsonKey(name: 'half_day_minutes') final  int halfDayMinutes;
@override@JsonKey(name: 'include_rest_in_hours') final  bool includeRestInHours;
@override@JsonKey() final  bool overnight;

/// Create a copy of ShiftDayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftDayModelCopyWith<_ShiftDayModel> get copyWith => __$ShiftDayModelCopyWithImpl<_ShiftDayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ShiftDayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShiftDayModel&&(identical(other.day, day) || other.day == day)&&(identical(other.dayNo, dayNo) || other.dayNo == dayNo)&&(identical(other.isWorkingDay, isWorkingDay) || other.isWorkingDay == isWorkingDay)&&(identical(other.isOffDay, isOffDay) || other.isOffDay == isOffDay)&&(identical(other.isHalfDay, isHalfDay) || other.isHalfDay == isHalfDay)&&(identical(other.workStart, workStart) || other.workStart == workStart)&&(identical(other.workEnd, workEnd) || other.workEnd == workEnd)&&(identical(other.restStart, restStart) || other.restStart == restStart)&&(identical(other.restEnd, restEnd) || other.restEnd == restEnd)&&(identical(other.otStart, otStart) || other.otStart == otStart)&&(identical(other.late1Minutes, late1Minutes) || other.late1Minutes == late1Minutes)&&(identical(other.late2Minutes, late2Minutes) || other.late2Minutes == late2Minutes)&&(identical(other.late3Minutes, late3Minutes) || other.late3Minutes == late3Minutes)&&(identical(other.absentMinutes, absentMinutes) || other.absentMinutes == absentMinutes)&&(identical(other.halfDayMinutes, halfDayMinutes) || other.halfDayMinutes == halfDayMinutes)&&(identical(other.includeRestInHours, includeRestInHours) || other.includeRestInHours == includeRestInHours)&&(identical(other.overnight, overnight) || other.overnight == overnight));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,dayNo,isWorkingDay,isOffDay,isHalfDay,workStart,workEnd,restStart,restEnd,otStart,late1Minutes,late2Minutes,late3Minutes,absentMinutes,halfDayMinutes,includeRestInHours,overnight);

@override
String toString() {
  return 'ShiftDayModel(day: $day, dayNo: $dayNo, isWorkingDay: $isWorkingDay, isOffDay: $isOffDay, isHalfDay: $isHalfDay, workStart: $workStart, workEnd: $workEnd, restStart: $restStart, restEnd: $restEnd, otStart: $otStart, late1Minutes: $late1Minutes, late2Minutes: $late2Minutes, late3Minutes: $late3Minutes, absentMinutes: $absentMinutes, halfDayMinutes: $halfDayMinutes, includeRestInHours: $includeRestInHours, overnight: $overnight)';
}


}

/// @nodoc
abstract mixin class _$ShiftDayModelCopyWith<$Res> implements $ShiftDayModelCopyWith<$Res> {
  factory _$ShiftDayModelCopyWith(_ShiftDayModel value, $Res Function(_ShiftDayModel) _then) = __$ShiftDayModelCopyWithImpl;
@override @useResult
$Res call({
 String day,@JsonKey(name: 'day_no') int dayNo,@JsonKey(name: 'is_working_day') bool isWorkingDay,@JsonKey(name: 'is_off_day') bool isOffDay,@JsonKey(name: 'is_half_day') bool isHalfDay,@JsonKey(name: 'work_start') String? workStart,@JsonKey(name: 'work_end') String? workEnd,@JsonKey(name: 'rest_start') String? restStart,@JsonKey(name: 'rest_end') String? restEnd,@JsonKey(name: 'ot_start') String? otStart,@JsonKey(name: 'late1_minutes') int late1Minutes,@JsonKey(name: 'late2_minutes') int late2Minutes,@JsonKey(name: 'late3_minutes') int late3Minutes,@JsonKey(name: 'absent_minutes') int absentMinutes,@JsonKey(name: 'half_day_minutes') int halfDayMinutes,@JsonKey(name: 'include_rest_in_hours') bool includeRestInHours, bool overnight
});




}
/// @nodoc
class __$ShiftDayModelCopyWithImpl<$Res>
    implements _$ShiftDayModelCopyWith<$Res> {
  __$ShiftDayModelCopyWithImpl(this._self, this._then);

  final _ShiftDayModel _self;
  final $Res Function(_ShiftDayModel) _then;

/// Create a copy of ShiftDayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? dayNo = null,Object? isWorkingDay = null,Object? isOffDay = null,Object? isHalfDay = null,Object? workStart = freezed,Object? workEnd = freezed,Object? restStart = freezed,Object? restEnd = freezed,Object? otStart = freezed,Object? late1Minutes = null,Object? late2Minutes = null,Object? late3Minutes = null,Object? absentMinutes = null,Object? halfDayMinutes = null,Object? includeRestInHours = null,Object? overnight = null,}) {
  return _then(_ShiftDayModel(
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
