import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/error/error_handler.dart';
import '../../domain/error/failure.dart';
import '../../domain/models/session/session_response.dart';
import '../../domain/repositories/session_repository.dart';
import '../models/session/session_response_dto.dart';
import '../services/api_service.dart';

@LazySingleton(as: SessionRepository)
class SessionRepositoryImpl implements SessionRepository {
  const SessionRepositoryImpl(this._api, this._errorHandler);

  final ApiService _api;
  final ErrorHandler _errorHandler;

  @override
  Future<Either<Failure, SessionResponse>> startSession(String chartId) {
    return _guard(() => _api.startSession({'chart_id': chartId}));
  }

  @override
  Future<Either<Failure, SessionResponse>> getSession(String sessionId) {
    return _guard(() => _api.getSession(sessionId));
  }

  @override
  Future<Either<Failure, SessionResponse>> step(
    String sessionId,
    String input,
  ) {
    return _guard(() => _api.step(sessionId, {'input': input}));
  }

  @override
  Future<Either<Failure, SessionResponse>> reset(
    String sessionId, {
    String? chartId,
  }) {
    return _guard(
      () => _api.reset(sessionId, {if (chartId != null) 'chart_id': chartId}),
    );
  }

  @override
  Future<Either<Failure, Unit>> endSession(String sessionId) async {
    try {
      await _api.endSession(sessionId);
      return const Right(unit);
    } catch (error, stackTrace) {
      return Left(_errorHandler.handle(error, stackTrace));
    }
  }

  /// Runs an API call that yields a [SessionResponse] DTO, mapping success to
  /// the domain entity and any error to a [Failure].
  Future<Either<Failure, SessionResponse>> _guard(
    Future<SessionResponseDto> Function() call,
  ) async {
    try {
      final dto = await call();
      return Right(dto.toDomain());
    } catch (error, stackTrace) {
      return Left(_errorHandler.handle(error, stackTrace));
    }
  }
}
