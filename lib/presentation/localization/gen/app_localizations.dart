import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppL10n
/// returned by `AppL10n.of(context)`.
///
/// Applications need to include `AppL10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppL10n.localizationsDelegates,
///   supportedLocales: AppL10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppL10n.supportedLocales
/// property.
abstract class AppL10n {
  AppL10n(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppL10n of(BuildContext context) {
    return Localizations.of<AppL10n>(context, AppL10n)!;
  }

  static const LocalizationsDelegate<AppL10n> delegate = _AppL10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'ResQRules'**
  String get appName;

  /// No description provided for @langEnglish.
  ///
  /// In en, this message translates to:
  /// **'EN'**
  String get langEnglish;

  /// No description provided for @langArabic.
  ///
  /// In en, this message translates to:
  /// **'ع'**
  String get langArabic;

  /// No description provided for @urgencyCritical.
  ///
  /// In en, this message translates to:
  /// **'CRITICAL'**
  String get urgencyCritical;

  /// No description provided for @urgencyHigh.
  ///
  /// In en, this message translates to:
  /// **'HIGH'**
  String get urgencyHigh;

  /// No description provided for @urgencyStandard.
  ///
  /// In en, this message translates to:
  /// **'STANDARD'**
  String get urgencyStandard;

  /// No description provided for @pageCitation.
  ///
  /// In en, this message translates to:
  /// **'p.{page}'**
  String pageCitation(String page);

  /// No description provided for @interventionApplied.
  ///
  /// In en, this message translates to:
  /// **'Intervention applied'**
  String get interventionApplied;

  /// No description provided for @tierLabel.
  ///
  /// In en, this message translates to:
  /// **'Tier {current} / {max}'**
  String tierLabel(int current, int max);

  /// No description provided for @endSession.
  ///
  /// In en, this message translates to:
  /// **'End Session'**
  String get endSession;

  /// No description provided for @startAgain.
  ///
  /// In en, this message translates to:
  /// **'Start Again'**
  String get startAgain;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get backToHome;

  /// No description provided for @protocolNotAvailable.
  ///
  /// In en, this message translates to:
  /// **'Protocol not yet available'**
  String get protocolNotAvailable;

  /// No description provided for @overrideJump.
  ///
  /// In en, this message translates to:
  /// **'⚡ Switched to: {chart}  (Salience {salience})'**
  String overrideJump(String chart, int salience);

  /// No description provided for @overrideGuard.
  ///
  /// In en, this message translates to:
  /// **'✓ Already in {chart} — continuing'**
  String overrideGuard(String chart);

  /// No description provided for @connectionErrorRetry.
  ///
  /// In en, this message translates to:
  /// **'Connection error — tap to retry'**
  String get connectionErrorRetry;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @resetSessionTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset session'**
  String get resetSessionTitle;

  /// No description provided for @resetThisChart.
  ///
  /// In en, this message translates to:
  /// **'Reset this chart'**
  String get resetThisChart;

  /// No description provided for @chooseDifferentChart.
  ///
  /// In en, this message translates to:
  /// **'Choose a different chart'**
  String get chooseDifferentChart;

  /// No description provided for @returnToChartList.
  ///
  /// In en, this message translates to:
  /// **'Return to chart list'**
  String get returnToChartList;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;
}

class _AppL10nDelegate extends LocalizationsDelegate<AppL10n> {
  const _AppL10nDelegate();

  @override
  Future<AppL10n> load(Locale locale) {
    return SynchronousFuture<AppL10n>(lookupAppL10n(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppL10nDelegate old) => false;
}

AppL10n lookupAppL10n(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppL10nAr();
    case 'en': return AppL10nEn();
  }

  throw FlutterError(
    'AppL10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
