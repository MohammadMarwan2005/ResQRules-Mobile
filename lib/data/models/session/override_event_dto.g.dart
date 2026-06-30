// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'override_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OverrideEventDto _$OverrideEventDtoFromJson(Map<String, dynamic> json) =>
    OverrideEventDto(
      kind: json['kind'] as String,
      salience: (json['salience'] as num).toInt(),
      jumpedToChart: json['jumped_to_chart'] as String?,
      guardFired: json['guard_fired'] as bool,
    );

Map<String, dynamic> _$OverrideEventDtoToJson(OverrideEventDto instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'salience': instance.salience,
      'jumped_to_chart': instance.jumpedToChart,
      'guard_fired': instance.guardFired,
    };
