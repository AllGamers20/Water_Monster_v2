import 'package:firebase_auth/firebase_auth.dart';
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CircleAvatar(
              backgroundColor: maincolor,
              radius: 70,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 100,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              FirebaseAuth.instance.currentUser!.email!,
              style: const TextStyle(
                color: maincolor,
                fontFamily: 'Nunito',
                fontSize: 20,
              ),
            ),
            const Padding(padding: EdgeInsets.all(8.0)),
            const name_textfield(),
            const Padding(padding: EdgeInsets.all(8.0)),
            const phone_textfield(),
            const Padding(padding: EdgeInsets.all(10.0)),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                support(),
                Padding(padding: EdgeInsets.all(10.0)),
                language(),
              ],
            ),
            const Padding(padding: EdgeInsets.all(10.0)),
            const logout_btn()
          ],
        ),
      ),
    );
  }
}
