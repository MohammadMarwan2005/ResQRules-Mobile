import 'package:flutter/material.dart';

import '../../domain/models/shared/lang.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_typography.dart';

enum LangToggleVariant { onPrimary, standalone }

/// EN / ع segmented pill (72×32). The active filled pill slides between
/// segments. Order is fixed LTR ([EN | ع]) regardless of layout direction.
class LangToggle extends StatelessWidget {
  const LangToggle({
    required this.value,
    required this.onChanged,
    this.variant = LangToggleVariant.onPrimary,
    super.key,
  });

  final Lang value;
  final ValueChanged<Lang> onChanged;
  final LangToggleVariant variant;

  @override
  Widget build(BuildContext context) {
    final onPrimary = variant == LangToggleVariant.onPrimary;
    final lineColor = onPrimary ? AppColors.onPrimary : AppColors.primary;
    final pillColor = onPrimary ? AppColors.onPrimary : AppColors.primary;

    Color textColor(bool active) {
      if (active) return onPrimary ? AppColors.primary : AppColors.onPrimary;
      return onPrimary ? AppColors.onPrimary : AppColors.primary;
    }

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        width: 72,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: AppRadius.brFull,
          border: Border.all(color: lineColor),
        ),
        child: Stack(
          children: [
            AnimatedAlign(
              alignment:
                  value == Lang.en
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              child: Container(
                width: 35,
                height: 30,
                margin: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: pillColor,
                  borderRadius: AppRadius.brFull,
                ),
              ),
            ),
            Row(
              children: [
                _segment('EN', Lang.en, textColor(value == Lang.en)),
                _segment('ع', Lang.ar, textColor(value == Lang.ar)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _segment(String label, Lang lang, Color color) {
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => onChanged(lang),
        child: Center(
          child: Text(
            label,
            style: AppTypography.label.copyWith(color: color, fontSize: 13),
          ),
        ),
      ),
    );
  }
}
