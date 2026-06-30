// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hem_tier_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HemTierDto _$HemTierDtoFromJson(Map<String, dynamic> json) => HemTierDto(
  current: (json['current'] as num).toInt(),
  maxTier: (json['max_tier'] as num).toInt(),
  terminal: json['terminal'] as bool,
  intervention: BilingualTextDto.fromJson(
    json['intervention'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$HemTierDtoToJson(HemTierDto instance) =>
    <String, dynamic>{
      'current': instance.current,
      'max_tier': instance.maxTier,
      'terminal': instance.terminal,
      'intervention': instance.intervention,
    };
