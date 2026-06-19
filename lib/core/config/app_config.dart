import 'dart:convert';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class AppConfig {
  final String environment;
  final FeatureFlags features;
  final FirebaseConfig firebase;

  const AppConfig._({
    required this.environment,
    required this.features,
    required this.firebase,
  });

  static AppConfig? _instance;

  static AppConfig get instance {
    if (_instance == null) {
      throw StateError(
        'AppConfig not initialized. Call AppConfig.load() before accessing instance.',
      );
    }
    return _instance!;
  }

  static Future<AppConfig> load() async {
    final configFile = _getConfigFileName();

    try {
      final configString = await rootBundle.loadString('config/$configFile');
      final configJson = json.decode(configString) as Map<String, dynamic>;

      _instance = AppConfig._(
        environment: configJson['environment']?.toString() ??
            (kReleaseMode ? 'production' : 'development'),
        features: FeatureFlags.fromJson(_asMap(configJson['features'])),
        firebase: FirebaseConfig.fromJson(_asMap(configJson['firebase'])),
      );

      if (kDebugMode) {
        print('Loaded config: $configFile (${_instance!.environment})');
      }

      return _instance!;
    } catch (e) {
      throw Exception(
        'Failed to load configuration file: $configFile\n'
        'Expected config/development.json and config/production.json to be '
        'present in the Flutter assets.\n'
        'Make sure config/ is listed under the assets section in pubspec.yaml.\n'
        'Error: $e',
      );
    }
  }

  static String _getConfigFileName() {
    return kReleaseMode ? 'production.json' : 'development.json';
  }

  static Map<String, dynamic> _asMap(Object? value) {
    if (value == null) {
      return <String, dynamic>{};
    }

    if (value is Map<String, dynamic>) {
      return value;
    }

    if (value is Map) {
      return Map<String, dynamic>.from(value);
    }

    throw const FormatException('Expected a JSON object.');
  }

  @override
  String toString() {
    return 'AppConfig(environment: $environment, '
        'firebaseProjectId: ${firebase.projectId})';
  }
}

class FeatureFlags {
  final bool enableLogging;
  final bool enableAnalytics;
  final bool enableCrashlytics;

  const FeatureFlags({
    required this.enableLogging,
    required this.enableAnalytics,
    required this.enableCrashlytics,
  });

  factory FeatureFlags.fromJson(Map<String, dynamic> json) {
    return FeatureFlags(
      enableLogging: json['enableLogging'] as bool? ?? false,
      enableAnalytics: json['enableAnalytics'] as bool? ?? false,
      enableCrashlytics: json['enableCrashlytics'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'enableLogging': enableLogging,
      'enableAnalytics': enableAnalytics,
      'enableCrashlytics': enableCrashlytics,
    };
  }
}

class FirebaseConfig {
  final String apiKey;
  final String appId;
  final String messagingSenderId;
  final String projectId;
  final String? authDomain;
  final String? databaseURL;
  final String? storageBucket;
  final String? measurementId;
  final String? trackingId;
  final String? deepLinkURLScheme;
  final String? androidClientId;
  final String? iosClientId;
  final String? iosBundleId;
  final String? appGroupId;

  const FirebaseConfig({
    required this.apiKey,
    required this.appId,
    required this.messagingSenderId,
    required this.projectId,
    this.authDomain,
    this.databaseURL,
    this.storageBucket,
    this.measurementId,
    this.trackingId,
    this.deepLinkURLScheme,
    this.androidClientId,
    this.iosClientId,
    this.iosBundleId,
    this.appGroupId,
  });

  factory FirebaseConfig.fromJson(Map<String, dynamic> json) {
    return FirebaseConfig(
      apiKey: _requiredString(json, 'apiKey'),
      appId: _requiredString(json, 'appId'),
      messagingSenderId: _requiredString(json, 'messagingSenderId'),
      projectId: _requiredString(json, 'projectId'),
      authDomain: _optionalString(json, 'authDomain'),
      databaseURL: _optionalString(json, 'databaseURL'),
      storageBucket: _optionalString(json, 'storageBucket'),
      measurementId: _optionalString(json, 'measurementId'),
      trackingId: _optionalString(json, 'trackingId'),
      deepLinkURLScheme: _optionalString(json, 'deepLinkURLScheme'),
      androidClientId: _optionalString(json, 'androidClientId'),
      iosClientId: _optionalString(json, 'iosClientId'),
      iosBundleId: _optionalString(json, 'iosBundleId'),
      appGroupId: _optionalString(json, 'appGroupId'),
    );
  }

  FirebaseOptions toFirebaseOptions() {
    _ensureConfigured(apiKey, 'apiKey');
    _ensureConfigured(appId, 'appId');
    _ensureConfigured(messagingSenderId, 'messagingSenderId');
    _ensureConfigured(projectId, 'projectId');

    return FirebaseOptions(
      apiKey: apiKey,
      appId: appId,
      messagingSenderId: messagingSenderId,
      projectId: projectId,
      authDomain: authDomain,
      databaseURL: databaseURL,
      storageBucket: storageBucket,
      measurementId: measurementId,
      trackingId: trackingId,
      deepLinkURLScheme: deepLinkURLScheme,
      androidClientId: androidClientId,
      iosClientId: iosClientId,
      iosBundleId: iosBundleId,
      appGroupId: appGroupId,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'apiKey': apiKey,
      'appId': appId,
      'messagingSenderId': messagingSenderId,
      'projectId': projectId,
      'authDomain': authDomain,
      'databaseURL': databaseURL,
      'storageBucket': storageBucket,
      'measurementId': measurementId,
      'trackingId': trackingId,
      'deepLinkURLScheme': deepLinkURLScheme,
      'androidClientId': androidClientId,
      'iosClientId': iosClientId,
      'iosBundleId': iosBundleId,
      'appGroupId': appGroupId,
    };
  }

  static String _requiredString(Map<String, dynamic> json, String key) {
    final value = json[key];
    if (value is String) {
      return value.trim();
    }
    if (value == null) {
      return '';
    }
    throw FormatException('Firebase config value "$key" must be a string.');
  }

  static String? _optionalString(Map<String, dynamic> json, String key) {
    final value = json[key];
    if (value == null) {
      return null;
    }
    if (value is String) {
      final trimmed = value.trim();
      return trimmed.isEmpty ? null : trimmed;
    }
    throw FormatException('Firebase config value "$key" must be a string.');
  }

  static void _ensureConfigured(String value, String key) {
    final normalized = value.trim();
    final upper = normalized.toUpperCase();
    final isPlaceholder = normalized.isEmpty ||
        upper.startsWith('YOUR_') ||
        upper.startsWith('REPLACE_') ||
        upper.startsWith('CHANGE_ME') ||
        upper.startsWith('<');

    if (isPlaceholder) {
      throw StateError(
        'Firebase config value "$key" is still a placeholder. '
        'Update the selected config JSON file before initializing Firebase.',
      );
    }
  }
}
