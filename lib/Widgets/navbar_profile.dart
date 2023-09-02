import 'package:flutter/material.dart';
import 'package:water_monster_v2/Constants/color.dart';

AppBar navbarprofile() {
  return AppBar(
    backgroundColor: maincolor,
    foregroundColor: Colors.white,
    title: const Text(
      'Profile',
      style: TextStyle(
        fontFamily: 'Nunito',
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
