// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppL10nEn extends AppL10n {
  AppL10nEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'ResQRules';

  @override
  String get langEnglish => 'EN';

  @override
  String get langArabic => 'ع';

  @override
  String get urgencyCritical => 'CRITICAL';

  @override
  String get urgencyHigh => 'HIGH';

  @override
  String get urgencyStandard => 'STANDARD';

  @override
  String pageCitation(String page) {
    return 'p.$page';
  }

  @override
  String get interventionApplied => 'Intervention applied';

  @override
  String tierLabel(int current, int max) {
    return 'Tier $current / $max';
  }

  @override
  String get endSession => 'End Session';

  @override
  String get startAgain => 'Start Again';

  @override
  String get backToHome => 'Back to Home';

  @override
  String get protocolNotAvailable => 'Protocol not yet available';

  @override
  String overrideJump(String chart, int salience) {
    return '⚡ Switched to: $chart  (Salience $salience)';
  }

  @override
  String overrideGuard(String chart) {
    return '✓ Already in $chart — continuing';
  }

  @override
  String get connectionErrorRetry => 'Connection error — tap to retry';

  @override
  String get retry => 'Retry';

  @override
  String get resetSessionTitle => 'Reset session';

  @override
  String get resetThisChart => 'Reset this chart';

  @override
  String get chooseDifferentChart => 'Choose a different chart';

  @override
  String get returnToChartList => 'Return to chart list';

  @override
  String get cancel => 'Cancel';
}
