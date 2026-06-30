import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/bilingual_text.dart';

part 'cf_choice.freezed.dart';

/// One certainty-factor confidence option.
@freezed
class CfChoice with _$CfChoice {
  const factory CfChoice({
    required int id,
    required String key,
    required BilingualText label,
    required double cfValue,
  }) = _CfChoice;
}
