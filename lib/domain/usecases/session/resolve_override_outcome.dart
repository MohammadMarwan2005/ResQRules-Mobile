import 'package:injectable/injectable.dart';

import '../../models/session/override_outcome.dart';
import '../../models/session/session_response.dart';

/// Pure logic deciding the UI consequence of a step (the toast contract):
/// - non-null override + guard → guard toast (name from the current chart)
/// - non-null override + jump  → jump toast (salience verbatim)
/// - null override + chart_id changed → silent swap (no toast)
/// - otherwise → none
@lazySingleton
class ResolveOverrideOutcome {
  const ResolveOverrideOutcome();

  OverrideOutcome call({
    required String? previousChartId,
    required SessionResponse response,
  }) {
    final event = response.overrideEvent;
    final screen = response.screen;

    if (event != null) {
      if (event.guardFired) {
        return OverrideOutcome.guard(chartTitle: screen.chartTitle);
      }
      return OverrideOutcome.jump(
        chartTitle: screen.chartTitle,
        salience: event.salience,
      );
    }

    if (previousChartId != null && previousChartId != screen.chartId) {
      return const OverrideOutcome.silent();
    }
    return const OverrideOutcome.none();
  }
}
