import 'package:flutter/material.dart';
import '../Constants/color.dart';

class forgetpassword_btn extends StatelessWidget {
  const forgetpassword_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('ok'))
            ],
            title: const Text('NOT FINAL RESULT'),
          ),
        );
      },
      child: const Text(
        'ForgetPassword',
        style: TextStyle(
          color: maincolor,
          fontFamily: 'Nunito',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
