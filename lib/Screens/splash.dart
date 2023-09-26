// ignore_for_file: unnecessary_null_comparison
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_monster_v2/Constants/color.dart';
import 'package:water_monster_v2/Screens/home.dart';
import 'package:water_monster_v2/Screens/login.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  User? user;
  @override
  void initState() {
    super.initState();
    user = FirebaseAuth.instance.currentUser;
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          children: [
            SvgPicture.asset(
              'Assets/svg/Logo.svg',
              width: 110,
              height: 110,
            ),
            const SizedBox(
              height: 10,
            ),
            SvgPicture.asset(
              'Assets/svg/Loading.svg',
              width: 90,
              height: 90,
            ),
          ],
        ),
      ),
      nextScreen: user != null ? const Home() : const Login(),
      splashIconSize: 250,
      duration: 4000,
      backgroundColor: maincolor,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
