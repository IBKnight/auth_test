import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     resizeToAvoidBottomInset: true,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Auth',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(height: 32),
                TextFormField(
                  controller: _loginController,
                  decoration: const InputDecoration(
                    labelText: 'Login',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    value = value ?? '';
                    if (value.length < 7) {
                      return 'Username must be at least 7 characters long';
                    }

                    final regex = RegExp(r'^[a-zA-Z0-9]+$');

                    if (!regex.hasMatch(value)) {
                      return 'Username must only contain alphanumeric characters';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 32),
                TextFormField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    value = value ?? '';
                    if (value.length < 7) {
                      return 'Password must be at least 7 characters long';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: const Text('Log in'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
