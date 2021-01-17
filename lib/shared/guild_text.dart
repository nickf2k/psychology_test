import 'package:flutter/material.dart';

class GuideText extends StatelessWidget {
  final String text;
  final double fontSize;

  const GuideText({Key key, this.text, this.fontSize = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: fontSize),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
