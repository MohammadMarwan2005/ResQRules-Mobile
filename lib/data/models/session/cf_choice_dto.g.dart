// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cf_choice_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CfChoiceDto _$CfChoiceDtoFromJson(Map<String, dynamic> json) => CfChoiceDto(
  id: (json['id'] as num).toInt(),
  key: json['key'] as String,
  label: BilingualTextDto.fromJson(json['label'] as Map<String, dynamic>),
  cfValue: (json['cf_value'] as num).toDouble(),
);

Map<String, dynamic> _$CfChoiceDtoToJson(CfChoiceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'label': instance.label,
      'cf_value': instance.cfValue,
    };
