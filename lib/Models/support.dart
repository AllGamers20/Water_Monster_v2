import 'package:flutter/material.dart';

import '../Constants/color.dart';

class support extends StatelessWidget {
  const support({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Support',
      onPressed: () {},
      icon: const Icon(
        Icons.support_agent,
        color: maincolor,
        size: 40,
      ),
    );
  }
}