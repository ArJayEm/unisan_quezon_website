import 'package:get_it/get_it.dart';
import 'package:unisan_quezon_website/services/navigation_service.dart';

GetIt locator = GetIt.asNewInstance();

void setUpLocator() {
  locator.registerLazySingleton(() => NavigationService());
}