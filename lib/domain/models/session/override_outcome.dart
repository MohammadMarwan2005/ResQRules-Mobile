import 'package:freezed_annotation/freezed_annotation.dart';

import '../shared/bilingual_text.dart';

part 'override_outcome.freezed.dart';

/// The UI consequence of a step, resolved by `ResolveOverrideOutcome`:
/// - [jump]   — danger override switched protocol → show the jump toast.
/// - [guard]  — danger key while already in the target protocol → guard toast.
/// - [silent] — an option-driven chart change (no toast).
/// - [none]   — same chart, no override.
@Freezed(toJson: false, fromJson: false)
sealed class OverrideOutcome with _$OverrideOutcome {
  const factory OverrideOutcome.jump({
    required BilingualText chartTitle,
    required int salience,
  }) = OverrideJump;

  const factory OverrideOutcome.guard({required BilingualText chartTitle}) =
      OverrideGuard;

  const factory OverrideOutcome.silent() = OverrideSilent;

  const factory OverrideOutcome.none() = OverrideNone;
}
