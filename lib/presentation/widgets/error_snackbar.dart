import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// Non-blocking tap-to-retry error bar (neutral-900), docked above the
/// DangerPanel. Tapping fires [onRetry]. Never a full-screen error — the last
/// clinical content stays visible behind it.
class ErrorSnackbar extends StatelessWidget {
  const ErrorSnackbar({required this.message, this.onRetry, super.key});

  final String message;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.textPrimary,
      child: InkWell(
        onTap: onRetry,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.s3,
            horizontal: AppSpacing.s4,
          ),
          child: Text(
            message,
            style: AppTypography.secondary.copyWith(color: AppColors.onPrimary),
          ),
        ),
      ),
    );
  }
}
