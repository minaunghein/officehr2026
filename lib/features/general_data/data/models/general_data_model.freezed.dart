// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeneralDataModel {

 CompanyInfoModel get company; List<LocalizedOptionModel> get gender;@JsonKey(name: 'maritalStatus') List<LocalizedOptionModel> get maritalStatus; List<LocalizedOptionModel> get weightunit; List<LocalizedOptionModel> get height;@JsonKey(name: 'bloodType') List<LocalizedOptionModel> get bloodType; List<LocalizedOptionModel> get color; List<LocalizedOptionModel> get nationality;@JsonKey(name: 'educationType') List<LocalizedOptionModel> get educationType; List<LocalizedOptionModel> get nrccoderegions; List<LocalizedOptionModel> get religion; List<LocalizedOptionModel> get ethnic; List<LocalizedOptionModel> get day;@JsonKey(name: 'nrcTypes') List<String> get nrcTypes;@JsonKey(name: 'nrcRegion') List<NrcRegionModel> get nrcRegion; List<DefaultWorkingDayModel> get defaultworkingdays; List<dynamic> get nightshiftworkingdays; List<LocalizedOptionModel> get empstatus; List<LocalizedOptionModel> get country; List<LocalizedOptionModel> get city; List<LocalizedOptionModel> get state; List<LocalizedOptionModel> get township; List<SimpleOptionModel> get currencyunit; List<SimpleOptionModel> get benefitmode; List<SimpleOptionModel> get attendancemode; List<SimpleOptionModel> get inboxcategory; List<SimpleOptionModel> get status; List<SimpleOptionModel> get ottype; List<SimpleOptionModel> get actions;
/// Create a copy of GeneralDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralDataModelCopyWith<GeneralDataModel> get copyWith => _$GeneralDataModelCopyWithImpl<GeneralDataModel>(this as GeneralDataModel, _$identity);

  /// Serializes this GeneralDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralDataModel&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other.gender, gender)&&const DeepCollectionEquality().equals(other.maritalStatus, maritalStatus)&&const DeepCollectionEquality().equals(other.weightunit, weightunit)&&const DeepCollectionEquality().equals(other.height, height)&&const DeepCollectionEquality().equals(other.bloodType, bloodType)&&const DeepCollectionEquality().equals(other.color, color)&&const DeepCollectionEquality().equals(other.nationality, nationality)&&const DeepCollectionEquality().equals(other.educationType, educationType)&&const DeepCollectionEquality().equals(other.nrccoderegions, nrccoderegions)&&const DeepCollectionEquality().equals(other.religion, religion)&&const DeepCollectionEquality().equals(other.ethnic, ethnic)&&const DeepCollectionEquality().equals(other.day, day)&&const DeepCollectionEquality().equals(other.nrcTypes, nrcTypes)&&const DeepCollectionEquality().equals(other.nrcRegion, nrcRegion)&&const DeepCollectionEquality().equals(other.defaultworkingdays, defaultworkingdays)&&const DeepCollectionEquality().equals(other.nightshiftworkingdays, nightshiftworkingdays)&&const DeepCollectionEquality().equals(other.empstatus, empstatus)&&const DeepCollectionEquality().equals(other.country, country)&&const DeepCollectionEquality().equals(other.city, city)&&const DeepCollectionEquality().equals(other.state, state)&&const DeepCollectionEquality().equals(other.township, township)&&const DeepCollectionEquality().equals(other.currencyunit, currencyunit)&&const DeepCollectionEquality().equals(other.benefitmode, benefitmode)&&const DeepCollectionEquality().equals(other.attendancemode, attendancemode)&&const DeepCollectionEquality().equals(other.inboxcategory, inboxcategory)&&const DeepCollectionEquality().equals(other.status, status)&&const DeepCollectionEquality().equals(other.ottype, ottype)&&const DeepCollectionEquality().equals(other.actions, actions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,company,const DeepCollectionEquality().hash(gender),const DeepCollectionEquality().hash(maritalStatus),const DeepCollectionEquality().hash(weightunit),const DeepCollectionEquality().hash(height),const DeepCollectionEquality().hash(bloodType),const DeepCollectionEquality().hash(color),const DeepCollectionEquality().hash(nationality),const DeepCollectionEquality().hash(educationType),const DeepCollectionEquality().hash(nrccoderegions),const DeepCollectionEquality().hash(religion),const DeepCollectionEquality().hash(ethnic),const DeepCollectionEquality().hash(day),const DeepCollectionEquality().hash(nrcTypes),const DeepCollectionEquality().hash(nrcRegion),const DeepCollectionEquality().hash(defaultworkingdays),const DeepCollectionEquality().hash(nightshiftworkingdays),const DeepCollectionEquality().hash(empstatus),const DeepCollectionEquality().hash(country),const DeepCollectionEquality().hash(city),const DeepCollectionEquality().hash(state),const DeepCollectionEquality().hash(township),const DeepCollectionEquality().hash(currencyunit),const DeepCollectionEquality().hash(benefitmode),const DeepCollectionEquality().hash(attendancemode),const DeepCollectionEquality().hash(inboxcategory),const DeepCollectionEquality().hash(status),const DeepCollectionEquality().hash(ottype),const DeepCollectionEquality().hash(actions)]);

