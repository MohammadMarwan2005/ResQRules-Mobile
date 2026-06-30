// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'danger_panel_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DangerPanelItemDto _$DangerPanelItemDtoFromJson(Map<String, dynamic> json) =>
    DangerPanelItemDto(
      key: json['key'] as String,
      label: BilingualTextDto.fromJson(json['label'] as Map<String, dynamic>),
      severity: json['severity'] as String,
    );

Map<String, dynamic> _$DangerPanelItemDtoToJson(DangerPanelItemDto instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'severity': instance.severity,
    };
