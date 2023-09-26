import 'package:flutter/material.dart';
import 'package:water_monster_v2/Screens/signup.dart';
import '../Constants/color.dart';

class signup_btn extends StatelessWidget {
  const signup_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const Signup(),
      )),
      child: const Text(
        'Signup',
        style: TextStyle(
          color: maincolor,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
