import 'package:flutter/material.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/basic_info/basic_info.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/user/user.dart';

String? buildFullName(BasicInfo? info) {
  if (info == null) return null;

  final name = [info.firstName, info.lastName].join(' ').trim();
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

String userDisplayName(Object? user) {
  if (user is AuthSession) return user.displayName;

  final legacyUser = user is User ? user : null;
  final name = buildFullName(legacyUser?.employee?.basicInfo);
  if (name != null && name.isNotEmpty) return name;

  final username = legacyUser?.username.trim() ?? '';
  if (username.isNotEmpty) return username;

  final email = legacyUser?.email.trim() ?? '';
  if (email.isNotEmpty) return email;

  return 'Unknown User';
}

String valueOrDash(String? value) {
  final trimmed = value?.trim() ?? '';
  return trimmed.isEmpty ? '-' : trimmed;
}
