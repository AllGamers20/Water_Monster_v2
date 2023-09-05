import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:water_monster_v2/Constants/controller.dart';
import 'package:water_monster_v2/Screens/home.dart';
import '../Constants/color.dart';

class signinform extends StatefulWidget {
  const signinform({
    super.key,
  });

  @override
  State<signinform> createState() => _signinformState();
}

final _formKey = GlobalKey<FormState>();

class _signinformState extends State<signinform> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
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
                keyboardType: TextInputType.emailAddress,
                controller: email_txt,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: maincolor, fontFamily: 'Nunito'),
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
                decoration: const InputDecoration(
                  labelStyle: TextStyle(color: maincolor, fontFamily: 'Nunito'),
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
              onPressed: () =>
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Home(),
              )),
              icon: const Icon(Icons.login),
              label: const Text('Sign in'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont have account?'),
                const Padding(padding: EdgeInsets.all(8.0)),
                TextButton(
                    onPressed: () => print('Signup'),
                    child: const Text('Signup'))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () => print('Forget'),
                    child: const Text('ForgetPassword'))
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => print('Google'),
                  child: SvgPicture.asset(
                    'Assets/svg/google.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
                const Padding(padding: EdgeInsets.all(20.0)),
                GestureDetector(
                  onTap: () => print('metamask'),
                  child: SvgPicture.asset(
                    'Assets/svg/metamask.svg',
                    width: 30,
                    height: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
