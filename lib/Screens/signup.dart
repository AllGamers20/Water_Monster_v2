import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:validators/validators.dart';
import 'package:water_monster_v2/Constants/color.dart';
import 'package:water_monster_v2/Screens/home.dart';
import 'package:water_monster_v2/Screens/login.dart';
import 'package:water_monster_v2/Screens/provider.dart';
import '../Constants/controller.dart';
import '../Widgets/signinwithgoogle_btn.dart';
import '../Widgets/signinwithmetamask_btn.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late final _formKey = GlobalKey<FormState>();
  List<String> items = ["Client", "Provider"];
  String? selecteditem = "Client";
  String? _name, _email, _password;
  Future<void> createAccount() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email_txt.text,
        password: password_txt.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 30,
                    color: maincolor,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
                SizedBox(
                  width: 360,
                  child: TextFormField(
                    controller: name_txt,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter vaild name';
                      }
                      {
                        return null;
                      }
                    },
                    onSaved: (newValue) {
                      _name = newValue;
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      prefixIconColor: maincolor,
                      labelStyle:
                          TextStyle(color: maincolor, fontFamily: 'Nunito'),
                      labelText: 'Name',
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
                    keyboardType: TextInputType.emailAddress,
                    controller: email_txt,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter vaild email';
                      }
                      if (!isEmail(value)) {
                        return 'Please enter vaild email';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      _email = newValue!;
                    },
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
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    controller: password_txt,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter password';
                      }
                      if (value.length < 9) {
                        return 'Password doesnot match';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      prefixIconColor: maincolor,
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
                const Padding(padding: EdgeInsets.all(8.0)),
                SizedBox(
                  width: 360,
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.account_box),
                      prefixIconColor: maincolor,
                      labelStyle:
                          TextStyle(color: maincolor, fontFamily: 'Nunito'),
                      labelText: 'Account Type',
                      hintText: '',
                      focusColor: maincolor,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: maincolor,
                      )),
                      border: OutlineInputBorder(),
                    ),
                    value: selecteditem,
                    items: items
                        .map((item) => DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            ))
                        .toList(),
                    onChanged: (item) {
                      setState(() {
                        selecteditem = item;
                      });
                    },
                  ),
                ),
                const Padding(padding: EdgeInsets.all(8.0)),
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
                      if (_formKey.currentState!.validate() &&
                          selecteditem == 'Provider') {
                        createAccount();
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) {
                            return const Provider();
                          },
                        ));
                      }
                      {
                        // return;
                      }
                      {
                        if (_formKey.currentState!.validate() &&
                            selecteditem == 'Client') {
                          createAccount();
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) {
                              return const Home();
                            },
                          ));
                        }
                      }
                    },
                    icon: const Icon(Icons.login),
                    label: const Text('Sign Up')),
                const Padding(padding: EdgeInsets.all(8.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.all(8.0)),
                    const Text(
                      'Already have account',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                      ),
                    ),
                    const Padding(padding: EdgeInsets.all(8.0)),
                    TextButton(
                        onPressed: () => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => const Login(),
                            )),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            color: maincolor,
                          ),
                        ))
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
      ),
    );
  }
}
