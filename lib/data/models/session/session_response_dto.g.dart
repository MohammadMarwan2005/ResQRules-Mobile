// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SessionResponseDto _$SessionResponseDtoFromJson(Map<String, dynamic> json) =>
    SessionResponseDto(
      sessionId: json['session_id'] as String,
      alive: json['alive'] as bool,
      screen: ScreenStateDto.fromJson(json['screen'] as Map<String, dynamic>),
      overrideEvent:
          json['override_event'] == null
              ? null
              : OverrideEventDto.fromJson(
                json['override_event'] as Map<String, dynamic>,
              ),
      dangerPanel:
          (json['danger_panel'] as List<dynamic>)
              .map(
                (e) => DangerPanelItemDto.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
    );

Map<String, dynamic> _$SessionResponseDtoToJson(SessionResponseDto instance) =>
    <String, dynamic>{
      'session_id': instance.sessionId,
      'alive': instance.alive,
      'screen': instance.screen,
      'override_event': instance.overrideEvent,
      'danger_panel': instance.dangerPanel,
    };
