import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/session/danger_panel_item.dart';
import '../../../../domain/models/session/override_outcome.dart';
import '../../../../domain/models/session/screen_state.dart';

part 'session_state.freezed.dart';

enum SessionStatus { initial, ready, ended }

/// Single session state object. [toast] is non-null only for jump/guard
/// outcomes (drives the OverrideToast); silent/none never set it.
@freezed
class SessionState with _$SessionState {
  const factory SessionState({
    @Default(SessionStatus.initial) SessionStatus status,
    String? sessionId,
    String? chartId,
    ScreenState? screen,
    @Default(<DangerPanelItem>[]) List<DangerPanelItem> dangerPanel,
    @Default(false) bool loading,
    OverrideOutcome? toast,
    @Default(false) bool errorVisible,
    @Default(true) bool alive,
  }) = _SessionState;
}
