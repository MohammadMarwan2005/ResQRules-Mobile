import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/session/cf_choice.dart';
import '../shared/bilingual_text_dto.dart';

part 'cf_choice_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CfChoiceDto {
  const CfChoiceDto({
    required this.id,
    required this.key,
    required this.label,
    required this.cfValue,
  });

  final int id;
  final String key;
  final BilingualTextDto label;
  final double cfValue;

  factory CfChoiceDto.fromJson(Map<String, dynamic> json) =>
      _$CfChoiceDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CfChoiceDtoToJson(this);

  CfChoice toDomain() =>
      CfChoice(id: id, key: key, label: label.toDomain(), cfValue: cfValue);
}
