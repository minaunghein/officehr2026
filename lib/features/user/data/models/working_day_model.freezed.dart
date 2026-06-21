// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'working_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkingDayModel {

 int get dayid; String get day; int get workstart; int get workend; int get reststart; int get restend; int get otstart; int get late1start; int get late2start; int get late3start; int get absstart; int get halfdaystart; bool get workingday; bool get offday; bool get incresthr; bool get halfday;@JsonKey(name: '_id') String? get id;
/// Create a copy of WorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingDayModelCopyWith<WorkingDayModel> get copyWith => _$WorkingDayModelCopyWithImpl<WorkingDayModel>(this as WorkingDayModel, _$identity);

  /// Serializes this WorkingDayModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingDayModel&&(identical(other.dayid, dayid) || other.dayid == dayid)&&(identical(other.day, day) || other.day == day)&&(identical(other.workstart, workstart) || other.workstart == workstart)&&(identical(other.workend, workend) || other.workend == workend)&&(identical(other.reststart, reststart) || other.reststart == reststart)&&(identical(other.restend, restend) || other.restend == restend)&&(identical(other.otstart, otstart) || other.otstart == otstart)&&(identical(other.late1start, late1start) || other.late1start == late1start)&&(identical(other.late2start, late2start) || other.late2start == late2start)&&(identical(other.late3start, late3start) || other.late3start == late3start)&&(identical(other.absstart, absstart) || other.absstart == absstart)&&(identical(other.halfdaystart, halfdaystart) || other.halfdaystart == halfdaystart)&&(identical(other.workingday, workingday) || other.workingday == workingday)&&(identical(other.offday, offday) || other.offday == offday)&&(identical(other.incresthr, incresthr) || other.incresthr == incresthr)&&(identical(other.halfday, halfday) || other.halfday == halfday)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dayid,day,workstart,workend,reststart,restend,otstart,late1start,late2start,late3start,absstart,halfdaystart,workingday,offday,incresthr,halfday,id);

@override
String toString() {
  return 'WorkingDayModel(dayid: $dayid, day: $day, workstart: $workstart, workend: $workend, reststart: $reststart, restend: $restend, otstart: $otstart, late1start: $late1start, late2start: $late2start, late3start: $late3start, absstart: $absstart, halfdaystart: $halfdaystart, workingday: $workingday, offday: $offday, incresthr: $incresthr, halfday: $halfday, id: $id)';
}


}

