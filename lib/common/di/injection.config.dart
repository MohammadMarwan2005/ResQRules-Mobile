// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:resq_rules/common/config/api_config.dart' as _i554;
import 'package:resq_rules/common/di/register_module.dart' as _i992;
import 'package:resq_rules/data/error/error_handler_impl.dart' as _i784;
import 'package:resq_rules/data/repositories/charts_repository_impl.dart'
    as _i403;
import 'package:resq_rules/data/repositories/session_repository_impl.dart'
    as _i79;
import 'package:resq_rules/data/services/api_service.dart' as _i218;
import 'package:resq_rules/domain/error/error_handler.dart' as _i178;
import 'package:resq_rules/domain/repositories/charts_repository.dart' as _i499;
import 'package:resq_rules/domain/repositories/session_repository.dart'
    as _i326;
import 'package:resq_rules/domain/usecases/charts/get_sorted_charts.dart'
    as _i962;
import 'package:resq_rules/domain/usecases/session/resolve_override_outcome.dart'
    as _i916;
import 'package:resq_rules/presentation/features/home/cubit/charts_cubit.dart'
    as _i889;
import 'package:resq_rules/presentation/features/session/cubit/session_cubit.dart'
    as _i238;
import 'package:resq_rules/presentation/localization/locale_cubit.dart'
    as _i714;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i554.ApiConfig>(() => const _i554.ApiConfig());
    gh.lazySingleton<_i916.ResolveOverrideOutcome>(
      () => const _i916.ResolveOverrideOutcome(),
    );
    gh.lazySingleton<_i178.ErrorHandler>(() => const _i784.ErrorHandlerImpl());
    gh.lazySingleton<_i714.LocaleCubit>(
      () => _i714.LocaleCubit(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i361.Dio>(
      () => registerModule.dio(gh<_i554.ApiConfig>()),
    );
    gh.lazySingleton<_i218.ApiService>(
      () => registerModule.apiService(gh<_i361.Dio>()),
    );
    gh.lazySingleton<_i499.ChartsRepository>(
      () => _i403.ChartsRepositoryImpl(
        gh<_i218.ApiService>(),
        gh<_i178.ErrorHandler>(),
      ),
    );
    gh.lazySingleton<_i962.GetSortedCharts>(
      () => _i962.GetSortedCharts(gh<_i499.ChartsRepository>()),
    );
    gh.lazySingleton<_i326.SessionRepository>(
      () => _i79.SessionRepositoryImpl(
        gh<_i218.ApiService>(),
        gh<_i178.ErrorHandler>(),
      ),
    );
    gh.factory<_i238.SessionCubit>(
      () => _i238.SessionCubit(
        gh<_i326.SessionRepository>(),
        gh<_i916.ResolveOverrideOutcome>(),
        gh<_i460.SharedPreferences>(),
      ),
    );
    gh.factory<_i889.ChartsCubit>(
      () => _i889.ChartsCubit(gh<_i962.GetSortedCharts>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i992.RegisterModule {}
