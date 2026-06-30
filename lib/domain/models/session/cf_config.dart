import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/bilingual_text.dart';
import 'cf_choice.dart';

part 'cf_config.freezed.dart';

/// Certainty-factor config — only present on `cf_question` screens.
@freezed
class CfConfig with _$CfConfig {
  const factory CfConfig({
    required BilingualText prompt,
    required List<CfChoice> choices,
    required double threshold,
  }) = _CfConfig;
}
