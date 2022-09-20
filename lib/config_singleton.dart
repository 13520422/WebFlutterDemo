import 'package:desktopapp/database/database.dart';
import 'package:desktopapp/database/table/customer/customer.dart';
import 'package:desktopapp/database/table/employee_delivery/employee_delivery.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<Database>(constructDb());
  getIt.registerLazySingleton<CustomersProvider>(() => CustomersProvider());
  getIt.registerLazySingleton<EmployeeDeliverysProvider>(
      () => EmployeeDeliverysProvider());
}
