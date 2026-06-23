// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'default_working_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DefaultWorkingDayModel {

 int get dayid; String get day; int get workstart; int get workend; int get reststart; int get restend; int get otstart; int get late1start; int get late2start; int get late3start; int get halfdaystart; int get absstart; bool get offday; bool get workingday;
/// Create a copy of DefaultWorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DefaultWorkingDayModelCopyWith<DefaultWorkingDayModel> get copyWith => _$DefaultWorkingDayModelCopyWithImpl<DefaultWorkingDayModel>(this as DefaultWorkingDayModel, _$identity);

  /// Serializes this DefaultWorkingDayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DefaultWorkingDayModel&&(identical(other.dayid, dayid) || other.dayid == dayid)&&(identical(other.day, day) || other.day == day)&&(identical(other.workstart, workstart) || other.workstart == workstart)&&(identical(other.workend, workend) || other.workend == workend)&&(identical(other.reststart, reststart) || other.reststart == reststart)&&(identical(other.restend, restend) || other.restend == restend)&&(identical(other.otstart, otstart) || other.otstart == otstart)&&(identical(other.late1start, late1start) || other.late1start == late1start)&&(identical(other.late2start, late2start) || other.late2start == late2start)&&(identical(other.late3start, late3start) || other.late3start == late3start)&&(identical(other.halfdaystart, halfdaystart) || other.halfdaystart == halfdaystart)&&(identical(other.absstart, absstart) || other.absstart == absstart)&&(identical(other.offday, offday) || other.offday == offday)&&(identical(other.workingday, workingday) || other.workingday == workingday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dayid,day,workstart,workend,reststart,restend,otstart,late1start,late2start,late3start,halfdaystart,absstart,offday,workingday);

@override
String toString() {
  return 'DefaultWorkingDayModel(dayid: $dayid, day: $day, workstart: $workstart, workend: $workend, reststart: $reststart, restend: $restend, otstart: $otstart, late1start: $late1start, late2start: $late2start, late3start: $late3start, halfdaystart: $halfdaystart, absstart: $absstart, offday: $offday, workingday: $workingday)';
}


}

