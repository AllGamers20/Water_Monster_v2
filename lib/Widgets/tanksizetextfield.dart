import 'package:flutter/material.dart';
import '../Constants/color.dart';
import '../Constants/controller.dart';

class tanksizetextfield extends StatelessWidget {
  const tanksizetextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: TextField(
        keyboardType: TextInputType.number,
        controller: tank_size,
        decoration: const InputDecoration(
          labelStyle: TextStyle(color: maincolor, fontFamily: 'Nunito'),
          labelText: 'Size(Liter)',
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
