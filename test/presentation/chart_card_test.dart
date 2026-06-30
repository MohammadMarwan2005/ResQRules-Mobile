import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resq_rules/domain/models/charts/chart.dart';
import 'package:resq_rules/domain/models/shared/bilingual_text.dart';
import 'package:resq_rules/domain/models/shared/lang.dart';
import 'package:resq_rules/presentation/features/home/widgets/chart_card.dart';
import 'package:resq_rules/presentation/localization/gen/app_localizations.dart';

void main() {
  setUpAll(() => GoogleFonts.config.allowRuntimeFetching = false);

  Widget host(Widget child, {Locale locale = const Locale('en')}) => MaterialApp(
        locale: locale,
        localizationsDelegates: AppL10n.localizationsDelegates,
        supportedLocales: AppL10n.supportedLocales,
        home: Scaffold(body: child),
      );

  const chart = Chart(
    chartId: 'hemorrhage',
    title: BilingualText(en: 'Catastrophic Hemorrhage', ar: 'النزيف الكارثي'),
    urgency: 'critical',
  );

  testWidgets('renders primary + secondary titles and the urgency badge',
      (tester) async {
    await tester.pumpWidget(
      host(ChartCard(chart: chart, lang: Lang.en, onTap: () {})),
    );
    await tester.pump();

    expect(find.text('Catastrophic Hemorrhage'), findsOneWidget);
    expect(find.text('النزيف الكارثي'), findsOneWidget);
    expect(find.text('CRITICAL'), findsOneWidget);
  });

  testWidgets('tapping the card fires onTap', (tester) async {
    var tapped = false;
    await tester.pumpWidget(
      host(ChartCard(chart: chart, lang: Lang.en, onTap: () => tapped = true)),
    );
    await tester.tap(find.byType(ChartCard));
    expect(tapped, isTrue);
  });

  testWidgets('Arabic locale shows the Arabic urgency label', (tester) async {
    await tester.pumpWidget(
      host(
        ChartCard(chart: chart, lang: Lang.ar, onTap: () {}),
        locale: const Locale('ar'),
      ),
    );
    await tester.pump();

    expect(find.text('حرج'), findsOneWidget);
  });
}
