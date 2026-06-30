import 'package:flutter/widgets.dart';
import 'package:lucide_icons/lucide_icons.dart';

/// Semantic mapping of the app's icons to Lucide glyphs (see design README).
abstract final class AppIcons {
  static const IconData bleeding = LucideIcons.droplet;
  static const IconData notBreathing = LucideIcons.wind;
  static const IconData noPulse = LucideIcons.activity;
  static const IconData unconscious = LucideIcons.user;
  static const IconData jump = LucideIcons.zap;
  static const IconData guard = LucideIcons.check;
  static const IconData backLtr = LucideIcons.arrowLeft;
  static const IconData backRtl = LucideIcons.arrowRight;
  static const IconData reset = LucideIcons.rotateCcw;

  /// Icon for an API danger key (`b`/`n`/`p`/`u`).
  static IconData forDangerKey(String key) => switch (key) {
    'b' => bleeding,
    'n' => notBreathing,
    'p' => noPulse,
    'u' => unconscious,
    _ => unconscious,
  };
}
