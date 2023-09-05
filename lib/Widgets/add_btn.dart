import 'package:flutter/material.dart';
import '../Constants/color.dart';

class add_btn extends StatelessWidget {
  const add_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
       style: const ButtonStyle(
          overlayColor: MaterialStatePropertyAll(Colors.green),
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
        onPressed: () => print('add'),
        icon: const Icon(Icons.add),
        label: const Text('New Installation'));
  }
}