@override
String toString() {
  return 'GeneralDataModel(company: $company, gender: $gender, maritalStatus: $maritalStatus, weightunit: $weightunit, height: $height, bloodType: $bloodType, color: $color, nationality: $nationality, educationType: $educationType, nrccoderegions: $nrccoderegions, religion: $religion, ethnic: $ethnic, day: $day, nrcTypes: $nrcTypes, nrcRegion: $nrcRegion, defaultworkingdays: $defaultworkingdays, nightshiftworkingdays: $nightshiftworkingdays, empstatus: $empstatus, country: $country, city: $city, state: $state, township: $township, currencyunit: $currencyunit, benefitmode: $benefitmode, attendancemode: $attendancemode, inboxcategory: $inboxcategory, status: $status, ottype: $ottype, actions: $actions)';
}


}

/// @nodoc
abstract mixin class $GeneralDataModelCopyWith<$Res>  {
  factory $GeneralDataModelCopyWith(GeneralDataModel value, $Res Function(GeneralDataModel) _then) = _$GeneralDataModelCopyWithImpl;
@useResult
$Res call({
 CompanyInfoModel company, List<LocalizedOptionModel> gender,@JsonKey(name: 'maritalStatus') List<LocalizedOptionModel> maritalStatus, List<LocalizedOptionModel> weightunit, List<LocalizedOptionModel> height,@JsonKey(name: 'bloodType') List<LocalizedOptionModel> bloodType, List<LocalizedOptionModel> color, List<LocalizedOptionModel> nationality,@JsonKey(name: 'educationType') List<LocalizedOptionModel> educationType, List<LocalizedOptionModel> nrccoderegions, List<LocalizedOptionModel> religion, List<LocalizedOptionModel> ethnic, List<LocalizedOptionModel> day,@JsonKey(name: 'nrcTypes') List<String> nrcTypes,@JsonKey(name: 'nrcRegion') List<NrcRegionModel> nrcRegion, List<DefaultWorkingDayModel> defaultworkingdays, List<dynamic> nightshiftworkingdays, List<LocalizedOptionModel> empstatus, List<LocalizedOptionModel> country, List<LocalizedOptionModel> city, List<LocalizedOptionModel> state, List<LocalizedOptionModel> township, List<SimpleOptionModel> currencyunit, List<SimpleOptionModel> benefitmode, List<SimpleOptionModel> attendancemode, List<SimpleOptionModel> inboxcategory, List<SimpleOptionModel> status, List<SimpleOptionModel> ottype, List<SimpleOptionModel> actions
});


$CompanyInfoModelCopyWith<$Res> get company;

}
/// @nodoc
class _$GeneralDataModelCopyWithImpl<$Res>
    implements $GeneralDataModelCopyWith<$Res> {
  _$GeneralDataModelCopyWithImpl(this._self, this._then);

  final GeneralDataModel _self;
  final $Res Function(GeneralDataModel) _then;

/// Create a copy of GeneralDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? company = null,Object? gender = null,Object? maritalStatus = null,Object? weightunit = null,Object? height = null,Object? bloodType = null,Object? color = null,Object? nationality = null,Object? educationType = null,Object? nrccoderegions = null,Object? religion = null,Object? ethnic = null,Object? day = null,Object? nrcTypes = null,Object? nrcRegion = null,Object? defaultworkingdays = null,Object? nightshiftworkingdays = null,Object? empstatus = null,Object? country = null,Object? city = null,Object? state = null,Object? township = null,Object? currencyunit = null,Object? benefitmode = null,Object? attendancemode = null,Object? inboxcategory = null,Object? status = null,Object? ottype = null,Object? actions = null,}) {
  return _then(_self.copyWith(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyInfoModel,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,maritalStatus: null == maritalStatus ? _self.maritalStatus : maritalStatus // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,weightunit: null == weightunit ? _self.weightunit : weightunit // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,bloodType: null == bloodType ? _self.bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,nationality: null == nationality ? _self.nationality : nationality // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,educationType: null == educationType ? _self.educationType : educationType // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,nrccoderegions: null == nrccoderegions ? _self.nrccoderegions : nrccoderegions // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,religion: null == religion ? _self.religion : religion // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,ethnic: null == ethnic ? _self.ethnic : ethnic // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,nrcTypes: null == nrcTypes ? _self.nrcTypes : nrcTypes // ignore: cast_nullable_to_non_nullable
as List<String>,nrcRegion: null == nrcRegion ? _self.nrcRegion : nrcRegion // ignore: cast_nullable_to_non_nullable
as List<NrcRegionModel>,defaultworkingdays: null == defaultworkingdays ? _self.defaultworkingdays : defaultworkingdays // ignore: cast_nullable_to_non_nullable
as List<DefaultWorkingDayModel>,nightshiftworkingdays: null == nightshiftworkingdays ? _self.nightshiftworkingdays : nightshiftworkingdays // ignore: cast_nullable_to_non_nullable
as List<dynamic>,empstatus: null == empstatus ? _self.empstatus : empstatus // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,township: null == township ? _self.township : township // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,currencyunit: null == currencyunit ? _self.currencyunit : currencyunit // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,benefitmode: null == benefitmode ? _self.benefitmode : benefitmode // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,attendancemode: null == attendancemode ? _self.attendancemode : attendancemode // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,inboxcategory: null == inboxcategory ? _self.inboxcategory : inboxcategory // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,ottype: null == ottype ? _self.ottype : ottype // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,actions: null == actions ? _self.actions : actions // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,
  ));
}
/// Create a copy of GeneralDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyInfoModelCopyWith<$Res> get company {
  
  return $CompanyInfoModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeneralDataModel].
