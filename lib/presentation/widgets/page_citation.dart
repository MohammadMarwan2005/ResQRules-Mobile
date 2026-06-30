import 'package:flutter/material.dart';

import '../theme/app_typography.dart';

/// Source-page reference, e.g. "p.7". Latin numerals always — the first element
/// of every node body.
class PageCitation extends StatelessWidget {
  const PageCitation({required this.page, super.key});

  final Object page;

  @override
  Widget build(BuildContext context) {
    return Text('p.$page', style: AppTypography.caption);
  }
}
