import 'package:shared_preferences/shared_preferences.dart';
import 'package:foodka_client/features/auth/login/cubit/login_cubit.dart';
import 'package:foodka_client/features/auth/sign_up/cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class AppConfig {

  static Future<void> dependencySetUp() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    getIt.registerLazySingleton<LoginCubit>(() => LoginCubit());
    getIt.registerLazySingleton<SignUpCubit>(() => SignUpCubit());
  }
}
