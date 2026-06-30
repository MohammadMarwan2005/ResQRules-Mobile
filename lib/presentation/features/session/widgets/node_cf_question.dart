import 'package:flutter/material.dart';

import '../../../../domain/models/session/screen_state.dart';
import '../../../../domain/models/shared/lang.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacing.dart';
import '../../../theme/app_typography.dart';
import '../../../widgets/page_citation.dart';
import '../../../widgets/rq_card.dart';
import '../../../widgets/rq_cf_button.dart';

/// Certainty-factor question: clinical text + CF prompt + 4 confidence buttons.
class NodeCfQuestion extends StatelessWidget {
  const NodeCfQuestion({
    required this.screen,
    required this.lang,
    required this.onSelect,
    super.key,
  });

  final ScreenState screen;
  final Lang lang;
  final ValueChanged<int> onSelect;

  static String _formatCf(double value) {
    final sign = value >= 0 ? '+' : '−'; // minus sign
    return '$sign${value.abs().toStringAsFixed(2)}';
  }

  @override
  Widget build(BuildContext context) {
    final cf = screen.cf!;
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
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: PageCitation(page: screen.page),
          ),
          const SizedBox(height: AppSpacing.gapSm),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RqCard(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          screen.text.resolve(lang),
                          style: AppTypography.bodyBold,
                        ),
                        const SizedBox(height: AppSpacing.s3),
                        const Divider(height: 1, color: AppColors.divider),
                        const SizedBox(height: AppSpacing.s3),
                        Text(
                          cf.prompt.resolve(lang),
                          style: AppTypography.secondary,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: AppSpacing.gapLg),
                  for (final choice in cf.choices) ...[
                    RqCfButton(
                      label: choice.label.resolve(lang),
                      cfText: _formatCf(choice.cfValue),
                      level: cfLevelFromValue(choice.cfValue),
                      onPressed: () => onSelect(choice.id),
                    ),
                    const SizedBox(height: AppSpacing.cfButtonGap),
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
