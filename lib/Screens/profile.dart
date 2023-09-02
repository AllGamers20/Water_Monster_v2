import 'package:flutter/material.dart';
import '../Models/profiledetails.dart';
import '../Widgets/navbar_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navbarprofile(),
      body: const ProfileDetails(),
    );
  }
}
