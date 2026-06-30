import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_typography.dart';

/// Minimal wordmark splash with an indeterminate bar. Auto-advances to Home
/// after ~1.3s, or on tap.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(const Duration(milliseconds: 1300), _goHome);
  }

  void _goHome() {
    if (mounted) context.go('/');
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _goHome,
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'ResQRules',
                style: AppTypography.display.copyWith(
                  color: AppColors.onPrimary,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 24),
              const SizedBox(
                width: 160,
                height: 3,
                child: LinearProgressIndicator(
                  backgroundColor: Colors.white24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