/// @nodoc
abstract mixin class $WorkingDayModelCopyWith<$Res>  {
  factory $WorkingDayModelCopyWith(WorkingDayModel value, $Res Function(WorkingDayModel) _then) = _$WorkingDayModelCopyWithImpl;
@useResult
$Res call({
 int dayid, String day, int workstart, int workend, int reststart, int restend, int otstart, int late1start, int late2start, int late3start, int absstart, int halfdaystart, bool workingday, bool offday, bool incresthr, bool halfday,@JsonKey(name: '_id') String? id
});




}
/// @nodoc
class _$WorkingDayModelCopyWithImpl<$Res>
    implements $WorkingDayModelCopyWith<$Res> {
  _$WorkingDayModelCopyWithImpl(this._self, this._then);

  final WorkingDayModel _self;
  final $Res Function(WorkingDayModel) _then;

/// Create a copy of WorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dayid = null,Object? day = null,Object? workstart = null,Object? workend = null,Object? reststart = null,Object? restend = null,Object? otstart = null,Object? late1start = null,Object? late2start = null,Object? late3start = null,Object? absstart = null,Object? halfdaystart = null,Object? workingday = null,Object? offday = null,Object? incresthr = null,Object? halfday = null,Object? id = freezed,}) {
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
as int,absstart: null == absstart ? _self.absstart : absstart // ignore: cast_nullable_to_non_nullable
as int,halfdaystart: null == halfdaystart ? _self.halfdaystart : halfdaystart // ignore: cast_nullable_to_non_nullable
as int,workingday: null == workingday ? _self.workingday : workingday // ignore: cast_nullable_to_non_nullable
as bool,offday: null == offday ? _self.offday : offday // ignore: cast_nullable_to_non_nullable
as bool,incresthr: null == incresthr ? _self.incresthr : incresthr // ignore: cast_nullable_to_non_nullable
as bool,halfday: null == halfday ? _self.halfday : halfday // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingDayModel].
extension WorkingDayModelPatterns on WorkingDayModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingDayModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingDayModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingDayModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkingDayModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingDayModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingDayModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int dayid,  String day,  int workstart,  int workend,  int reststart,  int restend,  int otstart,  int late1start,  int late2start,  int late3start,  int absstart,  int halfdaystart,  bool workingday,  bool offday,  bool incresthr,  bool halfday, @JsonKey(name: '_id')  String? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingDayModel() when $default != null:
return $default(_that.dayid,_that.day,_that.workstart,_that.workend,_that.reststart,_that.restend,_that.otstart,_that.late1start,_that.late2start,_that.late3start,_that.absstart,_that.halfdaystart,_that.workingday,_that.offday,_that.incresthr,_that.halfday,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int dayid,  String day,  int workstart,  int workend,  int reststart,  int restend,  int otstart,  int late1start,  int late2start,  int late3start,  int absstart,  int halfdaystart,  bool workingday,  bool offday,  bool incresthr,  bool halfday, @JsonKey(name: '_id')  String? id)  $default,) {final _that = this;
switch (_that) {
case _WorkingDayModel():
return $default(_that.dayid,_that.day,_that.workstart,_that.workend,_that.reststart,_that.restend,_that.otstart,_that.late1start,_that.late2start,_that.late3start,_that.absstart,_that.halfdaystart,_that.workingday,_that.offday,_that.incresthr,_that.halfday,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int dayid,  String day,  int workstart,  int workend,  int reststart,  int restend,  int otstart,  int late1start,  int late2start,  int late3start,  int absstart,  int halfdaystart,  bool workingday,  bool offday,  bool incresthr,  bool halfday, @JsonKey(name: '_id')  String? id)?  $default,) {final _that = this;
switch (_that) {
case _WorkingDayModel() when $default != null:
return $default(_that.dayid,_that.day,_that.workstart,_that.workend,_that.reststart,_that.restend,_that.otstart,_that.late1start,_that.late2start,_that.late3start,_that.absstart,_that.halfdaystart,_that.workingday,_that.offday,_that.incresthr,_that.halfday,_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkingDayModel implements WorkingDayModel {
  const _WorkingDayModel({required this.dayid, required this.day, required this.workstart, required this.workend, required this.reststart, required this.restend, required this.otstart, required this.late1start, required this.late2start, required this.late3start, required this.absstart, required this.halfdaystart, this.workingday = false, this.offday = false, this.incresthr = false, this.halfday = false, @JsonKey(name: '_id') this.id});
  factory _WorkingDayModel.fromJson(Map<String, dynamic> json) => _$WorkingDayModelFromJson(json);

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
@override final  int absstart;
@override final  int halfdaystart;
@override@JsonKey() final  bool workingday;
@override@JsonKey() final  bool offday;
@override@JsonKey() final  bool incresthr;
@override@JsonKey() final  bool halfday;
@override@JsonKey(name: '_id') final  String? id;

/// Create a copy of WorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingDayModelCopyWith<_WorkingDayModel> get copyWith => __$WorkingDayModelCopyWithImpl<_WorkingDayModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkingDayModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingDayModel&&(identical(other.dayid, dayid) || other.dayid == dayid)&&(identical(other.day, day) || other.day == day)&&(identical(other.workstart, workstart) || other.workstart == workstart)&&(identical(other.workend, workend) || other.workend == workend)&&(identical(other.reststart, reststart) || other.reststart == reststart)&&(identical(other.restend, restend) || other.restend == restend)&&(identical(other.otstart, otstart) || other.otstart == otstart)&&(identical(other.late1start, late1start) || other.late1start == late1start)&&(identical(other.late2start, late2start) || other.late2start == late2start)&&(identical(other.late3start, late3start) || other.late3start == late3start)&&(identical(other.absstart, absstart) || other.absstart == absstart)&&(identical(other.halfdaystart, halfdaystart) || other.halfdaystart == halfdaystart)&&(identical(other.workingday, workingday) || other.workingday == workingday)&&(identical(other.offday, offday) || other.offday == offday)&&(identical(other.incresthr, incresthr) || other.incresthr == incresthr)&&(identical(other.halfday, halfday) || other.halfday == halfday)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dayid,day,workstart,workend,reststart,restend,otstart,late1start,late2start,late3start,absstart,halfdaystart,workingday,offday,incresthr,halfday,id);

@override
String toString() {
  return 'WorkingDayModel(dayid: $dayid, day: $day, workstart: $workstart, workend: $workend, reststart: $reststart, restend: $restend, otstart: $otstart, late1start: $late1start, late2start: $late2start, late3start: $late3start, absstart: $absstart, halfdaystart: $halfdaystart, workingday: $workingday, offday: $offday, incresthr: $incresthr, halfday: $halfday, id: $id)';
}


}

/// @nodoc
abstract mixin class _$WorkingDayModelCopyWith<$Res> implements $WorkingDayModelCopyWith<$Res> {
  factory _$WorkingDayModelCopyWith(_WorkingDayModel value, $Res Function(_WorkingDayModel) _then) = __$WorkingDayModelCopyWithImpl;
@override @useResult
$Res call({
 int dayid, String day, int workstart, int workend, int reststart, int restend, int otstart, int late1start, int late2start, int late3start, int absstart, int halfdaystart, bool workingday, bool offday, bool incresthr, bool halfday,@JsonKey(name: '_id') String? id
});




}
/// @nodoc
class __$WorkingDayModelCopyWithImpl<$Res>
    implements _$WorkingDayModelCopyWith<$Res> {
  __$WorkingDayModelCopyWithImpl(this._self, this._then);

  final _WorkingDayModel _self;
  final $Res Function(_WorkingDayModel) _then;

/// Create a copy of WorkingDayModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dayid = null,Object? day = null,Object? workstart = null,Object? workend = null,Object? reststart = null,Object? restend = null,Object? otstart = null,Object? late1start = null,Object? late2start = null,Object? late3start = null,Object? absstart = null,Object? halfdaystart = null,Object? workingday = null,Object? offday = null,Object? incresthr = null,Object? halfday = null,Object? id = freezed,}) {
  return _then(_WorkingDayModel(
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
as int,absstart: null == absstart ? _self.absstart : absstart // ignore: cast_nullable_to_non_nullable
as int,halfdaystart: null == halfdaystart ? _self.halfdaystart : halfdaystart // ignore: cast_nullable_to_non_nullable
as int,workingday: null == workingday ? _self.workingday : workingday // ignore: cast_nullable_to_non_nullable
as bool,offday: null == offday ? _self.offday : offday // ignore: cast_nullable_to_non_nullable
as bool,incresthr: null == incresthr ? _self.incresthr : incresthr // ignore: cast_nullable_to_non_nullable
as bool,halfday: null == halfday ? _self.halfday : halfday // ignore: cast_nullable_to_non_nullable
as bool,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
