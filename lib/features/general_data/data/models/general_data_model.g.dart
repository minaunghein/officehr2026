// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeneralDataModel _$GeneralDataModelFromJson(
  Map<String, dynamic> json,
) => _GeneralDataModel(
  company: CompanyInfoModel.fromJson(json['company'] as Map<String, dynamic>),
  gender: (json['gender'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  maritalStatus: (json['maritalStatus'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  weightunit: (json['weightunit'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  height: (json['height'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  bloodType: (json['bloodType'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  color: (json['color'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  nationality: (json['nationality'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  educationType: (json['educationType'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  nrccoderegions: (json['nrccoderegions'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  religion: (json['religion'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  ethnic: (json['ethnic'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  day: (json['day'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  nrcTypes: (json['nrcTypes'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  nrcRegion: (json['nrcRegion'] as List<dynamic>)
      .map((e) => NrcRegionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  defaultworkingdays: (json['defaultworkingdays'] as List<dynamic>)
      .map((e) => DefaultWorkingDayModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  nightshiftworkingdays: json['nightshiftworkingdays'] as List<dynamic>,
  empstatus: (json['empstatus'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  country: (json['country'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  city: (json['city'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  state: (json['state'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  township: (json['township'] as List<dynamic>)
      .map((e) => LocalizedOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  currencyunit: (json['currencyunit'] as List<dynamic>)
      .map((e) => SimpleOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  benefitmode: (json['benefitmode'] as List<dynamic>)
      .map((e) => SimpleOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  attendancemode: (json['attendancemode'] as List<dynamic>)
      .map((e) => SimpleOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  inboxcategory: (json['inboxcategory'] as List<dynamic>)
      .map((e) => SimpleOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: (json['status'] as List<dynamic>)
      .map((e) => SimpleOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  ottype: (json['ottype'] as List<dynamic>)
      .map((e) => SimpleOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  actions: (json['actions'] as List<dynamic>)
      .map((e) => SimpleOptionModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GeneralDataModelToJson(_GeneralDataModel instance) =>
    <String, dynamic>{
      'company': instance.company,
      'gender': instance.gender,
      'maritalStatus': instance.maritalStatus,
      'weightunit': instance.weightunit,
      'height': instance.height,
      'bloodType': instance.bloodType,
      'color': instance.color,
      'nationality': instance.nationality,
      'educationType': instance.educationType,
      'nrccoderegions': instance.nrccoderegions,
      'religion': instance.religion,
      'ethnic': instance.ethnic,
      'day': instance.day,
      'nrcTypes': instance.nrcTypes,
      'nrcRegion': instance.nrcRegion,
      'defaultworkingdays': instance.defaultworkingdays,
      'nightshiftworkingdays': instance.nightshiftworkingdays,
      'empstatus': instance.empstatus,
      'country': instance.country,
      'city': instance.city,
      'state': instance.state,
      'township': instance.township,
      'currencyunit': instance.currencyunit,
      'benefitmode': instance.benefitmode,
      'attendancemode': instance.attendancemode,
      'inboxcategory': instance.inboxcategory,
      'status': instance.status,
      'ottype': instance.ottype,
      'actions': instance.actions,
    };