extension GeneralDataModelPatterns on GeneralDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralDataModel value)  $default,){
final _that = this;
switch (_that) {
case _GeneralDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CompanyInfoModel company,  List<LocalizedOptionModel> gender, @JsonKey(name: 'maritalStatus')  List<LocalizedOptionModel> maritalStatus,  List<LocalizedOptionModel> weightunit,  List<LocalizedOptionModel> height, @JsonKey(name: 'bloodType')  List<LocalizedOptionModel> bloodType,  List<LocalizedOptionModel> color,  List<LocalizedOptionModel> nationality, @JsonKey(name: 'educationType')  List<LocalizedOptionModel> educationType,  List<LocalizedOptionModel> nrccoderegions,  List<LocalizedOptionModel> religion,  List<LocalizedOptionModel> ethnic,  List<LocalizedOptionModel> day, @JsonKey(name: 'nrcTypes')  List<String> nrcTypes, @JsonKey(name: 'nrcRegion')  List<NrcRegionModel> nrcRegion,  List<DefaultWorkingDayModel> defaultworkingdays,  List<dynamic> nightshiftworkingdays,  List<LocalizedOptionModel> empstatus,  List<LocalizedOptionModel> country,  List<LocalizedOptionModel> city,  List<LocalizedOptionModel> state,  List<LocalizedOptionModel> township,  List<SimpleOptionModel> currencyunit,  List<SimpleOptionModel> benefitmode,  List<SimpleOptionModel> attendancemode,  List<SimpleOptionModel> inboxcategory,  List<SimpleOptionModel> status,  List<SimpleOptionModel> ottype,  List<SimpleOptionModel> actions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralDataModel() when $default != null:
return $default(_that.company,_that.gender,_that.maritalStatus,_that.weightunit,_that.height,_that.bloodType,_that.color,_that.nationality,_that.educationType,_that.nrccoderegions,_that.religion,_that.ethnic,_that.day,_that.nrcTypes,_that.nrcRegion,_that.defaultworkingdays,_that.nightshiftworkingdays,_that.empstatus,_that.country,_that.city,_that.state,_that.township,_that.currencyunit,_that.benefitmode,_that.attendancemode,_that.inboxcategory,_that.status,_that.ottype,_that.actions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CompanyInfoModel company,  List<LocalizedOptionModel> gender, @JsonKey(name: 'maritalStatus')  List<LocalizedOptionModel> maritalStatus,  List<LocalizedOptionModel> weightunit,  List<LocalizedOptionModel> height, @JsonKey(name: 'bloodType')  List<LocalizedOptionModel> bloodType,  List<LocalizedOptionModel> color,  List<LocalizedOptionModel> nationality, @JsonKey(name: 'educationType')  List<LocalizedOptionModel> educationType,  List<LocalizedOptionModel> nrccoderegions,  List<LocalizedOptionModel> religion,  List<LocalizedOptionModel> ethnic,  List<LocalizedOptionModel> day, @JsonKey(name: 'nrcTypes')  List<String> nrcTypes, @JsonKey(name: 'nrcRegion')  List<NrcRegionModel> nrcRegion,  List<DefaultWorkingDayModel> defaultworkingdays,  List<dynamic> nightshiftworkingdays,  List<LocalizedOptionModel> empstatus,  List<LocalizedOptionModel> country,  List<LocalizedOptionModel> city,  List<LocalizedOptionModel> state,  List<LocalizedOptionModel> township,  List<SimpleOptionModel> currencyunit,  List<SimpleOptionModel> benefitmode,  List<SimpleOptionModel> attendancemode,  List<SimpleOptionModel> inboxcategory,  List<SimpleOptionModel> status,  List<SimpleOptionModel> ottype,  List<SimpleOptionModel> actions)  $default,) {final _that = this;
switch (_that) {
case _GeneralDataModel():
return $default(_that.company,_that.gender,_that.maritalStatus,_that.weightunit,_that.height,_that.bloodType,_that.color,_that.nationality,_that.educationType,_that.nrccoderegions,_that.religion,_that.ethnic,_that.day,_that.nrcTypes,_that.nrcRegion,_that.defaultworkingdays,_that.nightshiftworkingdays,_that.empstatus,_that.country,_that.city,_that.state,_that.township,_that.currencyunit,_that.benefitmode,_that.attendancemode,_that.inboxcategory,_that.status,_that.ottype,_that.actions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CompanyInfoModel company,  List<LocalizedOptionModel> gender, @JsonKey(name: 'maritalStatus')  List<LocalizedOptionModel> maritalStatus,  List<LocalizedOptionModel> weightunit,  List<LocalizedOptionModel> height, @JsonKey(name: 'bloodType')  List<LocalizedOptionModel> bloodType,  List<LocalizedOptionModel> color,  List<LocalizedOptionModel> nationality, @JsonKey(name: 'educationType')  List<LocalizedOptionModel> educationType,  List<LocalizedOptionModel> nrccoderegions,  List<LocalizedOptionModel> religion,  List<LocalizedOptionModel> ethnic,  List<LocalizedOptionModel> day, @JsonKey(name: 'nrcTypes')  List<String> nrcTypes, @JsonKey(name: 'nrcRegion')  List<NrcRegionModel> nrcRegion,  List<DefaultWorkingDayModel> defaultworkingdays,  List<dynamic> nightshiftworkingdays,  List<LocalizedOptionModel> empstatus,  List<LocalizedOptionModel> country,  List<LocalizedOptionModel> city,  List<LocalizedOptionModel> state,  List<LocalizedOptionModel> township,  List<SimpleOptionModel> currencyunit,  List<SimpleOptionModel> benefitmode,  List<SimpleOptionModel> attendancemode,  List<SimpleOptionModel> inboxcategory,  List<SimpleOptionModel> status,  List<SimpleOptionModel> ottype,  List<SimpleOptionModel> actions)?  $default,) {final _that = this;
switch (_that) {
case _GeneralDataModel() when $default != null:
return $default(_that.company,_that.gender,_that.maritalStatus,_that.weightunit,_that.height,_that.bloodType,_that.color,_that.nationality,_that.educationType,_that.nrccoderegions,_that.religion,_that.ethnic,_that.day,_that.nrcTypes,_that.nrcRegion,_that.defaultworkingdays,_that.nightshiftworkingdays,_that.empstatus,_that.country,_that.city,_that.state,_that.township,_that.currencyunit,_that.benefitmode,_that.attendancemode,_that.inboxcategory,_that.status,_that.ottype,_that.actions);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneralDataModel implements GeneralDataModel {
  const _GeneralDataModel({required this.company, required final  List<LocalizedOptionModel> gender, @JsonKey(name: 'maritalStatus') required final  List<LocalizedOptionModel> maritalStatus, required final  List<LocalizedOptionModel> weightunit, required final  List<LocalizedOptionModel> height, @JsonKey(name: 'bloodType') required final  List<LocalizedOptionModel> bloodType, required final  List<LocalizedOptionModel> color, required final  List<LocalizedOptionModel> nationality, @JsonKey(name: 'educationType') required final  List<LocalizedOptionModel> educationType, required final  List<LocalizedOptionModel> nrccoderegions, required final  List<LocalizedOptionModel> religion, required final  List<LocalizedOptionModel> ethnic, required final  List<LocalizedOptionModel> day, @JsonKey(name: 'nrcTypes') required final  List<String> nrcTypes, @JsonKey(name: 'nrcRegion') required final  List<NrcRegionModel> nrcRegion, required final  List<DefaultWorkingDayModel> defaultworkingdays, required final  List<dynamic> nightshiftworkingdays, required final  List<LocalizedOptionModel> empstatus, required final  List<LocalizedOptionModel> country, required final  List<LocalizedOptionModel> city, required final  List<LocalizedOptionModel> state, required final  List<LocalizedOptionModel> township, required final  List<SimpleOptionModel> currencyunit, required final  List<SimpleOptionModel> benefitmode, required final  List<SimpleOptionModel> attendancemode, required final  List<SimpleOptionModel> inboxcategory, required final  List<SimpleOptionModel> status, required final  List<SimpleOptionModel> ottype, required final  List<SimpleOptionModel> actions}): _gender = gender,_maritalStatus = maritalStatus,_weightunit = weightunit,_height = height,_bloodType = bloodType,_color = color,_nationality = nationality,_educationType = educationType,_nrccoderegions = nrccoderegions,_religion = religion,_ethnic = ethnic,_day = day,_nrcTypes = nrcTypes,_nrcRegion = nrcRegion,_defaultworkingdays = defaultworkingdays,_nightshiftworkingdays = nightshiftworkingdays,_empstatus = empstatus,_country = country,_city = city,_state = state,_township = township,_currencyunit = currencyunit,_benefitmode = benefitmode,_attendancemode = attendancemode,_inboxcategory = inboxcategory,_status = status,_ottype = ottype,_actions = actions;
  factory _GeneralDataModel.fromJson(Map<String, dynamic> json) => _$GeneralDataModelFromJson(json);

@override final  CompanyInfoModel company;
 final  List<LocalizedOptionModel> _gender;
@override List<LocalizedOptionModel> get gender {
  if (_gender is EqualUnmodifiableListView) return _gender;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gender);
}

 final  List<LocalizedOptionModel> _maritalStatus;
@override@JsonKey(name: 'maritalStatus') List<LocalizedOptionModel> get maritalStatus {
  if (_maritalStatus is EqualUnmodifiableListView) return _maritalStatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_maritalStatus);
}

 final  List<LocalizedOptionModel> _weightunit;
@override List<LocalizedOptionModel> get weightunit {
  if (_weightunit is EqualUnmodifiableListView) return _weightunit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weightunit);
}

 final  List<LocalizedOptionModel> _height;
@override List<LocalizedOptionModel> get height {
  if (_height is EqualUnmodifiableListView) return _height;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_height);
}

