import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_typography.dart';

enum UrgencyLevel { critical, high, standard }

UrgencyLevel urgencyFromString(String value) => switch (value) {
  'critical' => UrgencyLevel.critical,
  'high' => UrgencyLevel.high,
  _ => UrgencyLevel.standard,
};

/// Inline urgency pill — all-caps caption, white on the urgency colour.
/// [label] overrides the default English level name (e.g. Arabic "حرج").
class UrgencyBadge extends StatelessWidget {
  const UrgencyBadge({required this.level, this.label, super.key});

  final UrgencyLevel level;
  final String? label;

  Color get _color => switch (level) {
    UrgencyLevel.critical => AppColors.urgencyCritical,
    UrgencyLevel.high => AppColors.urgencyHigh,
    UrgencyLevel.standard => AppColors.urgencyStandard,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(color: _color, borderRadius: AppRadius.brSm),
      child: Text(
        (label ?? level.name).toUpperCase(),
        style: AppTypography.micro.copyWith(
          color: AppColors.onPrimary,
          fontSize: 11,
          letterSpacing: 0.66, // ~0.06em at 11sp
        ),
      ),
    );
  }
}
