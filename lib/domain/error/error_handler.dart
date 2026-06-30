import 'failure.dart';

/// Maps a caught error (technical exception, [Object]) to a domain [Failure].
/// Interface lives in the domain layer; the implementation lives in `data/error`.
abstract interface class ErrorHandler {
  Failure handle(Object error, [StackTrace? stackTrace]);
}
