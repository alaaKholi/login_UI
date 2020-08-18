import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/blocks/buttons.dart';
import 'package:login_ui/blocks/input_button.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double s = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'images/main_top.png',
              width: s * 0.38,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'images/main_bottom.png',
              width: s * 0.26,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.purple[600],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SvgPicture.asset(
                  'images/login.svg',
                  alignment: Alignment.center,
                  width: s * 0.8,
                ),
                SizedBox(
                  height: 20,
                ),
                InputButton(
                  ob: false,
                  text: 'username',
                  prefix: Icon(
                    Icons.person,
                    color: Colors.purple[800],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                InputButton(
                  ob: true,
                  text: 'password',
                  prefix: Icon(
                    Icons.vpn_key,
                    color: Colors.purple[800],
                  ),
                  suffix: Icon(
                    Icons.visibility_off,
                    color: Colors.purple[800],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Buttons(
                  onPressed: () {
                    print('login');
                  },
                  s: s,
                  color: Colors.purple[600],
                  text: 'LOGIN',
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignUpScreen.id);
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Dont have an account ? ',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.purple[200])),
                      TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.purple[200]))
                    ])),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
