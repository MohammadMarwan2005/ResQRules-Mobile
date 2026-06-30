import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

/// Domain-level failure, mapped from the API's stable error `code`s
/// (see `reference/API.md` → Error shape). The UI branches on the variant,
/// never on a message string.
///
/// `sealed` so a `switch` over the variants is exhaustive without a `default`:
/// adding a variant becomes a compile error at every handling site.
@Freezed(toJson: false, fromJson: false)
sealed class Failure with _$Failure {
  /// 410 — session is over; reset, do not retry `/step`.
  const factory Failure.sessionEnded({String? message}) = SessionEndedFailure;

  /// 422 — input not in {1..4, b, n, p, u}; ignore / re-prompt.
  const factory Failure.invalidInput({String? message}) = InvalidInputFailure;

  /// 404 — unknown / expired session; start a fresh one.
  const factory Failure.sessionNotFound({String? message}) =
      SessionNotFoundFailure;

  /// 404 — unknown chart_id; fix the request.
  const factory Failure.chartNotFound({String? message}) = ChartNotFoundFailure;

  /// 503 / 400 — engine unavailable or timed out; retry via the Snackbar.
  const factory Failure.engine({String? message}) = EngineFailure;

  /// Network failure or any non-2xx without a `detail.code`; generic retry.
  const factory Failure.connection({String? message}) = ConnectionFailure;

  /// Anything unexpected.
  const factory Failure.unknown({String? message}) = UnknownFailure;
}
