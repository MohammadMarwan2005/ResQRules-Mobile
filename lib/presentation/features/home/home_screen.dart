import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/di/injection.dart';
import '../../localization/gen/app_localizations.dart';
import '../../localization/locale_cubit.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacing.dart';
import '../../widgets/rq_app_bar.dart';
import '../../widgets/rq_outlined_button.dart';
import 'cubit/charts_cubit.dart';
import 'cubit/charts_state.dart';
import 'widgets/chart_card.dart';

/// Home — the chart selector. AppBar + scrollable list of 5 protocol cards in
/// the fixed clinical order (imposed by `GetSortedCharts`).
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChartsCubit>(
      create: (_) => getIt<ChartsCubit>()..load(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final lang = context.watch<LocaleCubit>().state;
    return Scaffold(
      backgroundColor: AppColors.page,
      body: Column(
        children: [
          RqAppBar(
            variant: RqAppBarVariant.home,
            lang: lang,
            onLangChange: context.read<LocaleCubit>().setLang,
          ),
          Expanded(
            child: BlocBuilder<ChartsCubit, ChartsState>(
              builder:
                  (context, state) => switch (state) {
                    ChartsLoaded(:final charts) => ListView.separated(
                      padding: const EdgeInsets.fromLTRB(
                        AppSpacing.screenMargin,
                        AppSpacing.screenMargin,
                        AppSpacing.screenMargin,
                        AppSpacing.homeIndicator,
                      ),
                      itemCount: charts.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 14),
                      itemBuilder: (context, index) {
                        final chart = charts[index];
                        return ChartCard(
                          chart: chart,
                          lang: lang,
                          onTap: () => context.go('/session/${chart.chartId}'),
                        );
                      },
                    ),
                    ChartsError() => _ErrorView(
                      onRetry: () => context.read<ChartsCubit>().load(),
                    ),
                    _ => const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primary,
                      ),
                    ),
                  },
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.onRetry});

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.s6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppL10n.of(context).connectionErrorRetry,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.s4),
            RqOutlinedButton(
              label: AppL10n.of(context).retry,
              fullWidth: false,
              onPressed: onRetry,
            ),
          ],
        ),
      ),
    );
  }
}
