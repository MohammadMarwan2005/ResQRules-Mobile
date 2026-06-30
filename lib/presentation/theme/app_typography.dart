import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

/// Typography tokens — `ds/tokens/typography.css`.
/// Noto Sans (Latin) with Noto Sans Arabic as a metrics-identical fallback, so
/// Arabic glyphs render and Latin acronyms/numerals stay Latin even in AR mode.
/// Weights: 400 / 600 / 700 only.
abstract final class AppTypography {
  static final String? _arabicFamily = GoogleFonts.notoSansArabic().fontFamily;

  static TextStyle _style(
    double size,
    FontWeight weight,
    double height, [
    Color color = AppColors.textPrimary,
  ]) {
    final style = GoogleFonts.notoSans(
      fontSize: size,
      fontWeight: weight,
      height: height,
      color: color,
    );
    return _arabicFamily == null
        ? style
        : style.copyWith(fontFamilyFallback: [_arabicFamily!]);
  }

  static final TextStyle display = _style(22, FontWeight.w700, 1.3);
  static final TextStyle heading = _style(18, FontWeight.w600, 1.4);
  static final TextStyle body = _style(16, FontWeight.w400, 1.6);
  static final TextStyle bodyBold = _style(16, FontWeight.w600, 1.5);
  static final TextStyle label = _style(15, FontWeight.w600, 1.4);
  static final TextStyle secondary = _style(
    14,
    FontWeight.w400,
    1.5,
    AppColors.textSecondary,
  );
  static final TextStyle caption = _style(
    12,
    FontWeight.w400,
    1.4,
    AppColors.textSecondary,
  );
  static final TextStyle micro = _style(10, FontWeight.w600, 1.4);

  static TextTheme get textTheme => TextTheme(
    displaySmall: display,
    headlineSmall: heading,
    titleMedium: bodyBold,
    bodyLarge: body,
    bodyMedium: secondary,
    labelLarge: label,
    bodySmall: caption,
  );
}
