/// Spacing & layout tokens — `ds/tokens/spacing.css`. Strict 8dp grid.
abstract final class AppSpacing {
  // Scale
  static const double s1 = 4;
  static const double s2 = 8;
  static const double s3 = 12;
  static const double s4 = 16;
  static const double s5 = 20;
  static const double s6 = 24;
  static const double s8 = 32;

  // Semantic layout aliases
  static const double screenMargin = 16;
  static const double screenTopPad = 12;
  static const double cardPadding = 20;
  static const double gapSm = 8;
  static const double gapMd = 12; // between option buttons
  static const double gapLg = 16; // between card and buttons
  static const double gapSection = 24;
  static const double cfButtonGap = 10;

  // Touch & sizing
  static const double touchMin = 56;
  static const double appBarHeight = 56;
  static const double dangerPanelHeight = 64;
  static const double loadingBarHeight = 3;
  static const double homeIndicator = 34;
}
