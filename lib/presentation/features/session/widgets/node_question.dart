import 'package:flutter/material.dart';

import '../../../../domain/models/session/screen_state.dart';
import '../../../../domain/models/shared/lang.dart';
import '../../../theme/app_spacing.dart';
import '../../../theme/app_typography.dart';
import '../../../widgets/page_citation.dart';
import '../../../widgets/rq_card.dart';
import '../../../widgets/rq_outlined_button.dart';

/// Decision point with 2–4 outlined option buttons.
class NodeQuestion extends StatelessWidget {
  const NodeQuestion({
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
                    child: Text(
                      screen.text.resolve(lang),
                      style: AppTypography.bodyBold,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.gapLg),
                  for (final option in options) ...[
                    RqOutlinedButton(
                      label: option.label.resolve(lang),
                      onPressed: () => onSelect(option.id),
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
