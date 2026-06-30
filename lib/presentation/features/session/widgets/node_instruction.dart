import 'package:flutter/material.dart';

import '../../../../domain/models/session/screen_state.dart';
import '../../../../domain/models/shared/lang.dart';
import '../../../theme/app_spacing.dart';
import '../../../theme/app_typography.dart';
import '../../../widgets/page_citation.dart';
import '../../../widgets/rq_button.dart';
import '../../../widgets/rq_card.dart';

/// "Do this" step with a single Continue button pinned to the bottom.
class NodeInstruction extends StatelessWidget {
  const NodeInstruction({
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
    final option = screen.options!.first;
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
              child: RqCard(
                child: Text(
                  screen.text.resolve(lang),
                  style: AppTypography.body,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.gapLg),
          RqButton(
            label: option.label.resolve(lang),
            onPressed: () => onSelect(option.id),
          ),
        ],
      ),
    );
  }
}
