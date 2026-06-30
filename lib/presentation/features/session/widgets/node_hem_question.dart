import 'package:flutter/material.dart';

import '../../../../domain/models/session/screen_state.dart';
import '../../../../domain/models/shared/lang.dart';
import '../../../localization/gen/app_localizations.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacing.dart';
import '../../../theme/app_typography.dart';
import '../../../widgets/page_citation.dart';
import '../../../widgets/rq_card.dart';
import '../../../widgets/rq_outlined_button.dart';
import '../../../widgets/tier_badge.dart';

/// Hemorrhage escalation recheck: tier progress + intervention callout +
/// "still bleeding?" with a yes (red) / no (green) answer.
class NodeHemQuestion extends StatelessWidget {
  const NodeHemQuestion({
    required this.screen,
    required this.lang,
    required this.onSelect,
    super.key,
  });

  final ScreenState screen;
  final Lang lang;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    final l = AppL10n.of(context);
    final hem = screen.hemTier!;
    final options = screen.options ?? const [];

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.screenMargin,
        AppSpacing.screenTopPad,
        AppSpacing.screenMargin,
        AppSpacing.screenMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PageCitation(page: screen.page),
              const Spacer(),
              TierBadge(
                current: hem.current,
                maxTier: hem.maxTier,
                label: l.tierLabel(hem.current, hem.maxTier),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.s3),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RqCard(
                    variant: RqCardVariant.callout,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l.interventionApplied.toUpperCase(),
                          style: AppTypography.caption.copyWith(
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: AppSpacing.s1),
                        Text(
                          hem.intervention.resolve(lang),
                          style: AppTypography.secondary.copyWith(
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.gapLg),
                  RqCard(
                    child: Text(
                      screen.text.resolve(lang),
                      style: AppTypography.bodyBold,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.gapLg),
                  for (var i = 0; i < options.length; i++) ...[
                    RqOutlinedButton(
                      label: options[i].label.resolve(lang),
                      variant:
                          i == 0
                              ? RqOutlinedVariant.primary
                              : RqOutlinedVariant.success,
                      onPressed: () => onSelect(options[i].id),
                    ),
                    const SizedBox(height: AppSpacing.gapMd),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