 final  List<LocalizedOptionModel> _bloodType;
@override@JsonKey(name: 'bloodType') List<LocalizedOptionModel> get bloodType {
  if (_bloodType is EqualUnmodifiableListView) return _bloodType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bloodType);
}

 final  List<LocalizedOptionModel> _color;
@override List<LocalizedOptionModel> get color {
  if (_color is EqualUnmodifiableListView) return _color;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_color);
}

 final  List<LocalizedOptionModel> _nationality;
@override List<LocalizedOptionModel> get nationality {
  if (_nationality is EqualUnmodifiableListView) return _nationality;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nationality);
}

 final  List<LocalizedOptionModel> _educationType;
@override@JsonKey(name: 'educationType') List<LocalizedOptionModel> get educationType {
  if (_educationType is EqualUnmodifiableListView) return _educationType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_educationType);
}

 final  List<LocalizedOptionModel> _nrccoderegions;
@override List<LocalizedOptionModel> get nrccoderegions {
  if (_nrccoderegions is EqualUnmodifiableListView) return _nrccoderegions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nrccoderegions);
}

 final  List<LocalizedOptionModel> _religion;
@override List<LocalizedOptionModel> get religion {
  if (_religion is EqualUnmodifiableListView) return _religion;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_religion);
}

 final  List<LocalizedOptionModel> _ethnic;
