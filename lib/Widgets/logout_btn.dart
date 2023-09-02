import 'package:flutter/material.dart';
import '../Constants/color.dart';

class logout_btn extends StatelessWidget {
  const logout_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(Colors.red),
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(maincolor),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          padding: MaterialStatePropertyAll(
            EdgeInsets.fromLTRB(50, 0, 50, 0),
          ),
        ),
        onPressed: () => print('Logout'),
        icon: const Icon(Icons.logout),
        label: const Text('Logout'));
  }
}
