import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/session/option_item.dart';
import '../shared/bilingual_text_dto.dart';

part 'option_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OptionDto {
  const OptionDto({required this.id, required this.label});

  final int id;
  final BilingualTextDto label;

  factory OptionDto.fromJson(Map<String, dynamic> json) =>
      _$OptionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OptionDtoToJson(this);

  OptionItem toDomain() => OptionItem(id: id, label: label.toDomain());
}
