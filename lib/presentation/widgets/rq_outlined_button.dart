import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

enum RqOutlinedVariant { primary, success, warning, neutral }

/// Full-width 56dp outlined button, 1.5dp border, transparent fill.
/// Variant sets the border + text colour.
class RqOutlinedButton extends StatelessWidget {
  const RqOutlinedButton({
    required this.label,
    this.onPressed,
    this.variant = RqOutlinedVariant.primary,
    this.fullWidth = true,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final RqOutlinedVariant variant;
  final bool fullWidth;

  Color get _color => switch (variant) {
    RqOutlinedVariant.primary => AppColors.primary,
    RqOutlinedVariant.success => AppColors.success,
    RqOutlinedVariant.warning => AppColors.warning,
    RqOutlinedVariant.neutral => AppColors.textPrimary,
  };

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null;
    final color = enabled ? _color : AppColors.textSecondary;

    return SizedBox(
      width: fullWidth ? double.infinity : null,
      child: Material(
        color: Colors.transparent,
        borderRadius: AppRadius.brMd,
        child: InkWell(
          onTap: onPressed,
          borderRadius: AppRadius.brMd,
          child: Container(
            height: AppSpacing.touchMin,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4),
            decoration: BoxDecoration(
              borderRadius: AppRadius.brMd,
              border: Border.all(color: color, width: 1.5),
            ),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: AppTypography.label.copyWith(color: color),
            ),
          ),
        ),
      ),
    );
  }
}
