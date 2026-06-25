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
mixin _$DepartmentAttendanceModel {

 UserDetailsModel get user; List<AttendanceModel> get clockins; AttendanceModel? get sod; AttendanceModel? get eod;
/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DepartmentAttendanceModelCopyWith<DepartmentAttendanceModel> get copyWith => _$DepartmentAttendanceModelCopyWithImpl<DepartmentAttendanceModel>(this as DepartmentAttendanceModel, _$identity);

  /// Serializes this DepartmentAttendanceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DepartmentAttendanceModel&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other.clockins, clockins)&&(identical(other.sod, sod) || other.sod == sod)&&(identical(other.eod, eod) || other.eod == eod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(clockins),sod,eod);

@override
String toString() {
  return 'DepartmentAttendanceModel(user: $user, clockins: $clockins, sod: $sod, eod: $eod)';
}


}

/// @nodoc
abstract mixin class $DepartmentAttendanceModelCopyWith<$Res>  {
  factory $DepartmentAttendanceModelCopyWith(DepartmentAttendanceModel value, $Res Function(DepartmentAttendanceModel) _then) = _$DepartmentAttendanceModelCopyWithImpl;
@useResult
$Res call({
 UserDetailsModel user, List<AttendanceModel> clockins, AttendanceModel? sod, AttendanceModel? eod
});


$UserDetailsModelCopyWith<$Res> get user;$AttendanceModelCopyWith<$Res>? get sod;$AttendanceModelCopyWith<$Res>? get eod;

}
/// @nodoc
class _$DepartmentAttendanceModelCopyWithImpl<$Res>
    implements $DepartmentAttendanceModelCopyWith<$Res> {
  _$DepartmentAttendanceModelCopyWithImpl(this._self, this._then);

  final DepartmentAttendanceModel _self;
  final $Res Function(DepartmentAttendanceModel) _then;

/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? clockins = null,Object? sod = freezed,Object? eod = freezed,}) {
  return _then(_self.copyWith(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetailsModel,clockins: null == clockins ? _self.clockins : clockins // ignore: cast_nullable_to_non_nullable
as List<AttendanceModel>,sod: freezed == sod ? _self.sod : sod // ignore: cast_nullable_to_non_nullable
as AttendanceModel?,eod: freezed == eod ? _self.eod : eod // ignore: cast_nullable_to_non_nullable
as AttendanceModel?,
  ));
}
/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<$Res> get user {
  
  return $UserDetailsModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<$Res>? get sod {
    if (_self.sod == null) {
    return null;
  }

  return $AttendanceModelCopyWith<$Res>(_self.sod!, (value) {
    return _then(_self.copyWith(sod: value));
  });
}/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<$Res>? get eod {
    if (_self.eod == null) {
    return null;
  }

  return $AttendanceModelCopyWith<$Res>(_self.eod!, (value) {
    return _then(_self.copyWith(eod: value));
  });
}
}


/// Adds pattern-matching-related methods to [DepartmentAttendanceModel].
extension DepartmentAttendanceModelPatterns on DepartmentAttendanceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DepartmentAttendanceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DepartmentAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DepartmentAttendanceModel value)  $default,){
final _that = this;
switch (_that) {
case _DepartmentAttendanceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DepartmentAttendanceModel value)?  $default,){
final _that = this;
switch (_that) {
case _DepartmentAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDetailsModel user,  List<AttendanceModel> clockins,  AttendanceModel? sod,  AttendanceModel? eod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DepartmentAttendanceModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDetailsModel user,  List<AttendanceModel> clockins,  AttendanceModel? sod,  AttendanceModel? eod)  $default,) {final _that = this;
switch (_that) {
case _DepartmentAttendanceModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDetailsModel user,  List<AttendanceModel> clockins,  AttendanceModel? sod,  AttendanceModel? eod)?  $default,) {final _that = this;
switch (_that) {
case _DepartmentAttendanceModel() when $default != null:
return $default(_that.user,_that.clockins,_that.sod,_that.eod);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DepartmentAttendanceModel implements DepartmentAttendanceModel {
  const _DepartmentAttendanceModel({required this.user, required final  List<AttendanceModel> clockins, this.sod, this.eod}): _clockins = clockins;
  factory _DepartmentAttendanceModel.fromJson(Map<String, dynamic> json) => _$DepartmentAttendanceModelFromJson(json);

@override final  UserDetailsModel user;
 final  List<AttendanceModel> _clockins;
@override List<AttendanceModel> get clockins {
  if (_clockins is EqualUnmodifiableListView) return _clockins;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clockins);
}

@override final  AttendanceModel? sod;
@override final  AttendanceModel? eod;

/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DepartmentAttendanceModelCopyWith<_DepartmentAttendanceModel> get copyWith => __$DepartmentAttendanceModelCopyWithImpl<_DepartmentAttendanceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DepartmentAttendanceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DepartmentAttendanceModel&&(identical(other.user, user) || other.user == user)&&const DeepCollectionEquality().equals(other._clockins, _clockins)&&(identical(other.sod, sod) || other.sod == sod)&&(identical(other.eod, eod) || other.eod == eod));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,user,const DeepCollectionEquality().hash(_clockins),sod,eod);

@override
String toString() {
  return 'DepartmentAttendanceModel(user: $user, clockins: $clockins, sod: $sod, eod: $eod)';
}


}

/// @nodoc
abstract mixin class _$DepartmentAttendanceModelCopyWith<$Res> implements $DepartmentAttendanceModelCopyWith<$Res> {
  factory _$DepartmentAttendanceModelCopyWith(_DepartmentAttendanceModel value, $Res Function(_DepartmentAttendanceModel) _then) = __$DepartmentAttendanceModelCopyWithImpl;
@override @useResult
$Res call({
 UserDetailsModel user, List<AttendanceModel> clockins, AttendanceModel? sod, AttendanceModel? eod
});


@override $UserDetailsModelCopyWith<$Res> get user;@override $AttendanceModelCopyWith<$Res>? get sod;@override $AttendanceModelCopyWith<$Res>? get eod;

}
/// @nodoc
class __$DepartmentAttendanceModelCopyWithImpl<$Res>
    implements _$DepartmentAttendanceModelCopyWith<$Res> {
  __$DepartmentAttendanceModelCopyWithImpl(this._self, this._then);

  final _DepartmentAttendanceModel _self;
  final $Res Function(_DepartmentAttendanceModel) _then;

/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? clockins = null,Object? sod = freezed,Object? eod = freezed,}) {
  return _then(_DepartmentAttendanceModel(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetailsModel,clockins: null == clockins ? _self._clockins : clockins // ignore: cast_nullable_to_non_nullable
as List<AttendanceModel>,sod: freezed == sod ? _self.sod : sod // ignore: cast_nullable_to_non_nullable
as AttendanceModel?,eod: freezed == eod ? _self.eod : eod // ignore: cast_nullable_to_non_nullable
as AttendanceModel?,
  ));
}

/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsModelCopyWith<$Res> get user {
  
  return $UserDetailsModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<$Res>? get sod {
    if (_self.sod == null) {
    return null;
  }

  return $AttendanceModelCopyWith<$Res>(_self.sod!, (value) {
    return _then(_self.copyWith(sod: value));
  });
}/// Create a copy of DepartmentAttendanceModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AttendanceModelCopyWith<$Res>? get eod {
    if (_self.eod == null) {
    return null;
  }

  return $AttendanceModelCopyWith<$Res>(_self.eod!, (value) {
    return _then(_self.copyWith(eod: value));
  });
}
}

// dart format on
