import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';

class HyperActivityResult extends StatelessWidget {
  const HyperActivityResult({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String result = ModalRoute.of(context).settings.arguments;
    return BaseContainer(
      canPop: false,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/result.png'),
            Text(
              result.toString(),
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
