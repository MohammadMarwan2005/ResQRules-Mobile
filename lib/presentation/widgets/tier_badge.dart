import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_typography.dart';

/// Hemorrhage escalation progress — 3 dots + a "Tier N / 3" caption.
///
/// [current] is the tier just applied (per the API's `hem_tier.current`): dots
/// `1..current` are filled, the current dot carries a white ring, later dots are
/// empty. [complete] fills every dot with no ring.
class TierBadge extends StatelessWidget {
  const TierBadge({
    required this.current,
    required this.label,
    this.maxTier = 3,
    this.complete = false,
    super.key,
  });

  final int current;
  final int maxTier;
  final bool complete;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 16,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var tier = 1; tier <= maxTier; tier++) ...[
                if (tier > 1) const SizedBox(width: 6),
                _Dot(
                  filled: complete || tier <= current,
                  ring: !complete && tier == current,
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: AppTypography.caption),
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({required this.filled, required this.ring});

  final bool filled;
  final bool ring;

  @override
  Widget build(BuildContext context) {
    // Current tier: red core + white ring inside a primary halo.
    if (ring) {
      return Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.primary, width: 1.5),
        ),
        child: Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primary,
            border: Border.all(color: AppColors.onPrimary, width: 2),
          ),
        ),
      );
    }
    // Applied → solid; pending → hollow with a grey border.
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: filled ? AppColors.primary : Colors.transparent,
        border: filled ? null : Border.all(color: AppColors.border, width: 1),
      ),
    );
  }
}
