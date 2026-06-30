import 'package:flutter/material.dart';

import '../../../../domain/models/session/screen_state.dart';
import '../../../../domain/models/session/screen_type.dart';
import '../../../../domain/models/shared/lang.dart';
import 'node_action.dart';
import 'node_cf_question.dart';
import 'node_hem_question.dart';
import 'node_instruction.dart';
import 'node_jump_stub.dart';
import 'node_question.dart';

/// Renders the right node body for `screen.type` — the single discriminator.
class SessionBody extends StatelessWidget {
  const SessionBody({
    required this.screen,
    required this.lang,
    required this.onSelect,
    required this.onEnd,
    required this.onStartAgain,
    required this.onBackHome,
    super.key,
  });

  final ScreenState screen;
  final Lang lang;
  final ValueChanged<int> onSelect;
  final VoidCallback onEnd;
  final VoidCallback onStartAgain;
  final VoidCallback onBackHome;

  @override
  Widget build(BuildContext context) {
    return switch (screen.type) {
      ScreenType.instruction => NodeInstruction(
        screen: screen,
        lang: lang,
        onSelect: onSelect,
      ),
      ScreenType.question => NodeQuestion(
        screen: screen,
        lang: lang,
        onSelect: onSelect,
      ),
      ScreenType.cfQuestion => NodeCfQuestion(
        screen: screen,
        lang: lang,
        onSelect: onSelect,
      ),
      ScreenType.hemQuestion => NodeHemQuestion(
        screen: screen,
        lang: lang,
        onSelect: onSelect,
      ),
      ScreenType.action => NodeAction(
        screen: screen,
        lang: lang,
        onEnd: onEnd,
        onStartAgain: onStartAgain,
      ),
      ScreenType.jumpStub => NodeJumpStub(
        screen: screen,
        lang: lang,
        onBackHome: onBackHome,
      ),
      ScreenType.unknown => const SizedBox.shrink(),
    };
  }
}
