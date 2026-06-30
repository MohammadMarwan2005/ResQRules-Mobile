/// Active display language. Pure domain — no Flutter import, so the domain
/// layer stays self-contained.
enum Lang {
  en,
  ar;

  /// ISO code used for persistence and [Locale] construction.
  String get code => name;

  bool get isRtl => this == Lang.ar;

  static Lang fromCode(String? code) => code == 'ar' ? Lang.ar : Lang.en;
}
