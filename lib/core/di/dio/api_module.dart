import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../config/env.dart';
import '../../../config/envs/dev_env.dart';
import '../../../config/envs/prod_env.dart';
import '../../services/auth_storage_service.dart';

// @module
// abstract class ApiModule {
//   @singleton
//   Env get config {
//     const env = String.fromEnvironment('FLUTTER_ENV', defaultValue: 'dev');
//     if (env == 'prod') {
//       return ProdEnv();
//     }
//     return DevEnv();
//   }
// }

@singleton
class AuthInterceptor extends Interceptor {
  final AuthStorageService authStorageService;
  AuthInterceptor(this.authStorageService);
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await authStorageService.getToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }
}

@singleton
class LoggingInterceptor extends Interceptor {
  //! onRequest
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('Request[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  //! onRequest
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('Response[${response.statusCode}]: ${response.data}');
    super.onResponse(response, handler);
  }

  //! onError
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('Error[${err.response?.statusCode}]: ${err.message}');
    super.onError(err, handler);
  }
}

@singleton
class LanguageInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    return handler.next(options);
  }
}
