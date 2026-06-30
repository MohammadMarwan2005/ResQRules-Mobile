import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/session/screen_state.dart';
import '../../../domain/models/session/screen_type.dart';
import '../shared/bilingual_text_dto.dart';
import 'cf_config_dto.dart';
import 'hem_tier_dto.dart';
import 'option_dto.dart';

part 'screen_state_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ScreenStateDto {
  const ScreenStateDto({
    required this.type,
    required this.nodeId,
    required this.chartId,
    required this.chartTitle,
    required this.page,
    required this.text,
    required this.isTerminal,
    this.options,
    this.cf,
    this.hemTier,
    this.stubTarget,
  });

  final String type;
  final String nodeId;
  final String chartId;
  final BilingualTextDto chartTitle;
  final int page;
  final BilingualTextDto text;
  final bool isTerminal;
  final List<OptionDto>? options;
  final CfConfigDto? cf;
  final HemTierDto? hemTier;
  final String? stubTarget;

  factory ScreenStateDto.fromJson(Map<String, dynamic> json) =>
      _$ScreenStateDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ScreenStateDtoToJson(this);

  ScreenState toDomain() => ScreenState(
    type: ScreenType.fromString(type),
    nodeId: nodeId,
    chartId: chartId,
    chartTitle: chartTitle.toDomain(),
    page: page,
    text: text.toDomain(),
    isTerminal: isTerminal,
    options: options?.map((o) => o.toDomain()).toList(),
    cf: cf?.toDomain(),
    hemTier: hemTier?.toDomain(),
    stubTarget: stubTarget,
  );
}
