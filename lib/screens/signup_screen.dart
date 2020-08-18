import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/blocks/input_button.dart';
import 'package:login_ui/blocks/buttons.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  static String id = 'signup_screen';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
              'images/signup_top.png',
              width: s * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              'images/login_bottom.png',
              width: s * 0.45,
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
                    'SIGN UP',
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
                  'images/signup.svg',
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
                    print('sign up');
                  },
                  s: s,
                  color: Colors.purple[600],
                  text: 'SIGN UP',
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, LoginScreen.id);
                    },
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: 'Already have an account ? ',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.purple[100],
                        ),
                      ),
                      TextSpan(
                        text: 'Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.purple[200],
                        ),
                      )
                    ])),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    '- OR -',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                      color: Colors.purple[200],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    buildSocialIcon(() {}, 'images/facebook.svg'),
                    buildSocialIcon(() {}, 'images/twitter.svg'),
                    buildSocialIcon(() {}, 'images/instagram.svg'),
                    /* FlatButton(
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.purple[100])),
                      onPressed: null,
                      child: SvgPicture.asset(
                        'images/facebook.svg',
                        height: 18,
                        color: Colors.purple[300],
                      ),
                    ),
                    FlatButton(
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.purple[100])),
                      onPressed: null,
                      child: SvgPicture.asset(
                        'images/twitter.svg',
                        height: 18,
                        color: Colors.purple[300],
                      ),
                    ),
                    FlatButton(
                      shape: CircleBorder(
                          side: BorderSide(color: Colors.purple[100])),
                      onPressed: null,
                      child: SvgPicture.asset(
                        'images/instagram.svg',
                        height: 18,
                        color: Colors.purple[300],
                      ),
                    ),*/
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildSocialIcon(Function f, String s) {
    return GestureDetector(
      onTap: f,
      child: Container(
        height: 50,
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Colors.purple[100],
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          s,
          color: Colors.purple[300],
        ),
      ),
    );
  }
}
