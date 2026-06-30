import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/session/danger_panel_item.dart';
import '../shared/bilingual_text_dto.dart';

part 'danger_panel_item_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DangerPanelItemDto {
  const DangerPanelItemDto({
    required this.key,
    required this.label,
    required this.severity,
  });

  final String key;
  final BilingualTextDto label;
  final String severity;

  factory DangerPanelItemDto.fromJson(Map<String, dynamic> json) =>
      _$DangerPanelItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$DangerPanelItemDtoToJson(this);

  DangerPanelItem toDomain() =>
      DangerPanelItem(key: key, label: label.toDomain(), severity: severity);
}
