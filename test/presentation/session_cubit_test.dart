import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:resq_rules/domain/error/failure.dart';
import 'package:resq_rules/domain/models/session/override_outcome.dart';
import 'package:resq_rules/domain/models/session/screen_state.dart';
import 'package:resq_rules/domain/models/session/screen_type.dart';
import 'package:resq_rules/domain/models/shared/bilingual_text.dart';
import 'package:resq_rules/domain/repositories/session_repository.dart';
import 'package:resq_rules/domain/usecases/session/resolve_override_outcome.dart';
import 'package:resq_rules/presentation/features/session/cubit/session_cubit.dart';
import 'package:resq_rules/presentation/features/session/cubit/session_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../support/samples.dart';

class _MockSessionRepository extends Mock implements SessionRepository {}

ScreenState _screen(String chartId) => ScreenState(
  type: ScreenType.question,
  nodeId: 'n',
  chartId: chartId,
  chartTitle: const BilingualText(en: 'C', ar: 'C'),
  page: 1,
  text: const BilingualText(en: '?', ar: '?'),
  isTerminal: false,
);

SessionState _seed(String chartId) => SessionState(
  status: SessionStatus.ready,
  sessionId: 'sid',
  chartId: chartId,
  alive: true,
  screen: _screen(chartId),
);

void main() {
  late _MockSessionRepository repo;
  late SharedPreferences prefs;

  setUp(() async {
    repo = _MockSessionRepository();
    SharedPreferences.setMockInitialValues({});
    prefs = await SharedPreferences.getInstance();
  });

  SessionCubit build() =>
      SessionCubit(repo, const ResolveOverrideOutcome(), prefs);

  blocTest<SessionCubit, SessionState>(
    'start → loading then a ready instruction screen, no toast',
    setUp:
        () => when(
          () => repo.startSession('cpr_adult'),
        ).thenAnswer((_) async => Right(sampleResponse(kInstruction))),
    build: build,
    act: (cubit) => cubit.start('cpr_adult'),
    expect:
        () => [
          isA<SessionState>().having((s) => s.loading, 'loading', true),
          isA<SessionState>()
              .having((s) => s.loading, 'loading', false)
              .having((s) => s.screen?.type, 'type', ScreenType.instruction)
              .having((s) => s.toast, 'toast', isNull),
        ],
  );

  blocTest<SessionCubit, SessionState>(
    'danger "b" → jump toast (salience 100 → hemorrhage)',
    setUp:
        () => when(
          () => repo.step('sid', 'b'),
        ).thenAnswer((_) async => Right(sampleResponse(kOverrideJump))),
    build: build,
    seed: () => _seed('choking'),
    act: (cubit) => cubit.onDangerZone('b'),
    expect:
        () => [
          isA<SessionState>().having((s) => s.loading, 'loading', true),
          isA<SessionState>()
              .having((s) => s.toast, 'toast', isA<OverrideJump>())
              .having((s) => s.screen?.chartId, 'chartId', 'hemorrhage'),
        ],
  );

  blocTest<SessionCubit, SessionState>(
    'danger "b" while already in hemorrhage → guard toast',
    setUp:
        () => when(
          () => repo.step('sid', 'b'),
        ).thenAnswer((_) async => Right(sampleResponse(kOverrideGuard))),
    build: build,
    seed: () => _seed('hemorrhage'),
    act: (cubit) => cubit.onDangerZone('b'),
    expect:
        () => [
          isA<SessionState>().having((s) => s.loading, 'loading', true),
          isA<SessionState>().having(
            (s) => s.toast,
            'toast',
            isA<OverrideGuard>(),
          ),
        ],
  );

  blocTest<SessionCubit, SessionState>(
    'option-driven chart change with null override → silent (no toast)',
    setUp:
        () => when(
          () => repo.step('sid', '1'),
        ).thenAnswer((_) async => Right(sampleResponse(kSilentJump))),
    build: build,
    seed: () => _seed('choking'),
    act: (cubit) => cubit.step('1'),
    expect:
        () => [
          isA<SessionState>().having((s) => s.loading, 'loading', true),
          isA<SessionState>()
              .having((s) => s.toast, 'toast', isNull)
              .having((s) => s.screen?.chartId, 'chartId', 'cpr_adult'),
        ],
  );

  blocTest<SessionCubit, SessionState>(
    'engine error keeps the screen + shows the retry Snackbar',
    setUp:
        () => when(
          () => repo.step('sid', '1'),
        ).thenAnswer((_) async => Left(const Failure.engine())),
    build: build,
    seed: () => _seed('choking'),
    act: (cubit) => cubit.step('1'),
    expect:
        () => [
          isA<SessionState>().having((s) => s.loading, 'loading', true),
          isA<SessionState>()
              .having((s) => s.errorVisible, 'errorVisible', true)
              .having((s) => s.loading, 'loading', false),
        ],
    verify: (cubit) => expect(cubit.state.screen, isNotNull),
  );

  blocTest<SessionCubit, SessionState>(
    'session_ended → marks ended + alive false, no error Snackbar',
    setUp:
        () => when(
          () => repo.step('sid', '1'),
        ).thenAnswer((_) async => Left(const Failure.sessionEnded())),
    build: build,
    seed: () => _seed('choking'),
    act: (cubit) => cubit.step('1'),
    expect:
        () => [
          isA<SessionState>().having((s) => s.loading, 'loading', true),
          isA<SessionState>()
              .having((s) => s.status, 'status', SessionStatus.ended)
              .having((s) => s.alive, 'alive', false)
              .having((s) => s.errorVisible, 'errorVisible', false),
        ],
  );
}
