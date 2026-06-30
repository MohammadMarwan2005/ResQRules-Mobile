import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/bilingual_text.dart';

part 'option_item.freezed.dart';

/// A selectable answer on a question/instruction screen.
@freezed
class OptionItem with _$OptionItem {
  const factory OptionItem({required int id, required BilingualText label}) =
      _OptionItem;
}
