import 'package:flutter/material.dart';
import '../Models/signinform.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Welcome',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const signinform(),
    );
  }
}
