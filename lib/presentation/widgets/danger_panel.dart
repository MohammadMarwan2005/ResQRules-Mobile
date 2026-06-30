import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_elevation.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import 'rq_icon.dart';

/// One danger zone: an API danger [key] (`b`/`n`/`p`/`u`), its resolved [label],
/// and its [icon].
class DangerZoneData {
  const DangerZoneData({
    required this.key,
    required this.label,
    required this.icon,
  });

  final String key;
  final String label;
  final IconData icon;
}

/// Fixed 64dp bottom emergency bar with 4 equal tap zones. Pass [zones] in
/// canonical `b,n,p,u` order — RTL mirrors visually via Directionality.
/// [locked] dims to 60% and disables taps during a pending transition.
class DangerPanel extends StatelessWidget {
  const DangerPanel({
    required this.zones,
    required this.onZone,
    this.locked = false,
    super.key,
  });

  final List<DangerZoneData> zones;
  final ValueChanged<String> onZone;
  final bool locked;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: locked,
      child: AnimatedOpacity(
        opacity: locked ? 0.6 : 1,
        duration: const Duration(milliseconds: 150),
        child: Container(
          height: AppSpacing.dangerPanelHeight,
          decoration: const BoxDecoration(
            color: AppColors.primary,
            boxShadow: AppElevation.panel,
          ),
          child: Row(
            children: [
              for (final zone in zones)
                Expanded(
                  child: _Zone(zone: zone, onTap: () => onZone(zone.key)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Zone extends StatelessWidget {
  const _Zone({required this.zone, required this.onTap});

  final DangerZoneData zone;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RqIcon(zone.icon, size: 20, color: AppColors.onPrimary),
          const SizedBox(height: AppSpacing.s1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Text(
              zone.label,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.micro.copyWith(color: AppColors.onPrimary),
            ),
          ),
        ],
      ),
    );
  }
}
