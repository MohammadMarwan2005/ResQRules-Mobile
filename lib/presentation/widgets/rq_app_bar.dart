import 'package:flutter/material.dart';

import '../../domain/models/shared/lang.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_typography.dart';
import 'app_icons.dart';
import 'lang_toggle.dart';
import 'rq_icon.dart';

enum RqAppBarVariant { home, session }

/// Top bar (56dp content + status-bar spacer, solid red, no shadow).
/// Home = wordmark + LangToggle. Session = back + ellipsised title + LangToggle
/// + reset. The back arrow flips direction in RTL.
class RqAppBar extends StatelessWidget {
  const RqAppBar({
    required this.variant,
    required this.lang,
    required this.onLangChange,
    this.title,
    this.onBack,
    this.onReset,
    super.key,
  });

  final RqAppBarVariant variant;
  final Lang lang;
  final ValueChanged<Lang> onLangChange;
  final String? title;
  final VoidCallback? onBack;
  final VoidCallback? onReset;

  @override
  Widget build(BuildContext context) {
    final topPad = MediaQuery.paddingOf(context).top;
    return Container(
      color: AppColors.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: topPad),
          SizedBox(
            height: AppSpacing.appBarHeight,
            child:
                variant == RqAppBarVariant.home ? _home() : _session(context),
          ),
        ],
      ),
    );
  }

  Widget _home() {
    return Row(
      children: [
        const SizedBox(width: AppSpacing.s4),
        Text(
          'ResQRules',
          style: AppTypography.heading.copyWith(color: AppColors.onPrimary),
        ),
        const Spacer(),
        LangToggle(value: lang, onChanged: onLangChange),
        const SizedBox(width: AppSpacing.s3),
      ],
    );
  }

  Widget _session(BuildContext context) {
    final isRtl = Directionality.of(context) == TextDirection.rtl;
    return Row(
      children: [
        IconButton(
          onPressed: onBack,
          color: AppColors.onPrimary,
          icon: RqIcon(isRtl ? AppIcons.backRtl : AppIcons.backLtr),
        ),
        Expanded(
          child: Text(
            title ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.heading.copyWith(color: AppColors.onPrimary),
          ),
        ),
        const SizedBox(width: AppSpacing.s2),
        LangToggle(value: lang, onChanged: onLangChange),
        IconButton(
          onPressed: onReset,
          color: AppColors.onPrimary,
          icon: const RqIcon(AppIcons.reset),
        ),
      ],
    );
  }
}