/// @nodoc
abstract mixin class $DefaultWorkingDayModelCopyWith<$Res>  {
  factory $DefaultWorkingDayModelCopyWith(DefaultWorkingDayModel value, $Res Function(DefaultWorkingDayModel) _then) = _$DefaultWorkingDayModelCopyWithImpl;
@useResult
$Res call({
 int dayid, String day, int workstart, int workend, int reststart, int restend, int otstart, int late1start, int late2start, int late3start, int halfdaystart, int absstart, bool offday, bool workingday
});




}
/// @nodoc
class _$DefaultWorkingDayModelCopyWithImpl<$Res>
    implements $DefaultWorkingDayModelCopyWith<$Res> {
  _$DefaultWorkingDayModelCopyWithImpl(this._self, this._then);

  final DefaultWorkingDayModel _self;
  final $Res Function(DefaultWorkingDayModel) _then;

/// Create a copy of DefaultWorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dayid = null,Object? day = null,Object? workstart = null,Object? workend = null,Object? reststart = null,Object? restend = null,Object? otstart = null,Object? late1start = null,Object? late2start = null,Object? late3start = null,Object? halfdaystart = null,Object? absstart = null,Object? offday = null,Object? workingday = null,}) {
  return _then(_self.copyWith(
dayid: null == dayid ? _self.dayid : dayid // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,workstart: null == workstart ? _self.workstart : workstart // ignore: cast_nullable_to_non_nullable
as int,workend: null == workend ? _self.workend : workend // ignore: cast_nullable_to_non_nullable
as int,reststart: null == reststart ? _self.reststart : reststart // ignore: cast_nullable_to_non_nullable
as int,restend: null == restend ? _self.restend : restend // ignore: cast_nullable_to_non_nullable
as int,otstart: null == otstart ? _self.otstart : otstart // ignore: cast_nullable_to_non_nullable
as int,late1start: null == late1start ? _self.late1start : late1start // ignore: cast_nullable_to_non_nullable
as int,late2start: null == late2start ? _self.late2start : late2start // ignore: cast_nullable_to_non_nullable
as int,late3start: null == late3start ? _self.late3start : late3start // ignore: cast_nullable_to_non_nullable
as int,halfdaystart: null == halfdaystart ? _self.halfdaystart : halfdaystart // ignore: cast_nullable_to_non_nullable
as int,absstart: null == absstart ? _self.absstart : absstart // ignore: cast_nullable_to_non_nullable
as int,offday: null == offday ? _self.offday : offday // ignore: cast_nullable_to_non_nullable
as bool,workingday: null == workingday ? _self.workingday : workingday // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DefaultWorkingDayModel].
extension DefaultWorkingDayModelPatterns on DefaultWorkingDayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DefaultWorkingDayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DefaultWorkingDayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DefaultWorkingDayModel value)  $default,){
final _that = this;
switch (_that) {
case _DefaultWorkingDayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DefaultWorkingDayModel value)?  $default,){
final _that = this;
switch (_that) {
case _DefaultWorkingDayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dayid,  String day,  int workstart,  int workend,  int reststart,  int restend,  int otstart,  int late1start,  int late2start,  int late3start,  int halfdaystart,  int absstart,  bool offday,  bool workingday)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DefaultWorkingDayModel() when $default != null:
return $default(_that.dayid,_that.day,_that.workstart,_that.workend,_that.reststart,_that.restend,_that.otstart,_that.late1start,_that.late2start,_that.late3start,_that.halfdaystart,_that.absstart,_that.offday,_that.workingday);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dayid,  String day,  int workstart,  int workend,  int reststart,  int restend,  int otstart,  int late1start,  int late2start,  int late3start,  int halfdaystart,  int absstart,  bool offday,  bool workingday)  $default,) {final _that = this;
switch (_that) {
case _DefaultWorkingDayModel():
return $default(_that.dayid,_that.day,_that.workstart,_that.workend,_that.reststart,_that.restend,_that.otstart,_that.late1start,_that.late2start,_that.late3start,_that.halfdaystart,_that.absstart,_that.offday,_that.workingday);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dayid,  String day,  int workstart,  int workend,  int reststart,  int restend,  int otstart,  int late1start,  int late2start,  int late3start,  int halfdaystart,  int absstart,  bool offday,  bool workingday)?  $default,) {final _that = this;
switch (_that) {
case _DefaultWorkingDayModel() when $default != null:
return $default(_that.dayid,_that.day,_that.workstart,_that.workend,_that.reststart,_that.restend,_that.otstart,_that.late1start,_that.late2start,_that.late3start,_that.halfdaystart,_that.absstart,_that.offday,_that.workingday);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DefaultWorkingDayModel implements DefaultWorkingDayModel {
  const _DefaultWorkingDayModel({required this.dayid, required this.day, required this.workstart, required this.workend, required this.reststart, required this.restend, required this.otstart, required this.late1start, required this.late2start, required this.late3start, required this.halfdaystart, required this.absstart, required this.offday, required this.workingday});
  factory _DefaultWorkingDayModel.fromJson(Map<String, dynamic> json) => _$DefaultWorkingDayModelFromJson(json);

@override final  int dayid;
@override final  String day;
@override final  int workstart;
@override final  int workend;
@override final  int reststart;
@override final  int restend;
@override final  int otstart;
@override final  int late1start;
@override final  int late2start;
@override final  int late3start;
@override final  int halfdaystart;
@override final  int absstart;
@override final  bool offday;
@override final  bool workingday;

/// Create a copy of DefaultWorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DefaultWorkingDayModelCopyWith<_DefaultWorkingDayModel> get copyWith => __$DefaultWorkingDayModelCopyWithImpl<_DefaultWorkingDayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DefaultWorkingDayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DefaultWorkingDayModel&&(identical(other.dayid, dayid) || other.dayid == dayid)&&(identical(other.day, day) || other.day == day)&&(identical(other.workstart, workstart) || other.workstart == workstart)&&(identical(other.workend, workend) || other.workend == workend)&&(identical(other.reststart, reststart) || other.reststart == reststart)&&(identical(other.restend, restend) || other.restend == restend)&&(identical(other.otstart, otstart) || other.otstart == otstart)&&(identical(other.late1start, late1start) || other.late1start == late1start)&&(identical(other.late2start, late2start) || other.late2start == late2start)&&(identical(other.late3start, late3start) || other.late3start == late3start)&&(identical(other.halfdaystart, halfdaystart) || other.halfdaystart == halfdaystart)&&(identical(other.absstart, absstart) || other.absstart == absstart)&&(identical(other.offday, offday) || other.offday == offday)&&(identical(other.workingday, workingday) || other.workingday == workingday));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dayid,day,workstart,workend,reststart,restend,otstart,late1start,late2start,late3start,halfdaystart,absstart,offday,workingday);

@override
String toString() {
  return 'DefaultWorkingDayModel(dayid: $dayid, day: $day, workstart: $workstart, workend: $workend, reststart: $reststart, restend: $restend, otstart: $otstart, late1start: $late1start, late2start: $late2start, late3start: $late3start, halfdaystart: $halfdaystart, absstart: $absstart, offday: $offday, workingday: $workingday)';
}


}

/// @nodoc
abstract mixin class _$DefaultWorkingDayModelCopyWith<$Res> implements $DefaultWorkingDayModelCopyWith<$Res> {
  factory _$DefaultWorkingDayModelCopyWith(_DefaultWorkingDayModel value, $Res Function(_DefaultWorkingDayModel) _then) = __$DefaultWorkingDayModelCopyWithImpl;
@override @useResult
$Res call({
 int dayid, String day, int workstart, int workend, int reststart, int restend, int otstart, int late1start, int late2start, int late3start, int halfdaystart, int absstart, bool offday, bool workingday
});




}
/// @nodoc
class __$DefaultWorkingDayModelCopyWithImpl<$Res>
    implements _$DefaultWorkingDayModelCopyWith<$Res> {
  __$DefaultWorkingDayModelCopyWithImpl(this._self, this._then);

  final _DefaultWorkingDayModel _self;
  final $Res Function(_DefaultWorkingDayModel) _then;

/// Create a copy of DefaultWorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dayid = null,Object? day = null,Object? workstart = null,Object? workend = null,Object? reststart = null,Object? restend = null,Object? otstart = null,Object? late1start = null,Object? late2start = null,Object? late3start = null,Object? halfdaystart = null,Object? absstart = null,Object? offday = null,Object? workingday = null,}) {
  return _then(_DefaultWorkingDayModel(
dayid: null == dayid ? _self.dayid : dayid // ignore: cast_nullable_to_non_nullable
as int,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,workstart: null == workstart ? _self.workstart : workstart // ignore: cast_nullable_to_non_nullable
as int,workend: null == workend ? _self.workend : workend // ignore: cast_nullable_to_non_nullable
as int,reststart: null == reststart ? _self.reststart : reststart // ignore: cast_nullable_to_non_nullable
as int,restend: null == restend ? _self.restend : restend // ignore: cast_nullable_to_non_nullable
as int,otstart: null == otstart ? _self.otstart : otstart // ignore: cast_nullable_to_non_nullable
as int,late1start: null == late1start ? _self.late1start : late1start // ignore: cast_nullable_to_non_nullable
as int,late2start: null == late2start ? _self.late2start : late2start // ignore: cast_nullable_to_non_nullable
as int,late3start: null == late3start ? _self.late3start : late3start // ignore: cast_nullable_to_non_nullable
as int,halfdaystart: null == halfdaystart ? _self.halfdaystart : halfdaystart // ignore: cast_nullable_to_non_nullable
as int,absstart: null == absstart ? _self.absstart : absstart // ignore: cast_nullable_to_non_nullable
as int,offday: null == offday ? _self.offday : offday // ignore: cast_nullable_to_non_nullable
as bool,workingday: null == workingday ? _self.workingday : workingday // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
