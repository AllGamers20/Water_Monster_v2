import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:water_monster_v2/Constants/controller.dart';
import 'package:water_monster_v2/Screens/home.dart';
import '../Constants/color.dart';
import '../Widgets/forgetpassword_btn.dart';
import '../Widgets/signinwithgoogle_btn.dart';
import '../Widgets/signinwithmetamask_btn.dart';
import '../Widgets/login_btn.dart';
import 'package:validators/validators.dart';

class signinform extends StatefulWidget {
  const signinform({
    super.key,
  });

  @override
  State<signinform> createState() => _signinformState();
}

Future<void> emailpassword() async {
  try {
    final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email_txt.text,
      password: password_txt.text,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      print('No user found for that email.');
    } else if (e.code == 'wrong-password') {
      print('Wrong password provided for that user.');
    }
  }
}

final _formKey = GlobalKey<FormState>();
String? _name, _email, _password;

class _signinformState extends State<signinform> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                'Sign In',
                style: TextStyle(
                  color: maincolor,
                  fontFamily: 'Nunito',
                  fontSize: 25,
                ),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              SizedBox(
                width: 360,
                child: TextFormField(
                  controller: email_txt,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter vaild email';
                    } else if (!isEmail(value)) {
                      return 'Please enter vaild email';
                    }
                    print(value);
                    return null;
                  },
                  onSaved: (newValue) {
                    _email = newValue!;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    prefixIconColor: maincolor,
                    labelStyle:
                        TextStyle(color: maincolor, fontFamily: 'Nunito'),
                    labelText: 'Email',
                    hintText: '',
                    focusColor: maincolor,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: maincolor,
                    )),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              SizedBox(
                width: 360,
                child: TextFormField(
                  controller: password_txt,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'enter password';
                    } else if (value.length < 9) {
                      return 'Password doesnot match';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIconColor: maincolor,
                    prefixIcon: Icon(Icons.lock),
                    labelStyle:
                        TextStyle(color: maincolor, fontFamily: 'Nunito'),
                    labelText: 'Password',
                    hintText: '',
                    focusColor: maincolor,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: maincolor,
                    )),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(15.0)),
              ElevatedButton.icon(
                style: const ButtonStyle(
                  overlayColor: MaterialStatePropertyAll(Colors.green),
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
                onPressed: () {
                  if (email_txt.text.isNotEmpty &&
                      password_txt.text.length > 6) {
                    emailpassword();
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) {
                        return const Home();
                      },
                    ));
                  } else {
                    print('error');
                  }
                },
                icon: const Icon(Icons.login),
                label: const Text('Sign in'),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have account?',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  signup_btn()
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  forgetpassword_btn(),
                ],
              ),
              const Text(
                '________ Or ________',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Nunito',
                ),
              ),
              const Padding(padding: EdgeInsets.all(8.0)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  signinwithgoogle_btn(),
                  Padding(padding: EdgeInsets.all(20.0)),
                  signinwithmetamask_btn(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
