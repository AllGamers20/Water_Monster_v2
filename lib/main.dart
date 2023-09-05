import 'package:flutter/material.dart';
import 'package:water_monster_v2/Constants/color.dart';
import 'package:water_monster_v2/Screens/Login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: maincolor),
        useMaterial3: true,
      ),
    );
  }
}
