import 'package:flutter/widgets.dart';

/// Color tokens — ported verbatim from
/// `reference/design/design_system/ds/tokens/colors.css`.
abstract final class AppColors {
  // Primary (Red Cross red)
  static const Color primary = Color(0xFFCC0000);
  static const Color primaryDark = Color(0xFF990000);
  static const Color primaryLight = Color(0xFFFF3333);
  static const Color primary100 = Color(0xFFFFEAEA);

  // Success
  static const Color success = Color(0xFF2D6A4F);
  static const Color success100 = Color(0xFFF0FAF5);

  // Warning
  static const Color warning = Color(0xFFE85D04);
  static const Color warning100 = Color(0xFFFFF3EB);

  // Neutral
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF4A4A4A);
  static const Color border = Color(0xFFE0E0E0);
  static const Color divider = Color(0xFFE0E0E0);
  static const Color surface = Color(0xFFF5F5F5);
  static const Color card = Color(0xFFFFFFFF);
  static const Color page = Color(0xFFFFFFFF);

  // On-color
  static const Color onPrimary = Color(0xFFFFFFFF);

  // Scrim (rgba(0,0,0,0.45))
  static const Color scrim = Color(0x73000000);

  // Urgency mapping
  static const Color urgencyCritical = primary;
  static const Color urgencyHigh = warning;
  static const Color urgencyStandard = textSecondary;
}
