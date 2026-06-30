import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// Certainty-factor confidence level. Colour encodes confidence:
/// certain/likely → green, unsure → amber, none → red.
enum CfLevel { certain, likely, unsure, none }

/// Maps a numeric `cf_value` to its level (CF ≥ 0.5 → green tier, etc.).
CfLevel cfLevelFromValue(double value) {
  if (value >= 0.6) return CfLevel.certain;
  if (value >= 0.5) return CfLevel.likely;
  if (value > 0) return CfLevel.unsure;
  return CfLevel.none;
}

/// Outlined full-width 56dp button with the label on the leading side and the
/// CF value on the trailing side; colour by [level].
class RqCfButton extends StatelessWidget {
  const RqCfButton({
    required this.label,
    required this.cfText,
    required this.level,
    this.onPressed,
    this.fullWidth = true,
    super.key,
  });

  final String label;
  final String cfText;
  final CfLevel level;
  final VoidCallback? onPressed;
  final bool fullWidth;

  Color get _color => switch (level) {
    CfLevel.certain || CfLevel.likely => AppColors.success,
    CfLevel.unsure => AppColors.warning,
    CfLevel.none => AppColors.primary,
  };

  @override
  Widget build(BuildContext context) {
    final color = onPressed == null ? AppColors.textSecondary : _color;
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
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s4),
            decoration: BoxDecoration(
              borderRadius: AppRadius.brMd,
              border: Border.all(color: color, width: 1.5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    label,
                    style: AppTypography.label.copyWith(color: color),
                  ),
                ),
                const SizedBox(width: AppSpacing.s2),
                Text(
                  cfText,
                  style: AppTypography.micro.copyWith(
                    color: color,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
