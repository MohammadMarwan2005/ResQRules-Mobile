import 'package:flutter/material.dart';

import '../../../../domain/models/session/screen_state.dart';
import '../../../../domain/models/shared/lang.dart';
import '../../../localization/gen/app_localizations.dart';
import '../../../theme/app_spacing.dart';
import '../../../theme/app_typography.dart';
import '../../../widgets/page_citation.dart';
import '../../../widgets/rq_button.dart';
import '../../../widgets/rq_card.dart';
import '../../../widgets/rq_outlined_button.dart';

/// Terminal leaf — protocol complete. End Session (green ghost) + Start Again.
class NodeAction extends StatelessWidget {
  const NodeAction({
    required this.screen,
    required this.lang,
    required this.onEnd,
    required this.onStartAgain,
    super.key,
  });

  final ScreenState screen;
  final Lang lang;
  final VoidCallback onEnd;
  final VoidCallback onStartAgain;

  @override
  Widget build(BuildContext context) {
    final l = AppL10n.of(context);
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
                variant: RqCardVariant.success,
                child: Text(
                  screen.text.resolve(lang),
                  style: AppTypography.bodyBold,
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.gapLg),
          RqOutlinedButton(
            label: l.endSession,
            variant: RqOutlinedVariant.success,
            onPressed: onEnd,
          ),
          const SizedBox(height: AppSpacing.gapSm),
          RqButton(label: l.startAgain, onPressed: onStartAgain),
        ],
      ),
    );
  }
}
