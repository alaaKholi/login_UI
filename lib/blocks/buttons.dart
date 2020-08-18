import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  Buttons({this.text, this.s, this.color, @required this.onPressed});

  final double s;
  final String text;
  final Color color;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.all(Radius.circular(25))),
      width: s * 0.78,
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
