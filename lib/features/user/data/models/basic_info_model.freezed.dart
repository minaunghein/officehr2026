// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasicInfoModel {

@JsonKey(name: '_id') String? get id; List<String?>? get firstnames; List<String?>? get lastnames; int? get nrcregioncodeid; String? get nrctype; String? get nrctownship; List<String>? get nrcnumbers; int? get genderid; int? get bloodtypeid; int? get maritalstatusid; String? get dob; List<String>? get pobs; List<String>? get nmarks; String? get height; int? get weight; String? get hc; String? get ec; int? get nationalityid; String? get religionid; String? get ethnicid;
/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasicInfoModelCopyWith<BasicInfoModel> get copyWith => _$BasicInfoModelCopyWithImpl<BasicInfoModel>(this as BasicInfoModel, _$identity);

  /// Serializes this BasicInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasicInfoModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.firstnames, firstnames)&&const DeepCollectionEquality().equals(other.lastnames, lastnames)&&(identical(other.nrcregioncodeid, nrcregioncodeid) || other.nrcregioncodeid == nrcregioncodeid)&&(identical(other.nrctype, nrctype) || other.nrctype == nrctype)&&(identical(other.nrctownship, nrctownship) || other.nrctownship == nrctownship)&&const DeepCollectionEquality().equals(other.nrcnumbers, nrcnumbers)&&(identical(other.genderid, genderid) || other.genderid == genderid)&&(identical(other.bloodtypeid, bloodtypeid) || other.bloodtypeid == bloodtypeid)&&(identical(other.maritalstatusid, maritalstatusid) || other.maritalstatusid == maritalstatusid)&&(identical(other.dob, dob) || other.dob == dob)&&const DeepCollectionEquality().equals(other.pobs, pobs)&&const DeepCollectionEquality().equals(other.nmarks, nmarks)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.hc, hc) || other.hc == hc)&&(identical(other.ec, ec) || other.ec == ec)&&(identical(other.nationalityid, nationalityid) || other.nationalityid == nationalityid)&&(identical(other.religionid, religionid) || other.religionid == religionid)&&(identical(other.ethnicid, ethnicid) || other.ethnicid == ethnicid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,const DeepCollectionEquality().hash(firstnames),const DeepCollectionEquality().hash(lastnames),nrcregioncodeid,nrctype,nrctownship,const DeepCollectionEquality().hash(nrcnumbers),genderid,bloodtypeid,maritalstatusid,dob,const DeepCollectionEquality().hash(pobs),const DeepCollectionEquality().hash(nmarks),height,weight,hc,ec,nationalityid,religionid,ethnicid]);

@override
String toString() {
  return 'BasicInfoModel(id: $id, firstnames: $firstnames, lastnames: $lastnames, nrcregioncodeid: $nrcregioncodeid, nrctype: $nrctype, nrctownship: $nrctownship, nrcnumbers: $nrcnumbers, genderid: $genderid, bloodtypeid: $bloodtypeid, maritalstatusid: $maritalstatusid, dob: $dob, pobs: $pobs, nmarks: $nmarks, height: $height, weight: $weight, hc: $hc, ec: $ec, nationalityid: $nationalityid, religionid: $religionid, ethnicid: $ethnicid)';
}


}

