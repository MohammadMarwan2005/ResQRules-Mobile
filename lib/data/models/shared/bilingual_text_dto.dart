import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/shared/bilingual_text.dart';

part 'bilingual_text_dto.g.dart';

@JsonSerializable()
class BilingualTextDto {
  const BilingualTextDto({required this.en, required this.ar});

  final String en;
  final String ar;

  factory BilingualTextDto.fromJson(Map<String, dynamic> json) =>
      _$BilingualTextDtoFromJson(json);

  Map<String, dynamic> toJson() => _$BilingualTextDtoToJson(this);

  BilingualText toDomain() => BilingualText(en: en, ar: ar);
}
