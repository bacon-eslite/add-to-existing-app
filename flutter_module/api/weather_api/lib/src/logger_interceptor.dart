import 'package:dio/dio.dart';

import 'common/logger.dart';

class LoggerInterceptor extends Interceptor {
  LoggerInterceptor();

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final m = {
      'uri': options.uri,
      'method': options.method,
      'headers': options.headers,
      'body': options.data,
    };
    Logger().i('*** Request ***\n$m');
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) async {
    final m = {
      'uri': response.requestOptions.uri,
      'statusCode': response.statusCode,
      'headers': response.headers,
      'body': response.data,
    };
    if (response.isRedirect == true) {
      m['redirect'] = response.realUri;
    }
    Logger().i('*** Response ***\n$m');

    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    Logger().e('*** DioException ***\n'
        'uri: ${err.requestOptions.uri}\n'
        '$err'
        '${err.response != null ? err.response!.data : ''}');
    handler.next(err);
  }
}
