import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/charts/chart_dto.dart';
import '../models/session/session_response_dto.dart';

part 'api_service.g.dart';

/// The full ResQRules REST contract (see `reference/API.md`). One Retrofit
/// client over the configured [Dio].
@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET('/charts')
  Future<List<ChartDto>> getCharts();

  @POST('/sessions')
  Future<SessionResponseDto> startSession(@Body() Map<String, dynamic> body);

  @GET('/sessions/{id}')
  Future<SessionResponseDto> getSession(@Path('id') String id);

  @POST('/sessions/{id}/step')
  Future<SessionResponseDto> step(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );

  @POST('/sessions/{id}/reset')
  Future<SessionResponseDto> reset(
    @Path('id') String id,
    @Body() Map<String, dynamic> body,
  );

  @DELETE('/sessions/{id}')
  Future<void> endSession(@Path('id') String id);
}
