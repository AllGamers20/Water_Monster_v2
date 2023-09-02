import 'package:flutter/material.dart';
import '../Constants/color.dart';
import '../Constants/controller.dart';

class phone_textfield extends StatelessWidget {
  const phone_textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: TextField(
        keyboardType: TextInputType.phone,
        decoration: const InputDecoration(
          labelStyle: TextStyle(color: maincolor),
          labelText: 'Phone Number',
          hintText: '',
          focusColor: maincolor,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: maincolor,
          )),
          border: OutlineInputBorder(),
        ),
        controller: phone_txt,
      ),
    );
  }
}
