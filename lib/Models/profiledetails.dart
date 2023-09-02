import 'package:flutter/material.dart';
import 'package:water_monster_v2/Constants/color.dart';
import '../Widgets/logout_btn.dart';
import '../Widgets/nametextfield.dart';
import '../Widgets/phone_textfield.dart';
import 'language.dart';
import 'support.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: maincolor,
              radius: 70,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 100,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Example@gmail.com',
              style: TextStyle(
                color: maincolor,
                fontFamily: 'Nunito',
                fontSize: 20,
              ),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            name_textfield(),
            Padding(padding: EdgeInsets.all(8.0)),
            phone_textfield(),
            Padding(padding: EdgeInsets.all(10.0)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                support(),
                Padding(padding: EdgeInsets.all(10.0)),
                language(),
              ],
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            logout_btn()
          ],
        ),
      ),
    );
  }
}
