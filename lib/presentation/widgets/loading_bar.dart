import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

/// 3dp indeterminate sweep that sits directly below the AppBar. Occupies the
/// lane even when inactive so the layout never jumps.
class LoadingBar extends StatelessWidget {
  const LoadingBar({this.active = true, super.key});

  final bool active;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSpacing.loadingBarHeight,
      child:
          active
              ? const LinearProgressIndicator(
                minHeight: AppSpacing.loadingBarHeight,
                color: AppColors.primary,
                backgroundColor: Colors.transparent,
              )
              : null,
    );
  }
}