@override List<LocalizedOptionModel> get ethnic {
  if (_ethnic is EqualUnmodifiableListView) return _ethnic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ethnic);
}

 final  List<LocalizedOptionModel> _day;
@override List<LocalizedOptionModel> get day {
  if (_day is EqualUnmodifiableListView) return _day;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_day);
}

 final  List<String> _nrcTypes;
@override@JsonKey(name: 'nrcTypes') List<String> get nrcTypes {
  if (_nrcTypes is EqualUnmodifiableListView) return _nrcTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nrcTypes);
}

 final  List<NrcRegionModel> _nrcRegion;
@override@JsonKey(name: 'nrcRegion') List<NrcRegionModel> get nrcRegion {
  if (_nrcRegion is EqualUnmodifiableListView) return _nrcRegion;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nrcRegion);
}

 final  List<DefaultWorkingDayModel> _defaultworkingdays;
@override List<DefaultWorkingDayModel> get defaultworkingdays {
  if (_defaultworkingdays is EqualUnmodifiableListView) return _defaultworkingdays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_defaultworkingdays);
}

 final  List<dynamic> _nightshiftworkingdays;
@override List<dynamic> get nightshiftworkingdays {
  if (_nightshiftworkingdays is EqualUnmodifiableListView) return _nightshiftworkingdays;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nightshiftworkingdays);
}

 final  List<LocalizedOptionModel> _empstatus;
