import 'package:get_it/get_it.dart';
import 'package:space/modules/home/repo/home-repository.dart';
import 'package:space/modules/home/services/home-services.dart';

GetIt getIt = GetIt.asNewInstance();

void setupGetIt() {
  getIt.registerLazySingleton(() => HomeServices());
  getIt.registerLazySingleton(() => HomeRepository());
}
