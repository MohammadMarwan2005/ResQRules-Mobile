import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/di/injection.dart';
import '../../localization/gen/app_localizations.dart';
import '../../localization/locale_cubit.dart';
import '../../theme/app_colors.dart';
import '../../widgets/app_icons.dart';
import '../../widgets/danger_panel.dart';
import '../../widgets/error_snackbar.dart';
import '../../widgets/loading_bar.dart';
import '../../widgets/override_toast.dart';
import '../../widgets/reset_sheet.dart';
import '../../widgets/rq_app_bar.dart';
import 'cubit/session_cubit.dart';
import 'cubit/session_state.dart';
import 'widgets/session_body.dart';

/// Session route — provides the [SessionCubit] and starts the chart.
class SessionScreen extends StatelessWidget {
  const SessionScreen({required this.chartId, super.key});

  final String chartId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SessionCubit>(
      create: (_) => getIt<SessionCubit>()..start(chartId),
      child: const _SessionView(),
    );
  }
}

class _SessionView extends StatefulWidget {
  const _SessionView();

  @override
  State<_SessionView> createState() => _SessionViewState();
}

class _SessionViewState extends State<_SessionView>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && mounted) {
      context.read<SessionCubit>().reconnect();
    }
  }

  void _openReset(BuildContext context, SessionState state) {
    final lang = context.read<LocaleCubit>().state;
    final chartName = state.screen?.chartTitle.resolve(lang) ?? '';
    final cubit = context.read<SessionCubit>();
    ResetSheet.show(
      context,
      chartName: chartName,
      onResetChart: cubit.reset,
      onChooseChart: () => context.go('/'),
    );
  }

  Future<void> _endSession(BuildContext context) async {
    final router = GoRouter.of(context);
    await context.read<SessionCubit>().endSession();
    router.go('/');
  }

  @override
  Widget build(BuildContext context) {
    final lang = context.watch<LocaleCubit>().state;
    final l = AppL10n.of(context);

    return BlocBuilder<SessionCubit, SessionState>(
      builder: (context, state) {
        final cubit = context.read<SessionCubit>();
        final screen = state.screen;
        final title = screen?.chartTitle.resolve(lang) ?? '';

        // Toast content (driven only by a jump/guard outcome).
        var toastVisible = false;
        var toastVariant = OverrideToastVariant.jump;
        var toastMessage = '';
        state.toast?.maybeWhen(
          jump: (chartTitle, salience) {
            toastVisible = true;
            toastVariant = OverrideToastVariant.jump;
            toastMessage = l.overrideJump(chartTitle.resolve(lang), salience);
          },
          guard: (chartTitle) {
            toastVisible = true;
            toastVariant = OverrideToastVariant.guard;
            toastMessage = l.overrideGuard(chartTitle.resolve(lang));
          },
          orElse: () {},
        );

        final zones = [
          for (final item in state.dangerPanel)
            DangerZoneData(
              key: item.key,
              label: item.label.resolve(lang),
              icon: AppIcons.forDangerKey(item.key),
            ),
        ];

        return Scaffold(
          backgroundColor: AppColors.page,
          body: Column(
            children: [
              RqAppBar(
                variant: RqAppBarVariant.session,
                title: title,
                lang: lang,
                onLangChange: context.read<LocaleCubit>().setLang,
                onBack: () => _openReset(context, state),
                onReset: () => _openReset(context, state),
              ),
              LoadingBar(active: state.loading),
              Expanded(
                child: Stack(
                  children: [
                    if (screen == null)
                      const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primary,
                        ),
                      )
                    else
                      Positioned.fill(
                        child: AnimatedOpacity(
                          opacity: state.loading ? 0 : 1,
                          duration: const Duration(milliseconds: 150),
                          child: SessionBody(
                            screen: screen,
                            lang: lang,
                            onSelect: (id) => cubit.step(id.toString()),
                            onEnd: () => _endSession(context),
                            onStartAgain: cubit.reset,
                            onBackHome: () => context.go('/'),
                          ),
                        ),
                      ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: OverrideToast(
                        visible: toastVisible,
                        variant: toastVariant,
                        message: toastMessage,
                      ),
                    ),
                  ],
                ),
              ),
              if (state.errorVisible)
                ErrorSnackbar(
                  message: l.connectionErrorRetry,
                  onRetry: cubit.retryLast,
                ),
              DangerPanel(
                zones: zones,
                locked: state.loading,
                onZone: cubit.onDangerZone,
              ),
            ],
          ),
        );
      },
    );
  }
}
