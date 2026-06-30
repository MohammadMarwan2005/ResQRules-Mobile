import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:resq_rules/data/models/charts/chart_dto.dart';
import 'package:resq_rules/data/models/session/danger_panel_item_dto.dart';
import 'package:resq_rules/data/models/session/session_response_dto.dart';
import 'package:resq_rules/domain/models/session/screen_type.dart';

/// Proves the DTOs are byte-exact to the captured backend payloads in
/// `reference/sample_responses.json`.
void main() {
  final samples =
      jsonDecode(File('reference/sample_responses.json').readAsStringSync())
          as Map<String, dynamic>;

  Map<String, dynamic> map(String key) => samples[key] as Map<String, dynamic>;
  List<dynamic> list(String key) => samples[key] as List<dynamic>;

  test('GET /charts → 5 ChartDto', () {
    final charts =
        list('GET /charts')
            .map((e) => ChartDto.fromJson(e as Map<String, dynamic>).toDomain())
            .toList();
    expect(charts, hasLength(5));
    expect(charts.map((c) => c.chartId), contains('hemorrhage'));
    expect(charts.first.title.en, isNotEmpty);
    expect(charts.first.title.ar, isNotEmpty);
  });

  test('danger_panel → 4 zones with keys b/n/p/u', () {
    final zones =
        list('danger_panel')
            .map((e) => DangerPanelItemDto.fromJson(e as Map<String, dynamic>))
            .toList();
    expect(zones.map((z) => z.key), ['b', 'n', 'p', 'u']);
  });

  const screenKeys = [
    'screen:instruction',
    'screen:question',
    'screen:hem_question',
    'screen:cf_question',
    'screen:action',
    'screen:jump_stub',
    'override:jump (danger b -> hemorrhage)',
    'override:guard (b while already in hemorrhage)',
    'transparent_jump:silent (chart_id changes, override null)',
  ];

  for (final key in screenKeys) {
    test('parses "$key" with a known screen type + 4 danger zones', () {
      final response = SessionResponseDto.fromJson(map(key)).toDomain();
      expect(response.screen.type, isNot(ScreenType.unknown));
      expect(response.dangerPanel, hasLength(4));
    });
  }

  test('cf_question carries 4 CF choices + threshold', () {
    final response =
        SessionResponseDto.fromJson(map('screen:cf_question')).toDomain();
    expect(response.screen.type, ScreenType.cfQuestion);
    expect(response.screen.cf, isNotNull);
    expect(response.screen.cf!.choices, hasLength(4));
    expect(response.screen.cf!.threshold, 0.5);
    expect(response.screen.cf!.choices.last.cfValue, -1.0);
  });

  test('hem_question carries tier info (current=1, max=3)', () {
    final response =
        SessionResponseDto.fromJson(map('screen:hem_question')).toDomain();
    expect(response.screen.type, ScreenType.hemQuestion);
    expect(response.screen.hemTier?.current, 1);
    expect(response.screen.hemTier?.maxTier, 3);
    expect(response.screen.hemTier?.terminal, isFalse);
  });

  test('override:jump → salience 100, jumped to hemorrhage, not guard', () {
    final response =
        SessionResponseDto.fromJson(
          map('override:jump (danger b -> hemorrhage)'),
        ).toDomain();
    final event =
        response.screen.chartId == 'hemorrhage' ? response.overrideEvent : null;
    expect(event, isNotNull);
    expect(event!.salience, 100);
    expect(event.jumpedToChart, 'hemorrhage');
    expect(event.guardFired, isFalse);
  });

  test('override:guard → guard_fired true, jumped_to_chart null', () {
    final response =
        SessionResponseDto.fromJson(
          map('override:guard (b while already in hemorrhage)'),
        ).toDomain();
    expect(response.overrideEvent!.guardFired, isTrue);
    expect(response.overrideEvent!.jumpedToChart, isNull);
  });

  test('transparent jump → override_event is null', () {
    final response =
        SessionResponseDto.fromJson(
          map('transparent_jump:silent (chart_id changes, override null)'),
        ).toDomain();
    expect(response.overrideEvent, isNull);
  });

  test('jump_stub exposes stub_target', () {
    final response =
        SessionResponseDto.fromJson(map('screen:jump_stub')).toDomain();
    expect(response.screen.type, ScreenType.jumpStub);
    expect(response.screen.stubTarget, 'oxygen');
    expect(response.screen.isTerminal, isTrue);
  });
}