/// @nodoc
abstract mixin class $BasicInfoModelCopyWith<$Res>  {
  factory $BasicInfoModelCopyWith(BasicInfoModel value, $Res Function(BasicInfoModel) _then) = _$BasicInfoModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: '_id') String? id, List<String?>? firstnames, List<String?>? lastnames, int? nrcregioncodeid, String? nrctype, String? nrctownship, List<String>? nrcnumbers, int? genderid, int? bloodtypeid, int? maritalstatusid, String? dob, List<String>? pobs, List<String>? nmarks, String? height, int? weight, String? hc, String? ec, int? nationalityid, String? religionid, String? ethnicid
});




}
/// @nodoc
class _$BasicInfoModelCopyWithImpl<$Res>
    implements $BasicInfoModelCopyWith<$Res> {
  _$BasicInfoModelCopyWithImpl(this._self, this._then);

  final BasicInfoModel _self;
  final $Res Function(BasicInfoModel) _then;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstnames = freezed,Object? lastnames = freezed,Object? nrcregioncodeid = freezed,Object? nrctype = freezed,Object? nrctownship = freezed,Object? nrcnumbers = freezed,Object? genderid = freezed,Object? bloodtypeid = freezed,Object? maritalstatusid = freezed,Object? dob = freezed,Object? pobs = freezed,Object? nmarks = freezed,Object? height = freezed,Object? weight = freezed,Object? hc = freezed,Object? ec = freezed,Object? nationalityid = freezed,Object? religionid = freezed,Object? ethnicid = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstnames: freezed == firstnames ? _self.firstnames : firstnames // ignore: cast_nullable_to_non_nullable
as List<String?>?,lastnames: freezed == lastnames ? _self.lastnames : lastnames // ignore: cast_nullable_to_non_nullable
as List<String?>?,nrcregioncodeid: freezed == nrcregioncodeid ? _self.nrcregioncodeid : nrcregioncodeid // ignore: cast_nullable_to_non_nullable
as int?,nrctype: freezed == nrctype ? _self.nrctype : nrctype // ignore: cast_nullable_to_non_nullable
as String?,nrctownship: freezed == nrctownship ? _self.nrctownship : nrctownship // ignore: cast_nullable_to_non_nullable
as String?,nrcnumbers: freezed == nrcnumbers ? _self.nrcnumbers : nrcnumbers // ignore: cast_nullable_to_non_nullable
as List<String>?,genderid: freezed == genderid ? _self.genderid : genderid // ignore: cast_nullable_to_non_nullable
as int?,bloodtypeid: freezed == bloodtypeid ? _self.bloodtypeid : bloodtypeid // ignore: cast_nullable_to_non_nullable
as int?,maritalstatusid: freezed == maritalstatusid ? _self.maritalstatusid : maritalstatusid // ignore: cast_nullable_to_non_nullable
as int?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,pobs: freezed == pobs ? _self.pobs : pobs // ignore: cast_nullable_to_non_nullable
as List<String>?,nmarks: freezed == nmarks ? _self.nmarks : nmarks // ignore: cast_nullable_to_non_nullable
as List<String>?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,hc: freezed == hc ? _self.hc : hc // ignore: cast_nullable_to_non_nullable
as String?,ec: freezed == ec ? _self.ec : ec // ignore: cast_nullable_to_non_nullable
as String?,nationalityid: freezed == nationalityid ? _self.nationalityid : nationalityid // ignore: cast_nullable_to_non_nullable
as int?,religionid: freezed == religionid ? _self.religionid : religionid // ignore: cast_nullable_to_non_nullable
as String?,ethnicid: freezed == ethnicid ? _self.ethnicid : ethnicid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BasicInfoModel].
extension BasicInfoModelPatterns on BasicInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasicInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasicInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _BasicInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasicInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  List<String?>? firstnames,  List<String?>? lastnames,  int? nrcregioncodeid,  String? nrctype,  String? nrctownship,  List<String>? nrcnumbers,  int? genderid,  int? bloodtypeid,  int? maritalstatusid,  String? dob,  List<String>? pobs,  List<String>? nmarks,  String? height,  int? weight,  String? hc,  String? ec,  int? nationalityid,  String? religionid,  String? ethnicid)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
return $default(_that.id,_that.firstnames,_that.lastnames,_that.nrcregioncodeid,_that.nrctype,_that.nrctownship,_that.nrcnumbers,_that.genderid,_that.bloodtypeid,_that.maritalstatusid,_that.dob,_that.pobs,_that.nmarks,_that.height,_that.weight,_that.hc,_that.ec,_that.nationalityid,_that.religionid,_that.ethnicid);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: '_id')  String? id,  List<String?>? firstnames,  List<String?>? lastnames,  int? nrcregioncodeid,  String? nrctype,  String? nrctownship,  List<String>? nrcnumbers,  int? genderid,  int? bloodtypeid,  int? maritalstatusid,  String? dob,  List<String>? pobs,  List<String>? nmarks,  String? height,  int? weight,  String? hc,  String? ec,  int? nationalityid,  String? religionid,  String? ethnicid)  $default,) {final _that = this;
switch (_that) {
case _BasicInfoModel():
return $default(_that.id,_that.firstnames,_that.lastnames,_that.nrcregioncodeid,_that.nrctype,_that.nrctownship,_that.nrcnumbers,_that.genderid,_that.bloodtypeid,_that.maritalstatusid,_that.dob,_that.pobs,_that.nmarks,_that.height,_that.weight,_that.hc,_that.ec,_that.nationalityid,_that.religionid,_that.ethnicid);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: '_id')  String? id,  List<String?>? firstnames,  List<String?>? lastnames,  int? nrcregioncodeid,  String? nrctype,  String? nrctownship,  List<String>? nrcnumbers,  int? genderid,  int? bloodtypeid,  int? maritalstatusid,  String? dob,  List<String>? pobs,  List<String>? nmarks,  String? height,  int? weight,  String? hc,  String? ec,  int? nationalityid,  String? religionid,  String? ethnicid)?  $default,) {final _that = this;
switch (_that) {
case _BasicInfoModel() when $default != null:
return $default(_that.id,_that.firstnames,_that.lastnames,_that.nrcregioncodeid,_that.nrctype,_that.nrctownship,_that.nrcnumbers,_that.genderid,_that.bloodtypeid,_that.maritalstatusid,_that.dob,_that.pobs,_that.nmarks,_that.height,_that.weight,_that.hc,_that.ec,_that.nationalityid,_that.religionid,_that.ethnicid);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BasicInfoModel implements BasicInfoModel {
  const _BasicInfoModel({@JsonKey(name: '_id') this.id, final  List<String?>? firstnames, final  List<String?>? lastnames, this.nrcregioncodeid, this.nrctype, this.nrctownship, final  List<String>? nrcnumbers, this.genderid, this.bloodtypeid, this.maritalstatusid, this.dob, final  List<String>? pobs, final  List<String>? nmarks, this.height, this.weight, this.hc, this.ec, this.nationalityid, this.religionid, this.ethnicid}): _firstnames = firstnames,_lastnames = lastnames,_nrcnumbers = nrcnumbers,_pobs = pobs,_nmarks = nmarks;
  factory _BasicInfoModel.fromJson(Map<String, dynamic> json) => _$BasicInfoModelFromJson(json);

@override@JsonKey(name: '_id') final  String? id;
 final  List<String?>? _firstnames;
@override List<String?>? get firstnames {
  final value = _firstnames;
  if (value == null) return null;
  if (_firstnames is EqualUnmodifiableListView) return _firstnames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String?>? _lastnames;
@override List<String?>? get lastnames {
  final value = _lastnames;
  if (value == null) return null;
  if (_lastnames is EqualUnmodifiableListView) return _lastnames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? nrcregioncodeid;
@override final  String? nrctype;
@override final  String? nrctownship;
 final  List<String>? _nrcnumbers;
@override List<String>? get nrcnumbers {
  final value = _nrcnumbers;
  if (value == null) return null;
  if (_nrcnumbers is EqualUnmodifiableListView) return _nrcnumbers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? genderid;
@override final  int? bloodtypeid;
@override final  int? maritalstatusid;
@override final  String? dob;
 final  List<String>? _pobs;
@override List<String>? get pobs {
  final value = _pobs;
  if (value == null) return null;
  if (_pobs is EqualUnmodifiableListView) return _pobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _nmarks;
@override List<String>? get nmarks {
  final value = _nmarks;
  if (value == null) return null;
  if (_nmarks is EqualUnmodifiableListView) return _nmarks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? height;
@override final  int? weight;
@override final  String? hc;
@override final  String? ec;
@override final  int? nationalityid;
@override final  String? religionid;
@override final  String? ethnicid;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasicInfoModelCopyWith<_BasicInfoModel> get copyWith => __$BasicInfoModelCopyWithImpl<_BasicInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasicInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasicInfoModel&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._firstnames, _firstnames)&&const DeepCollectionEquality().equals(other._lastnames, _lastnames)&&(identical(other.nrcregioncodeid, nrcregioncodeid) || other.nrcregioncodeid == nrcregioncodeid)&&(identical(other.nrctype, nrctype) || other.nrctype == nrctype)&&(identical(other.nrctownship, nrctownship) || other.nrctownship == nrctownship)&&const DeepCollectionEquality().equals(other._nrcnumbers, _nrcnumbers)&&(identical(other.genderid, genderid) || other.genderid == genderid)&&(identical(other.bloodtypeid, bloodtypeid) || other.bloodtypeid == bloodtypeid)&&(identical(other.maritalstatusid, maritalstatusid) || other.maritalstatusid == maritalstatusid)&&(identical(other.dob, dob) || other.dob == dob)&&const DeepCollectionEquality().equals(other._pobs, _pobs)&&const DeepCollectionEquality().equals(other._nmarks, _nmarks)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.hc, hc) || other.hc == hc)&&(identical(other.ec, ec) || other.ec == ec)&&(identical(other.nationalityid, nationalityid) || other.nationalityid == nationalityid)&&(identical(other.religionid, religionid) || other.religionid == religionid)&&(identical(other.ethnicid, ethnicid) || other.ethnicid == ethnicid));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,const DeepCollectionEquality().hash(_firstnames),const DeepCollectionEquality().hash(_lastnames),nrcregioncodeid,nrctype,nrctownship,const DeepCollectionEquality().hash(_nrcnumbers),genderid,bloodtypeid,maritalstatusid,dob,const DeepCollectionEquality().hash(_pobs),const DeepCollectionEquality().hash(_nmarks),height,weight,hc,ec,nationalityid,religionid,ethnicid]);

@override
String toString() {
  return 'BasicInfoModel(id: $id, firstnames: $firstnames, lastnames: $lastnames, nrcregioncodeid: $nrcregioncodeid, nrctype: $nrctype, nrctownship: $nrctownship, nrcnumbers: $nrcnumbers, genderid: $genderid, bloodtypeid: $bloodtypeid, maritalstatusid: $maritalstatusid, dob: $dob, pobs: $pobs, nmarks: $nmarks, height: $height, weight: $weight, hc: $hc, ec: $ec, nationalityid: $nationalityid, religionid: $religionid, ethnicid: $ethnicid)';
}


}

/// @nodoc
abstract mixin class _$BasicInfoModelCopyWith<$Res> implements $BasicInfoModelCopyWith<$Res> {
  factory _$BasicInfoModelCopyWith(_BasicInfoModel value, $Res Function(_BasicInfoModel) _then) = __$BasicInfoModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: '_id') String? id, List<String?>? firstnames, List<String?>? lastnames, int? nrcregioncodeid, String? nrctype, String? nrctownship, List<String>? nrcnumbers, int? genderid, int? bloodtypeid, int? maritalstatusid, String? dob, List<String>? pobs, List<String>? nmarks, String? height, int? weight, String? hc, String? ec, int? nationalityid, String? religionid, String? ethnicid
});




}
/// @nodoc
class __$BasicInfoModelCopyWithImpl<$Res>
    implements _$BasicInfoModelCopyWith<$Res> {
  __$BasicInfoModelCopyWithImpl(this._self, this._then);

  final _BasicInfoModel _self;
  final $Res Function(_BasicInfoModel) _then;

/// Create a copy of BasicInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstnames = freezed,Object? lastnames = freezed,Object? nrcregioncodeid = freezed,Object? nrctype = freezed,Object? nrctownship = freezed,Object? nrcnumbers = freezed,Object? genderid = freezed,Object? bloodtypeid = freezed,Object? maritalstatusid = freezed,Object? dob = freezed,Object? pobs = freezed,Object? nmarks = freezed,Object? height = freezed,Object? weight = freezed,Object? hc = freezed,Object? ec = freezed,Object? nationalityid = freezed,Object? religionid = freezed,Object? ethnicid = freezed,}) {
  return _then(_BasicInfoModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,firstnames: freezed == firstnames ? _self._firstnames : firstnames // ignore: cast_nullable_to_non_nullable
as List<String?>?,lastnames: freezed == lastnames ? _self._lastnames : lastnames // ignore: cast_nullable_to_non_nullable
as List<String?>?,nrcregioncodeid: freezed == nrcregioncodeid ? _self.nrcregioncodeid : nrcregioncodeid // ignore: cast_nullable_to_non_nullable
as int?,nrctype: freezed == nrctype ? _self.nrctype : nrctype // ignore: cast_nullable_to_non_nullable
as String?,nrctownship: freezed == nrctownship ? _self.nrctownship : nrctownship // ignore: cast_nullable_to_non_nullable
as String?,nrcnumbers: freezed == nrcnumbers ? _self._nrcnumbers : nrcnumbers // ignore: cast_nullable_to_non_nullable
as List<String>?,genderid: freezed == genderid ? _self.genderid : genderid // ignore: cast_nullable_to_non_nullable
as int?,bloodtypeid: freezed == bloodtypeid ? _self.bloodtypeid : bloodtypeid // ignore: cast_nullable_to_non_nullable
as int?,maritalstatusid: freezed == maritalstatusid ? _self.maritalstatusid : maritalstatusid // ignore: cast_nullable_to_non_nullable
as int?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,pobs: freezed == pobs ? _self._pobs : pobs // ignore: cast_nullable_to_non_nullable
as List<String>?,nmarks: freezed == nmarks ? _self._nmarks : nmarks // ignore: cast_nullable_to_non_nullable
as List<String>?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as String?,weight: freezed == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int?,hc: freezed == hc ? _self.hc : hc // ignore: cast_nullable_to_non_nullable
as String?,ec: freezed == ec ? _self.ec : ec // ignore: cast_nullable_to_non_nullable
as String?,nationalityid: freezed == nationalityid ? _self.nationalityid : nationalityid // ignore: cast_nullable_to_non_nullable
as int?,religionid: freezed == religionid ? _self.religionid : religionid // ignore: cast_nullable_to_non_nullable
as String?,ethnicid: freezed == ethnicid ? _self.ethnicid : ethnicid // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
