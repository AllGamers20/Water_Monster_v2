import 'package:flutter/material.dart';
import '../Constants/color.dart';
import '../Constants/controller.dart';

class name_textfield extends StatelessWidget {
  const name_textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: TextField(
        decoration: const InputDecoration(
          labelStyle: TextStyle(color: maincolor, fontFamily: 'Nunito'),
          labelText: 'Name',
          hintText: '',
          focusColor: maincolor,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: maincolor,
          )),
          border: OutlineInputBorder(),
        ),
        controller: name_txt,
      ),
    );
  }
}
