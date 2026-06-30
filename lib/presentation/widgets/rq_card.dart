import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_elevation.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';

enum RqCardVariant { normal, success, stub, callout }

/// Content surface — radius-lg, level-1 shadow, 20dp padding. Accent variants
/// add a 4dp leading (inline-start) strip that flips side in RTL.
class RqCard extends StatelessWidget {
  const RqCard({
    required this.child,
    this.variant = RqCardVariant.normal,
    this.padding = const EdgeInsets.all(AppSpacing.cardPadding),
    super.key,
  });

  final Widget child;
  final RqCardVariant variant;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final (Color background, Color? accent, bool shadow) = switch (variant) {
      RqCardVariant.normal => (AppColors.card, null, true),
      RqCardVariant.success => (AppColors.success100, AppColors.success, true),
      RqCardVariant.callout => (AppColors.primary100, AppColors.primary, true),
      RqCardVariant.stub => (AppColors.surface, null, false),
    };

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: background,
        borderRadius: AppRadius.brLg,
        boxShadow: shadow ? AppElevation.card : null,
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (accent != null) Container(width: 4, color: accent),
            Expanded(child: Padding(padding: padding, child: child)),
          ],
        ),
      ),
    );
  }
}
