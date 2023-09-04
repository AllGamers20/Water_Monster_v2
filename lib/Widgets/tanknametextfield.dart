import 'package:flutter/material.dart';
import '../Constants/color.dart';
import '../Constants/controller.dart';

class tanknametextfield extends StatelessWidget {
  const tanknametextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: TextField(
        controller: tank_name,
        decoration: const InputDecoration(
          labelStyle: TextStyle(
              color: maincolor, fontFamily: 'Nunito'),
          labelText: 'TankName',
          hintText: '',
          focusColor: maincolor,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: maincolor,
          )),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}