import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resq_rules/domain/models/charts/chart.dart';
import 'package:resq_rules/domain/models/shared/bilingual_text.dart';
import 'package:resq_rules/domain/repositories/charts_repository.dart';
import 'package:resq_rules/domain/usecases/charts/get_sorted_charts.dart';

class _MockChartsRepository extends Mock implements ChartsRepository {}

Chart _chart(String id, String urgency) => Chart(
  chartId: id,
  title: const BilingualText(en: 'x', ar: 'x'),
  urgency: urgency,
);

void main() {
  test('GetSortedCharts imposes the fixed clinical order', () async {
    final repo = _MockChartsRepository();
    // Alphabetical, as the API returns it.
    when(repo.getCharts).thenAnswer(
      (_) async => Right([
        _chart('airway', 'high'),
        _chart('choking', 'critical'),
        _chart('cpr_adult', 'critical'),
        _chart('general_assessment', 'standard'),
        _chart('hemorrhage', 'critical'),
      ]),
    );

    final result = await GetSortedCharts(repo)();
    final ids = result.getOrElse((_) => []).map((c) => c.chartId).toList();

    expect(ids, [
      'hemorrhage',
      'cpr_adult',
      'choking',
      'airway',
      'general_assessment',
    ]);
  });
}
