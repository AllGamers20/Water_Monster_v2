import 'package:flutter/material.dart';

class tanksettingsave_btn extends StatelessWidget {
  const tanksettingsave_btn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: const ButtonStyle(
          overlayColor:
              MaterialStatePropertyAll(Colors.green),
          textStyle: MaterialStatePropertyAll(
            TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Nunito',
            ),
          ),
          backgroundColor:
              MaterialStatePropertyAll(Colors.grey),
          foregroundColor:
              MaterialStatePropertyAll(Colors.white),
          padding: MaterialStatePropertyAll(
            EdgeInsets.fromLTRB(50, 0, 50, 0),
          ),
        ),
        onPressed: () => print('object'),
        icon: const Icon(Icons.save),
        label: const Text('Save'));
  }
}