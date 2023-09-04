import 'package:flutter/material.dart';
import 'package:water_monster_v2/Models/tank_settings_details.dart';
import '../Constants/color.dart';

class navbar_tank_settings extends StatelessWidget {
  const navbar_tank_settings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const TankSettingsDetails(),
      appBar: AppBar(
        backgroundColor: maincolor,
        foregroundColor: Colors.white,
        title: const Text(
          'Tank Settings',
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
