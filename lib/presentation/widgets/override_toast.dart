import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import 'app_icons.dart';
import 'rq_icon.dart';

enum OverrideToastVariant { jump, guard }

/// Banner that slides down from under the AppBar to announce a protocol override.
/// Driven by [visible]; the message + variant are computed by the cubit from a
/// non-null `override_event`.
class OverrideToast extends StatelessWidget {
  const OverrideToast({
    required this.visible,
    required this.variant,
    required this.message,
    super.key,
  });

  final bool visible;
  final OverrideToastVariant variant;
  final String message;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: AnimatedSlide(
        offset: visible ? Offset.zero : const Offset(0, -1),
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
        child: AnimatedOpacity(
          opacity: visible ? 1 : 0,
          duration: const Duration(milliseconds: 200),
          child: Container(
            width: double.infinity,
            color: AppColors.primary,
            padding: const EdgeInsets.symmetric(
              vertical: AppSpacing.s3,
              horizontal: AppSpacing.s4,
            ),
            child: Row(
              children: [
                RqIcon(
                  variant == OverrideToastVariant.jump
                      ? AppIcons.jump
                      : AppIcons.guard,
                  size: 20,
                  color: AppColors.onPrimary,
                ),
                const SizedBox(width: AppSpacing.s2),
                Expanded(
                  child: Text(
                    message,
                    style: AppTypography.secondary.copyWith(
                      color: AppColors.onPrimary,
                      fontWeight: FontWeight.w600,
                    ),
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
