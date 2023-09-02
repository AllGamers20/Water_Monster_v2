import 'package:flutter/material.dart';
import '../Constants/color.dart';

class language extends StatelessWidget {
  const language({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Language',
      onPressed: () {},
      icon: const Icon(
        Icons.language,
        color: maincolor,
        size: 40,
      ),
    );
  }
}
