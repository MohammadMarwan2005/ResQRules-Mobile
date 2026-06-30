import 'package:flutter_test/flutter_test.dart';
import 'package:resq_rules/common/di/injection.dart';
import 'package:resq_rules/presentation/features/home/cubit/charts_cubit.dart';
import 'package:resq_rules/presentation/features/session/cubit/session_cubit.dart';
import 'package:resq_rules/presentation/localization/locale_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('the injectable dependency graph resolves end-to-end', () async {
    SharedPreferences.setMockInitialValues({});
    await configureDependencies();

    expect(getIt<ChartsCubit>(), isA<ChartsCubit>());
    expect(getIt<SessionCubit>(), isA<SessionCubit>());
    expect(getIt<LocaleCubit>(), isA<LocaleCubit>());

    await getIt.reset();
  });
}