@override List<LocalizedOptionModel> get empstatus {
  if (_empstatus is EqualUnmodifiableListView) return _empstatus;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_empstatus);
}

 final  List<LocalizedOptionModel> _country;
@override List<LocalizedOptionModel> get country {
  if (_country is EqualUnmodifiableListView) return _country;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_country);
}

 final  List<LocalizedOptionModel> _city;
@override List<LocalizedOptionModel> get city {
  if (_city is EqualUnmodifiableListView) return _city;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_city);
}

 final  List<LocalizedOptionModel> _state;
@override List<LocalizedOptionModel> get state {
  if (_state is EqualUnmodifiableListView) return _state;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_state);
}

 final  List<LocalizedOptionModel> _township;
@override List<LocalizedOptionModel> get township {
  if (_township is EqualUnmodifiableListView) return _township;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_township);
}

 final  List<SimpleOptionModel> _currencyunit;
@override List<SimpleOptionModel> get currencyunit {
  if (_currencyunit is EqualUnmodifiableListView) return _currencyunit;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_currencyunit);
}

 final  List<SimpleOptionModel> _benefitmode;
@override List<SimpleOptionModel> get benefitmode {
  if (_benefitmode is EqualUnmodifiableListView) return _benefitmode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_benefitmode);
}

 final  List<SimpleOptionModel> _attendancemode;
@override List<SimpleOptionModel> get attendancemode {
  if (_attendancemode is EqualUnmodifiableListView) return _attendancemode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attendancemode);
}

 final  List<SimpleOptionModel> _inboxcategory;
@override List<SimpleOptionModel> get inboxcategory {
  if (_inboxcategory is EqualUnmodifiableListView) return _inboxcategory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_inboxcategory);
}

 final  List<SimpleOptionModel> _status;
@override List<SimpleOptionModel> get status {
  if (_status is EqualUnmodifiableListView) return _status;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_status);
}

 final  List<SimpleOptionModel> _ottype;
@override List<SimpleOptionModel> get ottype {
  if (_ottype is EqualUnmodifiableListView) return _ottype;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ottype);
}

 final  List<SimpleOptionModel> _actions;
@override List<SimpleOptionModel> get actions {
  if (_actions is EqualUnmodifiableListView) return _actions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_actions);
}


