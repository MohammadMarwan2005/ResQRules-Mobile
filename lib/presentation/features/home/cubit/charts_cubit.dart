import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/usecases/charts/get_sorted_charts.dart';
import 'charts_state.dart';

@injectable
class ChartsCubit extends Cubit<ChartsState> {
  ChartsCubit(this._getSortedCharts) : super(const ChartsState.initial());

  final GetSortedCharts _getSortedCharts;

  Future<void> load() async {
    emit(const ChartsState.loading());
    final result = await _getSortedCharts();
    emit(result.match(ChartsState.error, ChartsState.loaded));
  }
}
