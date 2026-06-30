import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/charts/chart.dart';
import '../shared/bilingual_text_dto.dart';

part 'chart_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ChartDto {
  const ChartDto({
    required this.chartId,
    required this.title,
    required this.urgency,
  });

  final String chartId;
  final BilingualTextDto title;
  final String urgency;

  factory ChartDto.fromJson(Map<String, dynamic> json) =>
      _$ChartDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ChartDtoToJson(this);

  Chart toDomain() =>
      Chart(chartId: chartId, title: title.toDomain(), urgency: urgency);
}
