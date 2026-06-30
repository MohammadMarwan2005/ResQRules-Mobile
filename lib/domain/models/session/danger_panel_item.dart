import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/bilingual_text.dart';

part 'danger_panel_item.freezed.dart';

/// One persistent danger-panel zone returned with every response.
@freezed
class DangerPanelItem with _$DangerPanelItem {
  const factory DangerPanelItem({
    required String key, // b | n | p | u
    required BilingualText label,
    required String severity, // critical | high
  }) = _DangerPanelItem;
}
