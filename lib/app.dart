import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'common/di/injection.dart';
import 'domain/models/shared/lang.dart';
import 'presentation/localization/gen/app_localizations.dart';
import 'presentation/localization/locale_cubit.dart';
import 'presentation/router/app_router.dart';
import 'presentation/theme/app_theme.dart';

/// Root widget. Provides the app-wide [LocaleCubit] and rebuilds the
/// [MaterialApp] on language change so locale + text direction flip together.
class ResQRulesApp extends StatelessWidget {
  const ResQRulesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocaleCubit>.value(
      value: getIt<LocaleCubit>(),
      child: BlocBuilder<LocaleCubit, Lang>(
        builder: (context, lang) {
          return MaterialApp.router(
            onGenerateTitle: (context) => 'ResQRules',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.light,
            routerConfig: appRouter,
            locale: Locale(lang.code),
            supportedLocales: AppL10n.supportedLocales,
            localizationsDelegates: AppL10n.localizationsDelegates,
          );
        },
      ),
    );
  }
}
