// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'work_experience_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WorkExperienceModel {

 String get company; String get position;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'end_date') String? get endDate; String get description;
/// Create a copy of WorkExperienceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkExperienceModelCopyWith<WorkExperienceModel> get copyWith => _$WorkExperienceModelCopyWithImpl<WorkExperienceModel>(this as WorkExperienceModel, _$identity);

  /// Serializes this WorkExperienceModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkExperienceModel&&(identical(other.company, company) || other.company == company)&&(identical(other.position, position) || other.position == position)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,position,startDate,endDate,description);

@override
String toString() {
  return 'WorkExperienceModel(company: $company, position: $position, startDate: $startDate, endDate: $endDate, description: $description)';
}


}

/// @nodoc
abstract mixin class $WorkExperienceModelCopyWith<$Res>  {
  factory $WorkExperienceModelCopyWith(WorkExperienceModel value, $Res Function(WorkExperienceModel) _then) = _$WorkExperienceModelCopyWithImpl;
@useResult
$Res call({
 String company, String position,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate, String description
});




}
/// @nodoc
class _$WorkExperienceModelCopyWithImpl<$Res>
    implements $WorkExperienceModelCopyWith<$Res> {
  _$WorkExperienceModelCopyWithImpl(this._self, this._then);

  final WorkExperienceModel _self;
  final $Res Function(WorkExperienceModel) _then;

/// Create a copy of WorkExperienceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = null,Object? position = null,Object? startDate = freezed,Object? endDate = freezed,Object? description = null,}) {
  return _then(_self.copyWith(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkExperienceModel].
extension WorkExperienceModelPatterns on WorkExperienceModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkExperienceModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkExperienceModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkExperienceModel value)  $default,){
final _that = this;
switch (_that) {
case _WorkExperienceModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkExperienceModel value)?  $default,){
final _that = this;
switch (_that) {
case _WorkExperienceModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String company,  String position, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkExperienceModel() when $default != null:
return $default(_that.company,_that.position,_that.startDate,_that.endDate,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String company,  String position, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate,  String description)  $default,) {final _that = this;
switch (_that) {
case _WorkExperienceModel():
return $default(_that.company,_that.position,_that.startDate,_that.endDate,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String company,  String position, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'end_date')  String? endDate,  String description)?  $default,) {final _that = this;
switch (_that) {
case _WorkExperienceModel() when $default != null:
return $default(_that.company,_that.position,_that.startDate,_that.endDate,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkExperienceModel extends WorkExperienceModel {
  const _WorkExperienceModel({this.company = '', this.position = '', @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'end_date') this.endDate, this.description = ''}): super._();
  factory _WorkExperienceModel.fromJson(Map<String, dynamic> json) => _$WorkExperienceModelFromJson(json);

@override@JsonKey() final  String company;
@override@JsonKey() final  String position;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'end_date') final  String? endDate;
@override@JsonKey() final  String description;

/// Create a copy of WorkExperienceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkExperienceModelCopyWith<_WorkExperienceModel> get copyWith => __$WorkExperienceModelCopyWithImpl<_WorkExperienceModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkExperienceModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkExperienceModel&&(identical(other.company, company) || other.company == company)&&(identical(other.position, position) || other.position == position)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,company,position,startDate,endDate,description);

@override
String toString() {
  return 'WorkExperienceModel(company: $company, position: $position, startDate: $startDate, endDate: $endDate, description: $description)';
}


}

/// @nodoc
abstract mixin class _$WorkExperienceModelCopyWith<$Res> implements $WorkExperienceModelCopyWith<$Res> {
  factory _$WorkExperienceModelCopyWith(_WorkExperienceModel value, $Res Function(_WorkExperienceModel) _then) = __$WorkExperienceModelCopyWithImpl;
@override @useResult
$Res call({
 String company, String position,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'end_date') String? endDate, String description
});




}
/// @nodoc
class __$WorkExperienceModelCopyWithImpl<$Res>
    implements _$WorkExperienceModelCopyWith<$Res> {
  __$WorkExperienceModelCopyWithImpl(this._self, this._then);

  final _WorkExperienceModel _self;
  final $Res Function(_WorkExperienceModel) _then;

/// Create a copy of WorkExperienceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = null,Object? position = null,Object? startDate = freezed,Object? endDate = freezed,Object? description = null,}) {
  return _then(_WorkExperienceModel(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
