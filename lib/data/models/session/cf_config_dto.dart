import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/session/cf_config.dart';
import '../shared/bilingual_text_dto.dart';
import 'cf_choice_dto.dart';

part 'cf_config_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CfConfigDto {
  const CfConfigDto({
    required this.prompt,
    required this.choices,
    required this.threshold,
  });

  final BilingualTextDto prompt;
  final List<CfChoiceDto> choices;
  final double threshold;

  factory CfConfigDto.fromJson(Map<String, dynamic> json) =>
      _$CfConfigDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CfConfigDtoToJson(this);

  CfConfig toDomain() => CfConfig(
    prompt: prompt.toDomain(),
    choices: choices.map((c) => c.toDomain()).toList(),
    threshold: threshold,
  );
}
