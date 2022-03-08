import 'package:dio/dio.dart';
import 'package:dio_project/config/app_config.dart';

class BaseNetworkOption {
  static BaseOptions baseOptions = BaseOptions(
    baseUrl: AppConfig.baseUrl,
    connectTimeout: 15000,
    receiveTimeout: 15000,
  );
}
