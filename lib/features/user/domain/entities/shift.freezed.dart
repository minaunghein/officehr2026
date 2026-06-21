// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shift.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Shift {

 String get id; String get companyId; String get shiftId; String get late1Symbol; String get late2Symbol; String get late3Symbol; String get absenceSymbol; String get halfDaySymbol; String? get description; String get unpaidSymbol; int get intervalMinutes; bool get isNightShift; bool get isDefault; bool get otStartBase; List<WorkingDay> get workingDays; List<String> get tags; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShiftCopyWith<Shift> get copyWith => _$ShiftCopyWithImpl<Shift>(this as Shift, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.late1Symbol, late1Symbol) || other.late1Symbol == late1Symbol)&&(identical(other.late2Symbol, late2Symbol) || other.late2Symbol == late2Symbol)&&(identical(other.late3Symbol, late3Symbol) || other.late3Symbol == late3Symbol)&&(identical(other.absenceSymbol, absenceSymbol) || other.absenceSymbol == absenceSymbol)&&(identical(other.halfDaySymbol, halfDaySymbol) || other.halfDaySymbol == halfDaySymbol)&&(identical(other.description, description) || other.description == description)&&(identical(other.unpaidSymbol, unpaidSymbol) || other.unpaidSymbol == unpaidSymbol)&&(identical(other.intervalMinutes, intervalMinutes) || other.intervalMinutes == intervalMinutes)&&(identical(other.isNightShift, isNightShift) || other.isNightShift == isNightShift)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.otStartBase, otStartBase) || other.otStartBase == otStartBase)&&const DeepCollectionEquality().equals(other.workingDays, workingDays)&&const DeepCollectionEquality().equals(other.tags, tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,shiftId,late1Symbol,late2Symbol,late3Symbol,absenceSymbol,halfDaySymbol,description,unpaidSymbol,intervalMinutes,isNightShift,isDefault,otStartBase,const DeepCollectionEquality().hash(workingDays),const DeepCollectionEquality().hash(tags),createdAt,updatedAt);

