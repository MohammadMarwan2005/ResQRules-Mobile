import 'package:flutter/material.dart';

import '../../../../domain/models/charts/chart.dart';
import '../../../../domain/models/shared/lang.dart';
import '../../../localization/gen/app_localizations.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_elevation.dart';
import '../../../theme/app_radius.dart';
import '../../../theme/app_spacing.dart';
import '../../../theme/app_typography.dart';
import '../../../widgets/urgency_badge.dart';

/// Home chart card (component 01). White card, 12dp radius, level-1 shadow,
/// 4dp leading urgency accent. Whole card taps through to the session.
class ChartCard extends StatelessWidget {
  const ChartCard({
    required this.chart,
    required this.lang,
    required this.onTap,
    super.key,
  });

  final Chart chart;
  final Lang lang;
  final VoidCallback onTap;

  Color get _accent => switch (chart.urgency) {
    'critical' => AppColors.urgencyCritical,
    'high' => AppColors.urgencyHigh,
    _ => AppColors.urgencyStandard,
  };

  String _urgencyLabel(AppL10n l) => switch (chart.urgency) {
    'critical' => l.urgencyCritical,
    'high' => l.urgencyHigh,
    _ => l.urgencyStandard,
  };

  @override
  Widget build(BuildContext context) {
    final l = AppL10n.of(context);
    final primaryTitle = chart.title.resolve(lang);
    final secondaryTitle = lang.isRtl ? chart.title.en : chart.title.ar;

    return Material(
      color: AppColors.card,
      borderRadius: AppRadius.brLg,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadius.brLg,
        child: Ink(
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: AppRadius.brLg,
            boxShadow: AppElevation.card,
          ),
          child: ClipRRect(
            borderRadius: AppRadius.brLg,
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(width: 4, color: _accent),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.s4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  primaryTitle,
                                  style: AppTypography.bodyBold.copyWith(
                                    fontSize: 17,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    secondaryTitle,
                                    textAlign:
                                        lang.isRtl
                                            ? TextAlign.left
                                            : TextAlign.right,
                                    style: AppTypography.secondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: AppSpacing.s2),
                          UrgencyBadge(
                            level: urgencyFromString(chart.urgency),
                            label: _urgencyLabel(l),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
