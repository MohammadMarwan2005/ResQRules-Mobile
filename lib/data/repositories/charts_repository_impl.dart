import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../domain/error/error_handler.dart';
import '../../domain/error/failure.dart';
import '../../domain/models/charts/chart.dart';
import '../../domain/repositories/charts_repository.dart';
import '../services/api_service.dart';

@LazySingleton(as: ChartsRepository)
class ChartsRepositoryImpl implements ChartsRepository {
  const ChartsRepositoryImpl(this._api, this._errorHandler);

  final ApiService _api;
  final ErrorHandler _errorHandler;

  @override
  Future<Either<Failure, List<Chart>>> getCharts() async {
    try {
      final dtos = await _api.getCharts();
      return Right(dtos.map((dto) => dto.toDomain()).toList());
    } catch (error, stackTrace) {
      return Left(_errorHandler.handle(error, stackTrace));
    }
  }
}
