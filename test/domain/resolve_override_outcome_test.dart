import 'package:flutter_test/flutter_test.dart';
import 'package:resq_rules/domain/models/session/override_outcome.dart';
import 'package:resq_rules/domain/usecases/session/resolve_override_outcome.dart';

import '../support/samples.dart';

void main() {
  const resolve = ResolveOverrideOutcome();

  test('danger jump → OverrideJump with verbatim salience', () {
    final outcome = resolve(
      previousChartId: 'choking',
      response: sampleResponse(kOverrideJump),
    );
    expect(outcome, isA<OverrideJump>());
    expect((outcome as OverrideJump).salience, 100);
    expect(outcome.chartTitle.en, 'Catastrophic Hemorrhage');
  });

  test('danger key while already in the target → OverrideGuard', () {
    final outcome = resolve(
      previousChartId: 'hemorrhage',
      response: sampleResponse(kOverrideGuard),
    );
    expect(outcome, isA<OverrideGuard>());
  });

  test('option-driven chart change with null override → OverrideSilent', () {
    // kSilentJump is in cpr_adult; we came from choking.
    final outcome = resolve(
      previousChartId: 'choking',
      response: sampleResponse(kSilentJump),
    );
    expect(outcome, isA<OverrideSilent>());
  });

  test('same chart, no override → OverrideNone', () {
    final response = sampleResponse(kInstruction); // cpr_adult
    final outcome = resolve(
      previousChartId: response.screen.chartId,
      response: response,
    );
    expect(outcome, isA<OverrideNone>());
  });
}
