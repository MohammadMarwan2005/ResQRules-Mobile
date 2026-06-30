import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/bilingual_text.dart';
import 'cf_config.dart';
import 'hem_tier_info.dart';
import 'option_item.dart';
import 'screen_type.dart';

part 'screen_state.freezed.dart';

/// The stable per-screen contract. [type] is the discriminator that selects the
/// body widget; the rest of the shell never changes.
@freezed
class ScreenState with _$ScreenState {
  const factory ScreenState({
    required ScreenType type,
    required String nodeId,
    required String chartId,
    required BilingualText chartTitle,
    required int page,
    required BilingualText text,
    required bool isTerminal,
    List<OptionItem>? options,
    CfConfig? cf,
    HemTierInfo? hemTier,
    String? stubTarget,
  }) = _ScreenState;
}
