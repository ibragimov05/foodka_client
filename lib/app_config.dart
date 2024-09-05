import 'package:get_it/get_it.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'logic/blocs/blocs.dart';
import 'data/services/services.dart';
import 'data/repositories/repositories.dart';
import 'features/auth/login/cubit/login_cubit.dart';
import 'features/auth/sign_up/cubit/sign_up_cubit.dart';

final GetIt getIt = GetIt.instance;

class AppConfig {
  static Future<void> setUp() async {
    await dotenv.load(fileName: '.env');

    await _dependencySetUp();
  }

  static Future<void> _dependencySetUp() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    const FlutterSecureStorage secureStorage = FlutterSecureStorage();
    final AuthDioService authDioService = AuthDioService();

    /// registering local storages
    getIt.registerLazySingleton<FlutterSecureStorage>(() => secureStorage);
    getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

    /// registering repositories
    getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepository(authDioService: authDioService),
    );

    /// registering cubits
    getIt.registerLazySingleton<LoginCubit>(() => LoginCubit());
    getIt.registerLazySingleton<SignUpCubit>(() => SignUpCubit());

    /// registering blocs
    getIt.registerLazySingleton<AuthBloc>(
      () => AuthBloc(authRepository: getIt.get<AuthRepository>()),
    );
  }
}
