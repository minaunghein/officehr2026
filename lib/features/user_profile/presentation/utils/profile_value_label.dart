import 'package:easy_localization/easy_localization.dart';

/// Localize known HR codes and leave company-defined values as entered.
String profileValueLabel(String? value) {
  final text = value?.trim() ?? '';
  final code = text.toUpperCase().replaceAll(RegExp(r'[-\s]+'), '_');
  return switch (code) {
    'ACTIVE' => 'Employment status: active'.tr(),
    'INACTIVE' => 'Employment status: inactive'.tr(),
    'FULL_TIME' => 'Full Time'.tr(),
    'PART_TIME' => 'Part Time'.tr(),
    'PERMANENT' => 'Permanent'.tr(),
    'CONTRACT' => 'Contract'.tr(),
    'TEMPORARY' => 'Temporary'.tr(),
    'PROBATION' => 'Probation'.tr(),
    'RESIGNED' => 'Resigned'.tr(),
    'TERMINATED' => 'Terminated'.tr(),
    'REMOTE' => 'Remote'.tr(),
    'ONSITE' || 'ON_SITE' => 'On Site'.tr(),
    'HYBRID' => 'Hybrid'.tr(),
    'MALE' => 'Male'.tr(),
    'FEMALE' => 'Female'.tr(),
    'SINGLE' => 'Single'.tr(),
    'MARRIED' => 'Married'.tr(),
    'DIVORCED' => 'Divorced'.tr(),
    'WIDOWED' => 'Widowed'.tr(),
    _ => text,
  };
}
