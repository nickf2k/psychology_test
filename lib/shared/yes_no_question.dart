import 'package:flutter/material.dart';
import 'package:psychology_test/constant/option_enum.dart';

class YesNoQuestion extends StatefulWidget {
  final String question;

  const YesNoQuestion({Key key, @required this.question}) : super(key: key);

  @override
  _YesNoQuestionState createState() => _YesNoQuestionState();
}

class _YesNoQuestionState extends State<YesNoQuestion> {
  OptionEnum result = OptionEnum.yes;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: ListTile(
          title: Text(
            widget.question,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RadioListTile<OptionEnum>(
                title: const Text('Yes'),
                value: OptionEnum.yes,
                groupValue: result,
                onChanged: (OptionEnum value) {
                  setState(() {
                    result = value;
                  });
                },
              ),
              RadioListTile<OptionEnum>(
                title: const Text('No'),
                value: OptionEnum.no,
                groupValue: result,
                onChanged: (OptionEnum value) {
                  setState(() {
                    result = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
