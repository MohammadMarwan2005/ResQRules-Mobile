import 'package:flutter/widgets.dart';

import 'app.dart';
import 'common/di/injection.dart';

/// Initializes bindings + DI, then runs the app.
Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const ResQRulesApp());
}
