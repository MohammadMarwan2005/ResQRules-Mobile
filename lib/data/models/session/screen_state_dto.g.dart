// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'screen_state_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScreenStateDto _$ScreenStateDtoFromJson(Map<String, dynamic> json) =>
    ScreenStateDto(
      type: json['type'] as String,
      nodeId: json['node_id'] as String,
      chartId: json['chart_id'] as String,
      chartTitle: BilingualTextDto.fromJson(
        json['chart_title'] as Map<String, dynamic>,
      ),
      page: (json['page'] as num).toInt(),
      text: BilingualTextDto.fromJson(json['text'] as Map<String, dynamic>),
      isTerminal: json['is_terminal'] as bool,
      options:
          (json['options'] as List<dynamic>?)
              ?.map((e) => OptionDto.fromJson(e as Map<String, dynamic>))
              .toList(),
      cf:
          json['cf'] == null
              ? null
              : CfConfigDto.fromJson(json['cf'] as Map<String, dynamic>),
      hemTier:
          json['hem_tier'] == null
              ? null
              : HemTierDto.fromJson(json['hem_tier'] as Map<String, dynamic>),
      stubTarget: json['stub_target'] as String?,
    );

Map<String, dynamic> _$ScreenStateDtoToJson(ScreenStateDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'node_id': instance.nodeId,
      'chart_id': instance.chartId,
      'chart_title': instance.chartTitle,
      'page': instance.page,
      'text': instance.text,
      'is_terminal': instance.isTerminal,
      'options': instance.options,
      'cf': instance.cf,
      'hem_tier': instance.hemTier,
      'stub_target': instance.stubTarget,
    };
