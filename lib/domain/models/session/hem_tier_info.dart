import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/bilingual_text.dart';

part 'hem_tier_info.freezed.dart';

/// Hemorrhage tier progress — only present on `hem_question` screens.
/// [current] is the tier just applied (1..3); [terminal] is true at tier 3
/// (tourniquet — escalation exhausted).
@freezed
class HemTierInfo with _$HemTierInfo {
  const factory HemTierInfo({
    required int current,
    required int maxTier,
    required bool terminal,
    required BilingualText intervention,
  }) = _HemTierInfo;
}
