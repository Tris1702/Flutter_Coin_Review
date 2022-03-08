import 'package:dio_project/repository/network_repository_impl.dart';
import 'package:dio_project/service/network_service.dart';
import 'package:get_it/get_it.dart';

void setUpServiceLocator() {
  GetIt getIt = GetIt.I;
  getIt.registerLazySingleton<NetworkService>(() => NetworkService());
  getIt.registerLazySingleton<NetworkRepositoryImpl>(
      () => NetworkRepositoryImpl());
}