@override
String toString() {
  return 'Shift(id: $id, companyId: $companyId, shiftId: $shiftId, late1Symbol: $late1Symbol, late2Symbol: $late2Symbol, late3Symbol: $late3Symbol, absenceSymbol: $absenceSymbol, halfDaySymbol: $halfDaySymbol, description: $description, unpaidSymbol: $unpaidSymbol, intervalMinutes: $intervalMinutes, isNightShift: $isNightShift, isDefault: $isDefault, otStartBase: $otStartBase, workingDays: $workingDays, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ShiftCopyWith<$Res>  {
  factory $ShiftCopyWith(Shift value, $Res Function(Shift) _then) = _$ShiftCopyWithImpl;
@useResult
$Res call({
 String id, String companyId, String shiftId, String late1Symbol, String late2Symbol, String late3Symbol, String absenceSymbol, String halfDaySymbol, String? description, String unpaidSymbol, int intervalMinutes, bool isNightShift, bool isDefault, bool otStartBase, List<WorkingDay> workingDays, List<String> tags, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ShiftCopyWithImpl<$Res>
    implements $ShiftCopyWith<$Res> {
  _$ShiftCopyWithImpl(this._self, this._then);

  final Shift _self;
  final $Res Function(Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? companyId = null,Object? shiftId = null,Object? late1Symbol = null,Object? late2Symbol = null,Object? late3Symbol = null,Object? absenceSymbol = null,Object? halfDaySymbol = null,Object? description = freezed,Object? unpaidSymbol = null,Object? intervalMinutes = null,Object? isNightShift = null,Object? isDefault = null,Object? otStartBase = null,Object? workingDays = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,late1Symbol: null == late1Symbol ? _self.late1Symbol : late1Symbol // ignore: cast_nullable_to_non_nullable
as String,late2Symbol: null == late2Symbol ? _self.late2Symbol : late2Symbol // ignore: cast_nullable_to_non_nullable
as String,late3Symbol: null == late3Symbol ? _self.late3Symbol : late3Symbol // ignore: cast_nullable_to_non_nullable
as String,absenceSymbol: null == absenceSymbol ? _self.absenceSymbol : absenceSymbol // ignore: cast_nullable_to_non_nullable
as String,halfDaySymbol: null == halfDaySymbol ? _self.halfDaySymbol : halfDaySymbol // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,unpaidSymbol: null == unpaidSymbol ? _self.unpaidSymbol : unpaidSymbol // ignore: cast_nullable_to_non_nullable
as String,intervalMinutes: null == intervalMinutes ? _self.intervalMinutes : intervalMinutes // ignore: cast_nullable_to_non_nullable
as int,isNightShift: null == isNightShift ? _self.isNightShift : isNightShift // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,otStartBase: null == otStartBase ? _self.otStartBase : otStartBase // ignore: cast_nullable_to_non_nullable
as bool,workingDays: null == workingDays ? _self.workingDays : workingDays // ignore: cast_nullable_to_non_nullable
as List<WorkingDay>,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Shift].
extension ShiftPatterns on Shift {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Shift value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Shift value)  $default,){
final _that = this;
switch (_that) {
case _Shift():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Shift value)?  $default,){
final _that = this;
switch (_that) {
case _Shift() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String companyId,  String shiftId,  String late1Symbol,  String late2Symbol,  String late3Symbol,  String absenceSymbol,  String halfDaySymbol,  String? description,  String unpaidSymbol,  int intervalMinutes,  bool isNightShift,  bool isDefault,  bool otStartBase,  List<WorkingDay> workingDays,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.companyId,_that.shiftId,_that.late1Symbol,_that.late2Symbol,_that.late3Symbol,_that.absenceSymbol,_that.halfDaySymbol,_that.description,_that.unpaidSymbol,_that.intervalMinutes,_that.isNightShift,_that.isDefault,_that.otStartBase,_that.workingDays,_that.tags,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String companyId,  String shiftId,  String late1Symbol,  String late2Symbol,  String late3Symbol,  String absenceSymbol,  String halfDaySymbol,  String? description,  String unpaidSymbol,  int intervalMinutes,  bool isNightShift,  bool isDefault,  bool otStartBase,  List<WorkingDay> workingDays,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _Shift():
return $default(_that.id,_that.companyId,_that.shiftId,_that.late1Symbol,_that.late2Symbol,_that.late3Symbol,_that.absenceSymbol,_that.halfDaySymbol,_that.description,_that.unpaidSymbol,_that.intervalMinutes,_that.isNightShift,_that.isDefault,_that.otStartBase,_that.workingDays,_that.tags,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String companyId,  String shiftId,  String late1Symbol,  String late2Symbol,  String late3Symbol,  String absenceSymbol,  String halfDaySymbol,  String? description,  String unpaidSymbol,  int intervalMinutes,  bool isNightShift,  bool isDefault,  bool otStartBase,  List<WorkingDay> workingDays,  List<String> tags,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _Shift() when $default != null:
return $default(_that.id,_that.companyId,_that.shiftId,_that.late1Symbol,_that.late2Symbol,_that.late3Symbol,_that.absenceSymbol,_that.halfDaySymbol,_that.description,_that.unpaidSymbol,_that.intervalMinutes,_that.isNightShift,_that.isDefault,_that.otStartBase,_that.workingDays,_that.tags,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Shift implements Shift {
  const _Shift({required this.id, required this.companyId, required this.shiftId, required this.late1Symbol, required this.late2Symbol, required this.late3Symbol, required this.absenceSymbol, required this.halfDaySymbol, this.description, required this.unpaidSymbol, required this.intervalMinutes, required this.isNightShift, required this.isDefault, required this.otStartBase, required final  List<WorkingDay> workingDays, required final  List<String> tags, this.createdAt, this.updatedAt}): _workingDays = workingDays,_tags = tags;
  

@override final  String id;
@override final  String companyId;
@override final  String shiftId;
@override final  String late1Symbol;
@override final  String late2Symbol;
@override final  String late3Symbol;
@override final  String absenceSymbol;
@override final  String halfDaySymbol;
@override final  String? description;
@override final  String unpaidSymbol;
@override final  int intervalMinutes;
@override final  bool isNightShift;
@override final  bool isDefault;
@override final  bool otStartBase;
 final  List<WorkingDay> _workingDays;
@override List<WorkingDay> get workingDays {
  if (_workingDays is EqualUnmodifiableListView) return _workingDays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_workingDays);
}

 final  List<String> _tags;
@override List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShiftCopyWith<_Shift> get copyWith => __$ShiftCopyWithImpl<_Shift>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Shift&&(identical(other.id, id) || other.id == id)&&(identical(other.companyId, companyId) || other.companyId == companyId)&&(identical(other.shiftId, shiftId) || other.shiftId == shiftId)&&(identical(other.late1Symbol, late1Symbol) || other.late1Symbol == late1Symbol)&&(identical(other.late2Symbol, late2Symbol) || other.late2Symbol == late2Symbol)&&(identical(other.late3Symbol, late3Symbol) || other.late3Symbol == late3Symbol)&&(identical(other.absenceSymbol, absenceSymbol) || other.absenceSymbol == absenceSymbol)&&(identical(other.halfDaySymbol, halfDaySymbol) || other.halfDaySymbol == halfDaySymbol)&&(identical(other.description, description) || other.description == description)&&(identical(other.unpaidSymbol, unpaidSymbol) || other.unpaidSymbol == unpaidSymbol)&&(identical(other.intervalMinutes, intervalMinutes) || other.intervalMinutes == intervalMinutes)&&(identical(other.isNightShift, isNightShift) || other.isNightShift == isNightShift)&&(identical(other.isDefault, isDefault) || other.isDefault == isDefault)&&(identical(other.otStartBase, otStartBase) || other.otStartBase == otStartBase)&&const DeepCollectionEquality().equals(other._workingDays, _workingDays)&&const DeepCollectionEquality().equals(other._tags, _tags)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,companyId,shiftId,late1Symbol,late2Symbol,late3Symbol,absenceSymbol,halfDaySymbol,description,unpaidSymbol,intervalMinutes,isNightShift,isDefault,otStartBase,const DeepCollectionEquality().hash(_workingDays),const DeepCollectionEquality().hash(_tags),createdAt,updatedAt);

@override
String toString() {
  return 'Shift(id: $id, companyId: $companyId, shiftId: $shiftId, late1Symbol: $late1Symbol, late2Symbol: $late2Symbol, late3Symbol: $late3Symbol, absenceSymbol: $absenceSymbol, halfDaySymbol: $halfDaySymbol, description: $description, unpaidSymbol: $unpaidSymbol, intervalMinutes: $intervalMinutes, isNightShift: $isNightShift, isDefault: $isDefault, otStartBase: $otStartBase, workingDays: $workingDays, tags: $tags, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ShiftCopyWith<$Res> implements $ShiftCopyWith<$Res> {
  factory _$ShiftCopyWith(_Shift value, $Res Function(_Shift) _then) = __$ShiftCopyWithImpl;
@override @useResult
$Res call({
 String id, String companyId, String shiftId, String late1Symbol, String late2Symbol, String late3Symbol, String absenceSymbol, String halfDaySymbol, String? description, String unpaidSymbol, int intervalMinutes, bool isNightShift, bool isDefault, bool otStartBase, List<WorkingDay> workingDays, List<String> tags, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ShiftCopyWithImpl<$Res>
    implements _$ShiftCopyWith<$Res> {
  __$ShiftCopyWithImpl(this._self, this._then);

  final _Shift _self;
  final $Res Function(_Shift) _then;

/// Create a copy of Shift
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? companyId = null,Object? shiftId = null,Object? late1Symbol = null,Object? late2Symbol = null,Object? late3Symbol = null,Object? absenceSymbol = null,Object? halfDaySymbol = null,Object? description = freezed,Object? unpaidSymbol = null,Object? intervalMinutes = null,Object? isNightShift = null,Object? isDefault = null,Object? otStartBase = null,Object? workingDays = null,Object? tags = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_Shift(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,companyId: null == companyId ? _self.companyId : companyId // ignore: cast_nullable_to_non_nullable
as String,shiftId: null == shiftId ? _self.shiftId : shiftId // ignore: cast_nullable_to_non_nullable
as String,late1Symbol: null == late1Symbol ? _self.late1Symbol : late1Symbol // ignore: cast_nullable_to_non_nullable
as String,late2Symbol: null == late2Symbol ? _self.late2Symbol : late2Symbol // ignore: cast_nullable_to_non_nullable
as String,late3Symbol: null == late3Symbol ? _self.late3Symbol : late3Symbol // ignore: cast_nullable_to_non_nullable
as String,absenceSymbol: null == absenceSymbol ? _self.absenceSymbol : absenceSymbol // ignore: cast_nullable_to_non_nullable
as String,halfDaySymbol: null == halfDaySymbol ? _self.halfDaySymbol : halfDaySymbol // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,unpaidSymbol: null == unpaidSymbol ? _self.unpaidSymbol : unpaidSymbol // ignore: cast_nullable_to_non_nullable
as String,intervalMinutes: null == intervalMinutes ? _self.intervalMinutes : intervalMinutes // ignore: cast_nullable_to_non_nullable
as int,isNightShift: null == isNightShift ? _self.isNightShift : isNightShift // ignore: cast_nullable_to_non_nullable
as bool,isDefault: null == isDefault ? _self.isDefault : isDefault // ignore: cast_nullable_to_non_nullable
as bool,otStartBase: null == otStartBase ? _self.otStartBase : otStartBase // ignore: cast_nullable_to_non_nullable
as bool,workingDays: null == workingDays ? _self._workingDays : workingDays // ignore: cast_nullable_to_non_nullable
as List<WorkingDay>,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
