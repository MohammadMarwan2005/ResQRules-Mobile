import 'package:flutter/material.dart';

import '../localization/gen/app_localizations.dart';
import '../theme/app_colors.dart';
import '../theme/app_elevation.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';

/// Reset-session bottom sheet: handle + title + two 64dp rows + Cancel.
class ResetSheet extends StatelessWidget {
  const ResetSheet({
    required this.chartName,
    required this.onResetChart,
    required this.onChooseChart,
    super.key,
  });

  final String chartName;
  final VoidCallback onResetChart;
  final VoidCallback onChooseChart;

  static Future<void> show(
    BuildContext context, {
    required String chartName,
    required VoidCallback onResetChart,
    required VoidCallback onChooseChart,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: AppColors.scrim,
      builder:
          (_) => ResetSheet(
            chartName: chartName,
            onResetChart: onResetChart,
            onChooseChart: onChooseChart,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppL10n.of(context);
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.vertical(top: Radius.circular(AppRadius.lg)),
        boxShadow: AppElevation.sheet,
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 40,
              height: 4,
              margin: const EdgeInsets.symmetric(vertical: AppSpacing.s3),
              decoration: BoxDecoration(
                color: AppColors.border,
                borderRadius: AppRadius.brFull,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(l.resetSessionTitle, style: AppTypography.heading),
              ),
            ),
            const SizedBox(height: AppSpacing.s2),
            _Row(
              title: l.resetThisChart,
              subtitle: chartName,
              onTap: () {
                Navigator.of(context).pop();
                onResetChart();
              },
            ),
            const Divider(height: 1, color: AppColors.divider),
            _Row(
              title: l.chooseDifferentChart,
              subtitle: l.returnToChartList,
              onTap: () {
                Navigator.of(context).pop();
                onChooseChart();
              },
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                l.cancel,
                style: AppTypography.label.copyWith(color: AppColors.primary),
              ),
            ),
            const SizedBox(height: AppSpacing.s2),
          ],
        ),
      ),
    );
  }
}

class _Row extends StatelessWidget {
  const _Row({
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 64,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppTypography.bodyBold),
            const SizedBox(height: 2),
            Text(subtitle, style: AppTypography.secondary),
          ],
        ),
      ),
    );
  }
}
