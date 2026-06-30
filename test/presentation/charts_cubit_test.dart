import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resq_rules/domain/error/failure.dart';
import 'package:resq_rules/domain/models/charts/chart.dart';
import 'package:resq_rules/domain/models/shared/bilingual_text.dart';
import 'package:resq_rules/domain/usecases/charts/get_sorted_charts.dart';
import 'package:resq_rules/presentation/features/home/cubit/charts_cubit.dart';
import 'package:resq_rules/presentation/features/home/cubit/charts_state.dart';

class _MockGetSortedCharts extends Mock implements GetSortedCharts {}

void main() {
  late _MockGetSortedCharts usecase;

  setUp(() => usecase = _MockGetSortedCharts());

  final charts = [
    Chart(
      chartId: 'hemorrhage',
      title: const BilingualText(en: 'Catastrophic Hemorrhage', ar: 'x'),
      urgency: 'critical',
    ),
  ];

  blocTest<ChartsCubit, ChartsState>(
    'load → loading then loaded',
    setUp: () => when(usecase.call).thenAnswer((_) async => Right(charts)),
    build: () => ChartsCubit(usecase),
    act: (cubit) => cubit.load(),
    expect:
        () => [
          isA<ChartsLoading>(),
          isA<ChartsLoaded>().having((s) => s.charts, 'charts', charts),
        ],
  );

  blocTest<ChartsCubit, ChartsState>(
    'load → loading then error on failure',
    setUp:
        () => when(
          usecase.call,
        ).thenAnswer((_) async => Left(const Failure.connection())),
    build: () => ChartsCubit(usecase),
    act: (cubit) => cubit.load(),
    expect: () => [isA<ChartsLoading>(), isA<ChartsError>()],
  );
}
