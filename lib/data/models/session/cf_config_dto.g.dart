// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cf_config_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CfConfigDto _$CfConfigDtoFromJson(Map<String, dynamic> json) => CfConfigDto(
  prompt: BilingualTextDto.fromJson(json['prompt'] as Map<String, dynamic>),
  choices:
      (json['choices'] as List<dynamic>)
          .map((e) => CfChoiceDto.fromJson(e as Map<String, dynamic>))
          .toList(),
  threshold: (json['threshold'] as num).toDouble(),
);

Map<String, dynamic> _$CfConfigDtoToJson(CfConfigDto instance) =>
    <String, dynamic>{
      'prompt': instance.prompt,
      'choices': instance.choices,
      'threshold': instance.threshold,
    };
