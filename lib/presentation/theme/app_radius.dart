import 'package:flutter/widgets.dart';

/// Border-radius tokens — `ds/tokens/radius.css`.
abstract final class AppRadius {
  static const double sm = 6; // badges, tier dots
  static const double md = 8; // buttons, inputs
  static const double lg = 12; // cards, sheets
  static const double full = 9999; // pills

  static const BorderRadius brSm = BorderRadius.all(Radius.circular(sm));
  static const BorderRadius brMd = BorderRadius.all(Radius.circular(md));
  static const BorderRadius brLg = BorderRadius.all(Radius.circular(lg));
  static const BorderRadius brFull = BorderRadius.all(Radius.circular(full));
}
