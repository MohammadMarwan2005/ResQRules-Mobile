import 'package:fpdart/fpdart.dart';

import '../error/failure.dart';
import '../models/session/session_response.dart';

abstract interface class SessionRepository {
  Future<Either<Failure, SessionResponse>> startSession(String chartId);

  Future<Either<Failure, SessionResponse>> getSession(String sessionId);

  Future<Either<Failure, SessionResponse>> step(String sessionId, String input);

  Future<Either<Failure, SessionResponse>> reset(
    String sessionId, {
    String? chartId,
  });

  Future<Either<Failure, Unit>> endSession(String sessionId);
}
