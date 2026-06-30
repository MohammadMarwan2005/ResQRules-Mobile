import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/bilingual_text.dart';

part 'chart.freezed.dart';

/// A clinical protocol chart shown on Home.
@freezed
class Chart with _$Chart {
  const factory Chart({
    required String chartId,
    required BilingualText title,
    required String urgency, // 'critical' | 'high' | 'standard'
  }) = _Chart;
}
