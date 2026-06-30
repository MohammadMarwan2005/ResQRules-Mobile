import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../common/error/exceptions.dart';
import '../../domain/error/error_handler.dart';
import '../../domain/error/failure.dart';

/// Maps technical exceptions to domain [Failure]s by branching on the stable
/// API error `code` (never on message text). Injected into the repositories.
@LazySingleton(as: ErrorHandler)
class ErrorHandlerImpl implements ErrorHandler {
  const ErrorHandlerImpl();

  @override
  Failure handle(Object error, [StackTrace? stackTrace]) {
    // The interceptor stashes our typed exception on `DioException.error`.
    final err = error is DioException ? (error.error ?? error) : error;

    if (err is ApiException) {
      switch (err.code) {
        case 'session_ended':
          return Failure.sessionEnded(message: err.message);
        case 'invalid_input':
          return Failure.invalidInput(message: err.message);
        case 'session_not_found':
          return Failure.sessionNotFound(message: err.message);
        case 'chart_not_found':
          return Failure.chartNotFound(message: err.message);
        case 'engine_unavailable':
        case 'engine_timeout':
          return Failure.engine(message: err.message);
        default:
          return Failure.connection(message: err.message);
      }
    }

    if (err is ConnectionException) {
      return Failure.connection(message: err.message);
    }
    if (err is DioException) {
      return Failure.connection(message: err.message ?? 'Connection error');
    }
    return Failure.unknown(message: err.toString());
  }
}
