import 'package:freezed_annotation/freezed_annotation.dart';

part 'override_event.freezed.dart';

/// Emitted when a danger key triggers a protocol jump or a guard.
/// Non-null `override_event` is the *only* thing that drives the OverrideToast.
@freezed
class OverrideEvent with _$OverrideEvent {
  const factory OverrideEvent({
    required String
    kind, // catastrophic_bleeding | not_breathing | no_pulse | unconscious
    required int salience,
    String? jumpedToChart, // null when guard_fired
    required bool guardFired,
  }) = _OverrideEvent;
}
