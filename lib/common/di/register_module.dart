import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/services/api_service.dart';
import '../config/api_config.dart';
import '../network/dio_factory.dart';

/// Third-party singletons that injectable can't construct by annotation.
@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  Dio dio(ApiConfig config) => DioFactory.create(config);

  @lazySingleton
  ApiService apiService(Dio dio) => ApiService(dio);
}
