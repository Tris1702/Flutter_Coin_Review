import 'package:dio/dio.dart';
import 'package:dio_project/base/base_network_option.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter/foundation.dart';

class NetworkService {
  var baseNetworkOption = BaseNetworkOption.baseOptions;
  Dio dio = Dio();
  CookieJar cookieJar = CookieJar();

  void initDio() {
    print('initize');
    dio.options = baseNetworkOption;
    dio.interceptors.add(
      InterceptorsWrapper(onRequest: (options, handler) {
        log('On Requet', options.uri.toString());
        return handler.next(options);
      }, onResponse: (response, handler) {
        log('On Response', response.statusMessage.toString());
        // log('On Response', handler.isCompleted.toString());
        return handler.next(response);
      }, onError: (DioError e, handler) {
        log('On Error', e.message.toString());
        // log('On Error', handler.isCompleted.toString());
        return handler.next(e);
      }),
    );
    dio.interceptors.add(CookieManager(cookieJar));
    print('initized');
  }

  void log(String key, String message) {
    if (!kReleaseMode) {
      print('==> $key: $message');
    }
  }
}
