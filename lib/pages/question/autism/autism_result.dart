import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';

class AutismTestResult extends StatelessWidget {
  TextStyle styleText = TextStyle(
    fontSize: 15,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    Map<String, String> result =
        ModalRoute.of(context).settings.arguments;
    return BaseContainer(
        canPop: false,
        title: "Kết quả kiểm tra tự kỷ",
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/result.png'),
                Text(
                  'Kết quả bài kiểm tra:',
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(result['result'], textAlign: TextAlign.justify),
                SizedBox(
                  height: 20,
                ),
                Text('Chú ý:', textAlign: TextAlign.justify),
                SizedBox(
                  height: 10,
                ),
                Text(result['advice'], textAlign: TextAlign.justify),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ));
  }
}
