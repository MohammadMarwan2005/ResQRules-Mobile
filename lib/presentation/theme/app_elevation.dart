import 'package:flutter/widgets.dart';

/// Elevation tokens — `ds/tokens/elevation.css`. Three levels, panels cast upward.
abstract final class AppElevation {
  /// level-1 — content cards: `0 2 8 rgba(0,0,0,0.10)` (downward).
  static const List<BoxShadow> card = [
    BoxShadow(color: Color(0x1A000000), offset: Offset(0, 2), blurRadius: 8),
  ];

  /// level-2 — bottom panels: `0 -2 12 rgba(0,0,0,0.20)` (upward).
  static const List<BoxShadow> panel = [
    BoxShadow(color: Color(0x33000000), offset: Offset(0, -2), blurRadius: 12),
  ];

  /// level-3 — bottom sheets: `0 -4 24 rgba(0,0,0,0.25)` (upward).
  static const List<BoxShadow> sheet = [
    BoxShadow(color: Color(0x40000000), offset: Offset(0, -4), blurRadius: 24),
  ];
}
