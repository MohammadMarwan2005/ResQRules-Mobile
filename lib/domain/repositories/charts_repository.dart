import 'package:fpdart/fpdart.dart';

import '../error/failure.dart';
import '../models/charts/chart.dart';

abstract interface class ChartsRepository {
  Future<Either<Failure, List<Chart>>> getCharts();
}
