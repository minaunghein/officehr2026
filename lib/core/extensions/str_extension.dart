import 'dart:io';

extension StringNX on String? {
  bool get isAvailable => this != null && this != 'null' && this!.isNotEmpty;
  bool get isNotAvailable => !isAvailable;

  bool get isSvg => this?.toLowerCase().endsWith('.svg') ?? false;

  bool get isNetworkUrl {
    final uri = Uri.tryParse(this?.trim() ?? '');
    if (uri == null) return false;
    return uri.hasScheme && (uri.scheme == 'http' || uri.scheme == 'https');
  }

  bool get isNetworkImage => isNetworkUrl && !isSvg;

  bool get isNetworkSvg => isNetworkUrl && isSvg;

  bool get isAssetImage => !isNetworkUrl && !isSvg;

  bool get isAssetSvg => !isNetworkUrl && isSvg;

  bool get isLocalFile {
    if (isNotAvailable) return false;
    return (this!.startsWith('/') &&
            (this!.contains('/cache/') ||
                this!.contains('/Documents/') ||
                this!.contains('/tmp/'))) ||
        File(this!).existsSync();
  }

  bool get isNotZero => this != '0' && this != '0.0';
}

extension StringX on String {
  String addS(num value) => value >= 2 ? '$value ${this}s' : '$value $this';

  bool get isHtml {
    final htmlTagRegex = RegExp(r'<[^>]+>');
    return htmlTagRegex.hasMatch(this);
  }

  bool get isHtmlStr {
    final htmlTagRegex = RegExp(r'<[^>]+>');
    return htmlTagRegex.hasMatch(this);
  }

  String? get getRoomType => '${toLowerCase()} room';

  String get count {
    final parts = split('/').where((e) => e.trim().isNotEmpty).toList();

    return parts.length.toString();
  }

  /// NOTE: Keep this as an optional safeguard for cases where the environment
  /// cannot provide a reliable DEV/PROD target. Do not use hostname detection
  /// as the normal Crashlytics gate; fix the environment configuration instead.
  bool get isNonProductionServer {
    final host = Uri.tryParse(this)?.host.toLowerCase() ?? '';
    if (host.isEmpty) return true;
    if (host == 'localhost' || host == '127.0.0.1' || host == '10.0.2.2') {
      return true;
    }

    const nonProductionLabels = {'dev', 'development', 'staging', 'qa', 'test'};
    return host.split('.').any(nonProductionLabels.contains);
  }
}
