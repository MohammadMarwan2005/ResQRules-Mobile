import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../error/failure.dart';
import '../../models/charts/chart.dart';
import '../../repositories/charts_repository.dart';

/// Fetches charts and imposes the fixed clinical priority order — `GET /charts`
/// is alphabetical and has no priority field, so we sort client-side.
@lazySingleton
class GetSortedCharts {
  const GetSortedCharts(this._repository);

  final ChartsRepository _repository;

  static const List<String> clinicalOrder = [
    'hemorrhage',
    'cpr_adult',
    'choking',
    'airway',
    'general_assessment',
  ];

  Future<Either<Failure, List<Chart>>> call() async {
    final result = await _repository.getCharts();
    return result.map((charts) {
      final sorted = [...charts]
        ..sort((a, b) => _rank(a.chartId).compareTo(_rank(b.chartId)));
      return sorted;
    });
  }

  int _rank(String chartId) {
    final index = clinicalOrder.indexOf(chartId);
    return index == -1 ? clinicalOrder.length : index;
  }
}
