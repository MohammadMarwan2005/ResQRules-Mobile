// Technical exceptions thrown by the Dio error interceptor and translated to
// a domain `Failure` by `ErrorHandlerImpl`.

/// A hand-raised API error carrying the stable `{detail:{code,message}}` body.
class ApiException implements Exception {
  const ApiException({
    required this.code,
    required this.message,
    this.statusCode,
  });

  final String code;
  final String message;
  final int? statusCode;

  @override
  String toString() => 'ApiException($code, status=$statusCode): $message';
}

/// A network failure, timeout, or any non-2xx without a `detail.code`.
class ConnectionException implements Exception {
  const ConnectionException({
    this.message = 'Connection error',
    this.statusCode,
  });

  final String message;
  final int? statusCode;

  @override
  String toString() => 'ConnectionException(status=$statusCode): $message';
}
