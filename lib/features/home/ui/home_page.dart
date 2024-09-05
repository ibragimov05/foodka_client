import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          Center(
            child: Text(
              'HOME',
              style: TextStyle(fontSize: 50),
            ),
          )
        ],
      ),
    );
  }
}
