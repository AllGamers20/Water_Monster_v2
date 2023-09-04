import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_monster_v2/Constants/color.dart';
import '../Screens/body.dart';
import '../Screens/profile.dart';

class nav_bar extends StatelessWidget {
  const nav_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Body(),
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: maincolor,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const Profile();
                    },
                  ));
                },
                icon: const Icon(
                  Icons.account_circle,
                  size: 40,
                )),
          )
        ],
        title: SvgPicture.asset(
          'Assets/svg/Logo.svg',
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
