import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_typography.dart';

/// App-wide [ThemeData]. Most components are styled directly from the token
/// classes; this sets the shared colour scheme, fonts, and background.
abstract final class AppTheme {
  static ThemeData get light {
    final scheme = ColorScheme.fromSeed(seedColor: AppColors.primary).copyWith(
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      surface: AppColors.card,
      onSurface: AppColors.textPrimary,
      error: AppColors.primary,
    );
    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: AppColors.page,
      textTheme: AppTypography.textTheme,
      splashFactory: InkRipple.splashFactory,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
    );
  }
}
