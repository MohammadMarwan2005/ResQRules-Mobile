// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppL10nAr extends AppL10n {
  AppL10nAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'ResQRules';

  @override
  String get langEnglish => 'EN';

  @override
  String get langArabic => 'ع';

  @override
  String get urgencyCritical => 'حرج';

  @override
  String get urgencyHigh => 'عالي';

  @override
  String get urgencyStandard => 'عادي';

  @override
  String pageCitation(String page) {
    return 'p.$page';
  }

  @override
  String get interventionApplied => 'تم تطبيق التدخل';

  @override
  String tierLabel(int current, int max) {
    return 'المستوى $current / $max';
  }

  @override
  String get endSession => 'إنهاء الجلسة';

  @override
  String get startAgain => 'ابدأ من جديد';

  @override
  String get backToHome => 'العودة للرئيسية';

  @override
  String get protocolNotAvailable => 'البروتوكول غير متوفر بعد';

  @override
  String overrideJump(String chart, int salience) {
    return '⚡ تحويل إلى: $chart  (الأولوية $salience)';
  }

  @override
  String overrideGuard(String chart) {
    return '✓ أنت في $chart بالفعل — استمرار';
  }

  @override
  String get connectionErrorRetry => 'خطأ في الاتصال — اضغط لإعادة المحاولة';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get resetSessionTitle => 'إعادة ضبط الجلسة';

  @override
  String get resetThisChart => 'إعادة ضبط هذا المخطط';

  @override
  String get chooseDifferentChart => 'اختيار مخطط آخر';

  @override
  String get returnToChartList => 'العودة إلى قائمة المخططات';

  @override
  String get cancel => 'إلغاء';
}
