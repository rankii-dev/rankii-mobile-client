import 'dart:async';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@preResolve
@injectable
class RankiiClient {
  static const BASE_URL = "http://192.168.2.10:8080/api/v1/";
  Dio _dio = new Dio(BaseOptions(
    baseUrl: BASE_URL,
    connectTimeout: 5000,
    receiveTimeout: 5000,
  ));
  Dio get connection => _dio;

  @factoryMethod
  static Future<RankiiClient> create() async {
    final instance = RankiiClient();
    instance.connection.interceptors.addAll([
      LogInterceptor(
        responseBody: true,
      ),
    ]);
    instance.healthCheck();
    Timer.periodic(Duration(minutes: 1), (timer) => instance.healthCheck());

    return instance;
  }

  Future<void> healthCheck() async {
    await connection.get("actuator/health");
  }
}
