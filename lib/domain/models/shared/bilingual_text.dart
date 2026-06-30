import 'package:freezed_annotation/freezed_annotation.dart';

import 'lang.dart';

part 'bilingual_text.freezed.dart';

/// A `{en, ar}` text pair. Every clinical string from the API arrives bilingual;
/// the active [Lang] decides which is shown — no server round-trip.
@freezed
class BilingualText with _$BilingualText {
  const BilingualText._();

  const factory BilingualText({required String en, required String ar}) =
      _BilingualText;

  /// The string for [lang] (Arabic for RTL, English otherwise).
  String resolve(Lang lang) => lang.isRtl ? ar : en;
}
