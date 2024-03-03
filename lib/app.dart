import 'package:auth_test/presentation/auth_screen.dart';
import 'package:flutter/material.dart';


class AuthTest extends StatelessWidget {
  const AuthTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AuthScreen(),
    );
  }
}
