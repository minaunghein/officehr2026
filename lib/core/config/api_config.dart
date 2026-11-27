class ApiConfig {
  ApiConfig({
    String? baseUrl,
    this.connectTimeout = const Duration(seconds: 30),
    this.receiveTimeout = const Duration(seconds: 30),
    this.sendTimeout = const Duration(seconds: 30),
  }) : baseUrl = baseUrl ?? currentBaseUrl;

  /// Fallback used until the user configures the API base URL on the company
  /// setup screen. Populated at startup from the active flavor's config JSON
  /// (`config/dev.json` / `config/prod.json` `fallbackBaseUrl` key) by
  /// `AppConfig.load()`.
  static String fallbackBaseUrl = '';

  /// The app-wide active API base URL. Kept in sync with the value persisted
  /// in secure storage by `apiBaseUrlProvider`; plain `ApiConfig()` reads
  /// (including entity getters without provider access) resolve through it.
  /// Falls back to the flavor config value while nothing is stored yet.
  static String _currentBaseUrl = '';

  static String get currentBaseUrl =>
      _currentBaseUrl.isNotEmpty ? _currentBaseUrl : fallbackBaseUrl;

  static set currentBaseUrl(String value) => _currentBaseUrl = value;

  /// Normalizes a raw base URL: `https://` is added by default when the
  /// input has no scheme (e.g. `api.officehr.com` ->
  /// `https://api.officehr.com`) and any trailing slash is removed.
  /// Returns `null` when the value is empty or has no host.
  static String? normalizeBaseUrl(String? rawValue) {
    var value = (rawValue ?? '').trim().replaceAll(RegExp(r'\s+'), '');
    if (value.isEmpty) return null;
    if (!value.startsWith('http://') && !value.startsWith('https://')) {
      value = 'https://$value';
    }

    final uri = Uri.tryParse(value);
    if (uri == null || uri.host.isEmpty) return null;

    if (value.endsWith('/')) {
      value = value.substring(0, value.length - 1);
    }
    return value;
  }

  final String baseUrl;
  final Duration connectTimeout;
  final Duration receiveTimeout;
  final Duration sendTimeout;
}
