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

/// Unavailable transfer — the protocol would continue in a chart not yet loaded.
class NodeJumpStub extends StatelessWidget {
  const NodeJumpStub({
    required this.screen,
    required this.lang,
    required this.onBackHome,
    super.key,
  });

  final ScreenState screen;
  final Lang lang;
  final VoidCallback onBackHome;

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
                variant: RqCardVariant.stub,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(screen.text.resolve(lang), style: AppTypography.body),
                    const SizedBox(height: AppSpacing.s3),
                    const Divider(height: 1, color: AppColors.divider),
                    const SizedBox(height: AppSpacing.s3),
                    Text(
                      l.protocolNotAvailable,
                      style: AppTypography.secondary,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.gapLg),
          RqOutlinedButton(
            label: l.backToHome,
            variant: RqOutlinedVariant.neutral,
            onPressed: onBackHome,
          ),
        ],
      ),
    );
  }
}
