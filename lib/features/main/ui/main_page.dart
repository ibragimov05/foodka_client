import 'package:flutter/material.dart';

import '../../../app_config.dart';
import '../../../logic/blocs/blocs.dart';
import '../../widgets/widgets.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ZoomTapAnimation(
            onTap: () => getIt.get<AuthBloc>().add(const AuthEvent.logOut()),
            child: const Center(child: FlutterLogo(size: 300)),
          ),
        ],
      ),
    );
  }
}
