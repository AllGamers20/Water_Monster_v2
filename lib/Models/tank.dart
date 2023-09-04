import 'package:flutter/material.dart';
import 'package:water_monster_v2/Models/tank_details.dart';

class Tank extends StatelessWidget {
  const Tank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.95,
      height: 560,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(
              4.0,
              4.0,
            ),
          ),
          BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(
              -4.0,
              -4.0,
            ),
          ),
        ],
      ),
      child: const Tank_Details(),
    );
  }
}
