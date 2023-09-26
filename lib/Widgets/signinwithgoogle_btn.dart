import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../Screens/home.dart';

class signinwithgoogle_btn extends StatefulWidget {
  const signinwithgoogle_btn({
    super.key,
  });

  @override
  State<signinwithgoogle_btn> createState() => _signinwithgoogle_btnState();
}

Future<void> signinwithgoogle() async {
  FirebaseAuth auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final GoogleSignInAccount? googleuser = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleauth =
      await googleuser!.authentication;
  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleauth.accessToken,
    idToken: googleauth.idToken,
  );
  final UserCredential userCredential =
      await auth.signInWithCredential(credential);
}

class _signinwithgoogle_btnState extends State<signinwithgoogle_btn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await signinwithgoogle();
        if (mounted) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) {
              return const Home();
            },
          ));
        }
      },
      child: SvgPicture.asset(
        'Assets/svg/google.svg',
        width: 30,
        height: 30,
      ),
    );
  }
}
