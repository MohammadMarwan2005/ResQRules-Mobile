// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartDto _$ChartDtoFromJson(Map<String, dynamic> json) => ChartDto(
  chartId: json['chart_id'] as String,
  title: BilingualTextDto.fromJson(json['title'] as Map<String, dynamic>),
  urgency: json['urgency'] as String,
);

Map<String, dynamic> _$ChartDtoToJson(ChartDto instance) => <String, dynamic>{
  'chart_id': instance.chartId,
  'title': instance.title,
  'urgency': instance.urgency,
};
