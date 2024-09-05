import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodka_client/features/main/cubit/tab_box_cubit.dart';

import 'core/app.dart';
import 'app_config.dart';
import 'logic/blocs/blocs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppConfig.setUp();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: getIt.get<AuthBloc>()..add(const AuthEvent.checkTokenExpiry()),
        ),
        BlocProvider.value(value: getIt.get<UserBloc>()),
        BlocProvider.value(value: getIt.get<TabBoxCubit>()),
      ],
      child: const App(),
    ),
  );
}
