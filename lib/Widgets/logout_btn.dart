import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:water_monster_v2/Screens/login.dart';
import '../Constants/color.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
Future<void> _handleSignOut() async {
  await FirebaseAuth.instance.signOut();
  await _googleSignIn.signOut();
}

class logout_btn extends StatefulWidget {
  const logout_btn({
    super.key,
  });

  @override
  State<logout_btn> createState() => _logout_btnState();
}

class _logout_btnState extends State<logout_btn> {
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
        onPressed: () async {
          _handleSignOut();
          FirebaseAuth.instance.signOut();
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const Login(),
              ),
              (route) => false);
        },
        icon: const Icon(Icons.logout),
        label: const Text('Logout'));
  }
}
