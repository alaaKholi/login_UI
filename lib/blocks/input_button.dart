import 'package:flutter/material.dart';

class InputButton extends StatelessWidget {
  InputButton({this.text, this.prefix, this.suffix, this.ob});

  final String text;
  final Widget prefix;
  final Widget suffix;
  final bool ob;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.purple[100],
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: TextField(
        cursorColor: Colors.purple[800],
        keyboardType: TextInputType.emailAddress,
        obscureText: ob,
        style: TextStyle(fontSize: 20, color: Colors.purple[800]),
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(fontSize: 16, color: Colors.purple[300]),
            border: InputBorder.none,
            prefixIcon: prefix,
            suffixIcon: suffix),
      ),
    );
  }
}