/// Create a copy of GeneralDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralDataModelCopyWith<_GeneralDataModel> get copyWith => __$GeneralDataModelCopyWithImpl<_GeneralDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneralDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralDataModel&&(identical(other.company, company) || other.company == company)&&const DeepCollectionEquality().equals(other._gender, _gender)&&const DeepCollectionEquality().equals(other._maritalStatus, _maritalStatus)&&const DeepCollectionEquality().equals(other._weightunit, _weightunit)&&const DeepCollectionEquality().equals(other._height, _height)&&const DeepCollectionEquality().equals(other._bloodType, _bloodType)&&const DeepCollectionEquality().equals(other._color, _color)&&const DeepCollectionEquality().equals(other._nationality, _nationality)&&const DeepCollectionEquality().equals(other._educationType, _educationType)&&const DeepCollectionEquality().equals(other._nrccoderegions, _nrccoderegions)&&const DeepCollectionEquality().equals(other._religion, _religion)&&const DeepCollectionEquality().equals(other._ethnic, _ethnic)&&const DeepCollectionEquality().equals(other._day, _day)&&const DeepCollectionEquality().equals(other._nrcTypes, _nrcTypes)&&const DeepCollectionEquality().equals(other._nrcRegion, _nrcRegion)&&const DeepCollectionEquality().equals(other._defaultworkingdays, _defaultworkingdays)&&const DeepCollectionEquality().equals(other._nightshiftworkingdays, _nightshiftworkingdays)&&const DeepCollectionEquality().equals(other._empstatus, _empstatus)&&const DeepCollectionEquality().equals(other._country, _country)&&const DeepCollectionEquality().equals(other._city, _city)&&const DeepCollectionEquality().equals(other._state, _state)&&const DeepCollectionEquality().equals(other._township, _township)&&const DeepCollectionEquality().equals(other._currencyunit, _currencyunit)&&const DeepCollectionEquality().equals(other._benefitmode, _benefitmode)&&const DeepCollectionEquality().equals(other._attendancemode, _attendancemode)&&const DeepCollectionEquality().equals(other._inboxcategory, _inboxcategory)&&const DeepCollectionEquality().equals(other._status, _status)&&const DeepCollectionEquality().equals(other._ottype, _ottype)&&const DeepCollectionEquality().equals(other._actions, _actions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,company,const DeepCollectionEquality().hash(_gender),const DeepCollectionEquality().hash(_maritalStatus),const DeepCollectionEquality().hash(_weightunit),const DeepCollectionEquality().hash(_height),const DeepCollectionEquality().hash(_bloodType),const DeepCollectionEquality().hash(_color),const DeepCollectionEquality().hash(_nationality),const DeepCollectionEquality().hash(_educationType),const DeepCollectionEquality().hash(_nrccoderegions),const DeepCollectionEquality().hash(_religion),const DeepCollectionEquality().hash(_ethnic),const DeepCollectionEquality().hash(_day),const DeepCollectionEquality().hash(_nrcTypes),const DeepCollectionEquality().hash(_nrcRegion),const DeepCollectionEquality().hash(_defaultworkingdays),const DeepCollectionEquality().hash(_nightshiftworkingdays),const DeepCollectionEquality().hash(_empstatus),const DeepCollectionEquality().hash(_country),const DeepCollectionEquality().hash(_city),const DeepCollectionEquality().hash(_state),const DeepCollectionEquality().hash(_township),const DeepCollectionEquality().hash(_currencyunit),const DeepCollectionEquality().hash(_benefitmode),const DeepCollectionEquality().hash(_attendancemode),const DeepCollectionEquality().hash(_inboxcategory),const DeepCollectionEquality().hash(_status),const DeepCollectionEquality().hash(_ottype),const DeepCollectionEquality().hash(_actions)]);

@override
String toString() {
  return 'GeneralDataModel(company: $company, gender: $gender, maritalStatus: $maritalStatus, weightunit: $weightunit, height: $height, bloodType: $bloodType, color: $color, nationality: $nationality, educationType: $educationType, nrccoderegions: $nrccoderegions, religion: $religion, ethnic: $ethnic, day: $day, nrcTypes: $nrcTypes, nrcRegion: $nrcRegion, defaultworkingdays: $defaultworkingdays, nightshiftworkingdays: $nightshiftworkingdays, empstatus: $empstatus, country: $country, city: $city, state: $state, township: $township, currencyunit: $currencyunit, benefitmode: $benefitmode, attendancemode: $attendancemode, inboxcategory: $inboxcategory, status: $status, ottype: $ottype, actions: $actions)';
}


}

