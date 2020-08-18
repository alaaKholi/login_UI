import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_ui/blocks/buttons.dart';
import 'login_screen.dart';
import 'signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';
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
              width: s * 0.34,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'images/main_bottom.png',
              width: s * 0.2,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.purple[600],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SvgPicture.asset(
                    'images/chat.svg',
                    width: s * 0.8,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Buttons(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.id);
                        },
                        s: s,
                        text: 'LOGIN',
                        color: Colors.purple[600],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Buttons(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.id);
                        },
                        s: s,
                        text: 'SIGN UP',
                        color: Colors.purple[100],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
