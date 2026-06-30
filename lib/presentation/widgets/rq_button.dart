import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// Primary elevated action — full-width 56dp, red fill, white label.
/// Disabled → neutral fill + secondary text, no shadow. Loading → spinner only.
class RqButton extends StatelessWidget {
  const RqButton({
    required this.label,
    this.onPressed,
    this.loading = false,
    this.fullWidth = true,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool loading;
  final bool fullWidth;

  bool get _enabled => onPressed != null && !loading;

  @override
  Widget build(BuildContext context) {
    final Widget child =
        loading
            ? const SizedBox(
              width: 22,
              height: 22,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColors.onPrimary,
              ),
            )
            : Text(
              label,
              textAlign: TextAlign.center,
              style: AppTypography.label.copyWith(
                color: _enabled ? AppColors.onPrimary : AppColors.textSecondary,
              ),
            );

    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: Material(
        color: _enabled ? AppColors.primary : AppColors.border,
        borderRadius: AppRadius.brMd,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: _enabled ? onPressed : null,
          child: Container(
            height: AppSpacing.touchMin,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4),
            child: child,
          ),
        ),
      ),
    );
  }
}
