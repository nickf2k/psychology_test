import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/data/intellect_data.dart';
import 'package:psychology_test/shared/default_button.dart';

class IntellectResult extends StatefulWidget {
  @override
  _IntellectResultState createState() => _IntellectResultState();
}

class _IntellectResultState extends State<IntellectResult> {
  bool canShowResult = false;
  TextEditingController ageCtrl = TextEditingController();
  String result;
  int iQ = 0;

  @override
  Widget build(BuildContext context) {
    int point = ModalRoute.of(context).settings.arguments;

    return BaseContainer(
      title: "Kết quả kiểm tra trí tuệ",
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/result.png'),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Nhập tuổi của bé',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              TextField(
                controller: ageCtrl,
                keyboardType: TextInputType.number,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'eg: 6',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              !canShowResult
                  ? AppButton(
                      onPressed: () {
                        setState(() {
                          iQ = calcResult(point);
                          result = IntellectData.getMessage(iQ);

                          canShowResult = true;
                        });
                      },
                      title: 'Tính IQ của bé',
                    )
                  : Column(
                      children: [
                        Text(
                          'IQ của bé là: ' + iQ.toString(),
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          result ?? "",
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    )
            ],
          ),
        ),
      ),
    );
  }

  int calcResult(int point) {
    int realAge = int.parse(ageCtrl.text);
    FocusScope.of(context).unfocus();
    ageCtrl.clear();
    return (((point + 10) ~/ 4) / realAge * 100).toInt();
    // return point
  }
}
