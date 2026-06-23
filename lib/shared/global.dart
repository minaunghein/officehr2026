import 'package:flutter/material.dart';
import 'package:office_hr/features/user/domain/entities/basic_info.dart';

String? buildFullName(BasicInfo? info) {
  if (info == null) return null;
  final first = info.firstNames.firstWhere(
    (n) => n != null && n.trim().isNotEmpty,
    orElse: () => null,
  );
  final last = info.lastNames.firstWhere(
    (n) => n != null && n.trim().isNotEmpty,
    orElse: () => null,
  );
  final name = [first, last].where((n) => n != null).join(' ').trim();
  return name.isEmpty ? null : name;
}

String? initials(String fullName) {
  if (fullName.isEmpty) return null;

  final parts = fullName.split(RegExp(r'\s+')).where((p) => p.isNotEmpty);
  if (parts.isEmpty) return null;

  String result = '';

  final first = parts.firstOrNull;
  if (first != null) {
    result += first.characters.first.toUpperCase();
  }

  final last = parts.lastOrNull;
  if (last != null && last != first) {
    result += last.characters.first.toUpperCase();
  }

  return result.isEmpty ? null : result;
}
