import 'package:dio/dio.dart';

import '../error/exceptions.dart';

/// Translates a [DioException] into a typed [ApiException] (hand-raised errors
/// with a stable `detail.code`) or [ConnectionException] (everything else),
/// stashed on `DioException.error` for the repository to read.
class ApiErrorInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final status = err.response?.statusCode;
    final data = err.response?.data;

    if (data is Map && data['detail'] is Map) {
      final detail = data['detail'] as Map;
      final code = detail['code'];
      if (code != null) {
        handler.reject(
          err.copyWith(
            error: ApiException(
              code: code.toString(),
              message: (detail['message'] ?? '').toString(),
              statusCode: status,
            ),
          ),
        );
        return;
      }
    }

    handler.reject(
      err.copyWith(
        error: ConnectionException(
          message: err.message ?? 'Connection error',
          statusCode: status,
        ),
      ),
    );
  }
}
