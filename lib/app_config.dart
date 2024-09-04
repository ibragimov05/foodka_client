import 'package:foodka_client/features/auth/login/cubit/login_cubit.dart';
import 'package:foodka_client/features/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class AppConfig {
  static void setUp() {}

  static void dependencySetUp() {
    getIt.registerLazySingleton(() => LoginCubit());
    getIt.registerLazySingleton(() => SignUpCubit());
  }
}
