import 'package:flutter/material.dart';
import '../Models/services.dart';
import '../Models/tank.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(8.0)),
          Services(),
          Padding(padding: EdgeInsets.all(10.0)),
          Tank(),
        ],
      ),
    );
  }
}