/// @nodoc
abstract mixin class _$GeneralDataModelCopyWith<$Res> implements $GeneralDataModelCopyWith<$Res> {
  factory _$GeneralDataModelCopyWith(_GeneralDataModel value, $Res Function(_GeneralDataModel) _then) = __$GeneralDataModelCopyWithImpl;
@override @useResult
$Res call({
 CompanyInfoModel company, List<LocalizedOptionModel> gender,@JsonKey(name: 'maritalStatus') List<LocalizedOptionModel> maritalStatus, List<LocalizedOptionModel> weightunit, List<LocalizedOptionModel> height,@JsonKey(name: 'bloodType') List<LocalizedOptionModel> bloodType, List<LocalizedOptionModel> color, List<LocalizedOptionModel> nationality,@JsonKey(name: 'educationType') List<LocalizedOptionModel> educationType, List<LocalizedOptionModel> nrccoderegions, List<LocalizedOptionModel> religion, List<LocalizedOptionModel> ethnic, List<LocalizedOptionModel> day,@JsonKey(name: 'nrcTypes') List<String> nrcTypes,@JsonKey(name: 'nrcRegion') List<NrcRegionModel> nrcRegion, List<DefaultWorkingDayModel> defaultworkingdays, List<dynamic> nightshiftworkingdays, List<LocalizedOptionModel> empstatus, List<LocalizedOptionModel> country, List<LocalizedOptionModel> city, List<LocalizedOptionModel> state, List<LocalizedOptionModel> township, List<SimpleOptionModel> currencyunit, List<SimpleOptionModel> benefitmode, List<SimpleOptionModel> attendancemode, List<SimpleOptionModel> inboxcategory, List<SimpleOptionModel> status, List<SimpleOptionModel> ottype, List<SimpleOptionModel> actions
});


@override $CompanyInfoModelCopyWith<$Res> get company;

}
/// @nodoc
class __$GeneralDataModelCopyWithImpl<$Res>
    implements _$GeneralDataModelCopyWith<$Res> {
  __$GeneralDataModelCopyWithImpl(this._self, this._then);

  final _GeneralDataModel _self;
  final $Res Function(_GeneralDataModel) _then;

/// Create a copy of GeneralDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? company = null,Object? gender = null,Object? maritalStatus = null,Object? weightunit = null,Object? height = null,Object? bloodType = null,Object? color = null,Object? nationality = null,Object? educationType = null,Object? nrccoderegions = null,Object? religion = null,Object? ethnic = null,Object? day = null,Object? nrcTypes = null,Object? nrcRegion = null,Object? defaultworkingdays = null,Object? nightshiftworkingdays = null,Object? empstatus = null,Object? country = null,Object? city = null,Object? state = null,Object? township = null,Object? currencyunit = null,Object? benefitmode = null,Object? attendancemode = null,Object? inboxcategory = null,Object? status = null,Object? ottype = null,Object? actions = null,}) {
  return _then(_GeneralDataModel(
company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as CompanyInfoModel,gender: null == gender ? _self._gender : gender // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,maritalStatus: null == maritalStatus ? _self._maritalStatus : maritalStatus // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,weightunit: null == weightunit ? _self._weightunit : weightunit // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,height: null == height ? _self._height : height // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,bloodType: null == bloodType ? _self._bloodType : bloodType // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,color: null == color ? _self._color : color // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,nationality: null == nationality ? _self._nationality : nationality // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,educationType: null == educationType ? _self._educationType : educationType // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,nrccoderegions: null == nrccoderegions ? _self._nrccoderegions : nrccoderegions // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,religion: null == religion ? _self._religion : religion // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,ethnic: null == ethnic ? _self._ethnic : ethnic // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,day: null == day ? _self._day : day // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,nrcTypes: null == nrcTypes ? _self._nrcTypes : nrcTypes // ignore: cast_nullable_to_non_nullable
as List<String>,nrcRegion: null == nrcRegion ? _self._nrcRegion : nrcRegion // ignore: cast_nullable_to_non_nullable
as List<NrcRegionModel>,defaultworkingdays: null == defaultworkingdays ? _self._defaultworkingdays : defaultworkingdays // ignore: cast_nullable_to_non_nullable
as List<DefaultWorkingDayModel>,nightshiftworkingdays: null == nightshiftworkingdays ? _self._nightshiftworkingdays : nightshiftworkingdays // ignore: cast_nullable_to_non_nullable
as List<dynamic>,empstatus: null == empstatus ? _self._empstatus : empstatus // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,country: null == country ? _self._country : country // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,city: null == city ? _self._city : city // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,state: null == state ? _self._state : state // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,township: null == township ? _self._township : township // ignore: cast_nullable_to_non_nullable
as List<LocalizedOptionModel>,currencyunit: null == currencyunit ? _self._currencyunit : currencyunit // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,benefitmode: null == benefitmode ? _self._benefitmode : benefitmode // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,attendancemode: null == attendancemode ? _self._attendancemode : attendancemode // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,inboxcategory: null == inboxcategory ? _self._inboxcategory : inboxcategory // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,status: null == status ? _self._status : status // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,ottype: null == ottype ? _self._ottype : ottype // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,actions: null == actions ? _self._actions : actions // ignore: cast_nullable_to_non_nullable
as List<SimpleOptionModel>,
  ));
}

/// Create a copy of GeneralDataModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CompanyInfoModelCopyWith<$Res> get company {
  
  return $CompanyInfoModelCopyWith<$Res>(_self.company, (value) {
    return _then(_self.copyWith(company: value));
  });
}
}

// dart format on
