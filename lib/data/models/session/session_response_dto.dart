import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/session/session_response.dart';
import 'danger_panel_item_dto.dart';
import 'override_event_dto.dart';
import 'screen_state_dto.dart';

part 'session_response_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SessionResponseDto {
  const SessionResponseDto({
    required this.sessionId,
    required this.alive,
    required this.screen,
    required this.overrideEvent,
    required this.dangerPanel,
  });

  final String sessionId;
  final bool alive;
  final ScreenStateDto screen;
  final OverrideEventDto? overrideEvent;
  final List<DangerPanelItemDto> dangerPanel;

  factory SessionResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SessionResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SessionResponseDtoToJson(this);

  SessionResponse toDomain() => SessionResponse(
    sessionId: sessionId,
    alive: alive,
    screen: screen.toDomain(),
    overrideEvent: overrideEvent?.toDomain(),
    dangerPanel: dangerPanel.map((d) => d.toDomain()).toList(),
  );
}
