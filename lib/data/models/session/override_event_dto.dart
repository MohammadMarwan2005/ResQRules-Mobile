import 'package:json_annotation/json_annotation.dart';

import '../../../domain/models/session/override_event.dart';

part 'override_event_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class OverrideEventDto {
  const OverrideEventDto({
    required this.kind,
    required this.salience,
    required this.jumpedToChart,
    required this.guardFired,
  });

  final String kind;
  final int salience;
  final String? jumpedToChart;
  final bool guardFired;

  factory OverrideEventDto.fromJson(Map<String, dynamic> json) =>
      _$OverrideEventDtoFromJson(json);

  Map<String, dynamic> toJson() => _$OverrideEventDtoToJson(this);

  OverrideEvent toDomain() => OverrideEvent(
    kind: kind,
    salience: salience,
    jumpedToChart: jumpedToChart,
    guardFired: guardFired,
  );
}
