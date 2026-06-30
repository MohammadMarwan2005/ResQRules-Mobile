import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/session/hem_tier_info.dart';
import '../shared/bilingual_text_dto.dart';

part 'hem_tier_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class HemTierDto {
  const HemTierDto({
    required this.current,
    required this.maxTier,
    required this.terminal,
    required this.intervention,
  });

  final int current;
  final int maxTier;
  final bool terminal;
  final BilingualTextDto intervention;

  factory HemTierDto.fromJson(Map<String, dynamic> json) =>
      _$HemTierDtoFromJson(json);

  Map<String, dynamic> toJson() => _$HemTierDtoToJson(this);

  HemTierInfo toDomain() => HemTierInfo(
    current: current,
    maxTier: maxTier,
    terminal: terminal,
    intervention: intervention.toDomain(),
  );
}
