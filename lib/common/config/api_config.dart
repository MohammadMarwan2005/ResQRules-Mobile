import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

/// Resolves the backend base URL.
///
/// Defaults to the hosted cloud backend (HTTPS, reachable from every platform).
/// Flip [useLocalBackend] to target a `uvicorn` instance on your machine; that
/// path is web-safe (uses [defaultTargetPlatform], no `dart:io`):
/// - Android emulator → `10.0.2.2` (host alias)
/// - iOS simulator / desktop / web → `localhost`
@lazySingleton
class ApiConfig {
  const ApiConfig();

  /// Hosted backend.
  static const String cloudBaseUrl = 'https://resqrules.duckdns.org';

  /// Set true for local development against `uvicorn` on [localPort].
  static const bool useLocalBackend = false;
  static const int localPort = 8000;

  String get baseUrl {
    if (!useLocalBackend) return cloudBaseUrl;
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      return 'http://10.0.2.2:$localPort';
    }
    return 'http://localhost:$localPort';
  }
}
