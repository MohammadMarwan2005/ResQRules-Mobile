import 'package:freezed_annotation/freezed_annotation.dart';

import 'danger_panel_item.dart';
import 'override_event.dart';
import 'screen_state.dart';

part 'session_response.freezed.dart';

/// The full response envelope for every session endpoint.
@freezed
class SessionResponse with _$SessionResponse {
  const factory SessionResponse({
    required String sessionId,
    required bool alive,
    required ScreenState screen,
    OverrideEvent? overrideEvent,
    required List<DangerPanelItem> dangerPanel,
  }) = _SessionResponse;
}
