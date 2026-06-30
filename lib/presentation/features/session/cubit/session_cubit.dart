import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../domain/error/failure.dart';
import '../../../../domain/models/session/session_response.dart';
import '../../../../domain/repositories/session_repository.dart';
import '../../../../domain/usecases/session/resolve_override_outcome.dart';
import 'session_state.dart';

/// Orchestrates the protocol walkthrough. Every transition goes through the
/// loading gate; the toast is driven exclusively by the resolved override
/// outcome; errors keep the last screen visible and stash a retry.
@injectable
class SessionCubit extends Cubit<SessionState> {
  SessionCubit(this._repo, this._resolveOutcome, this._prefs)
    : super(const SessionState());

  final SessionRepository _repo;
  final ResolveOverrideOutcome _resolveOutcome;
  final SharedPreferences _prefs;

  static const String _keySession = 'session_id';
  static const String _keyChart = 'session_chart';

  Timer? _toastTimer;
  void Function()? _lastAction;

  Future<void> start(String chartId) async {
    emit(state.copyWith(loading: true, chartId: chartId, errorVisible: false));
    final result = await _repo.startSession(chartId);
    _onResult(result, previousChartId: null, retry: () => start(chartId));
  }

  Future<void> step(String input) async {
    final id = state.sessionId;
    if (id == null || !state.alive) return;
    final previousChartId = state.screen?.chartId;
    emit(state.copyWith(loading: true, errorVisible: false));
    final result = await _repo.step(id, input);
    _onResult(
      result,
      previousChartId: previousChartId,
      retry: () => step(input),
    );
  }

  void onDangerZone(String key) => unawaited(step(key));

  Future<void> reset({String? chartId}) async {
    final id = state.sessionId;
    if (id == null) {
      final target = chartId ?? state.chartId;
      if (target != null) return start(target);
      return;
    }
    _dismissToast();
    emit(state.copyWith(loading: true, errorVisible: false));
    final result = await _repo.reset(id, chartId: chartId);
    _onResult(
      result,
      previousChartId: null,
      retry: () => reset(chartId: chartId),
    );
  }

  Future<void> reconnect() async {
    final id = state.sessionId;
    if (id == null || state.loading || state.status == SessionStatus.ended) {
      return;
    }
    final result = await _repo.getSession(id);
    _onResult(result, previousChartId: state.screen?.chartId, retry: reconnect);
  }

  Future<void> endSession() async {
    _dismissToast();
    final id = state.sessionId;
    if (id != null) await _repo.endSession(id);
    await _clearPersisted();
    emit(state.copyWith(status: SessionStatus.ended, alive: false));
  }

  void retryLast() => _lastAction?.call();

  void dismissToast() => _dismissToast();

  void _onResult(
    Either<Failure, SessionResponse> result, {
    required String? previousChartId,
    required void Function() retry,
  }) {
    result.match(
      (failure) {
        _lastAction = retry;
        failure.maybeWhen(
          sessionEnded:
              (_) => emit(
                state.copyWith(
                  loading: false,
                  alive: false,
                  status: SessionStatus.ended,
                  errorVisible: false,
                ),
              ),
          orElse:
              () => emit(state.copyWith(loading: false, errorVisible: true)),
        );
      },
      (response) {
        _lastAction = null;
        final outcome = _resolveOutcome(
          previousChartId: previousChartId,
          response: response,
        );
        final toast = outcome.maybeWhen(
          jump: (_, __) => outcome,
          guard: (_) => outcome,
          orElse: () => null,
        );
        unawaited(_persist(response.sessionId, response.screen.chartId));
        emit(
          state.copyWith(
            status: SessionStatus.ready,
            loading: false,
            errorVisible: false,
            sessionId: response.sessionId,
            chartId: response.screen.chartId,
            screen: response.screen,
            dangerPanel: response.dangerPanel,
            alive: response.alive,
            toast: toast,
          ),
        );
        if (toast != null) _scheduleToastHide();
      },
    );
  }

  void _scheduleToastHide() {
    _toastTimer?.cancel();
    _toastTimer = Timer(const Duration(milliseconds: 2500), () {
      if (!isClosed) emit(state.copyWith(toast: null));
    });
  }

  void _dismissToast() {
    _toastTimer?.cancel();
    if (state.toast != null) emit(state.copyWith(toast: null));
  }

  Future<void> _persist(String sessionId, String chartId) async {
    await _prefs.setString(_keySession, sessionId);
    await _prefs.setString(_keyChart, chartId);
  }

  Future<void> _clearPersisted() async {
    await _prefs.remove(_keySession);
    await _prefs.remove(_keyChart);
  }

  @override
  Future<void> close() {
    _toastTimer?.cancel();
    return super.close();
  }
}
