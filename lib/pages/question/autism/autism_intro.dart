import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/config/app_color.dart';
import 'package:psychology_test/constant/route_constant.dart';
import 'package:psychology_test/data/autism_data.dart';
import 'package:psychology_test/shared/default_button.dart';
import 'package:psychology_test/shared/guild_text.dart';
import 'package:psychology_test/shared/question_page.dart';

class AutismIntroducePage extends StatelessWidget {
  double fontSize = 15;

  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      title: 'Giới thiệu',
      child: Container(
        color: AppColor.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/guide.png'),
            Column(
              children: [
                GuideText(
                  text:
                      'Bài test dựa vào bảng đánh giá tự kỷ M-CHART-R',
                ),
                SizedBox(
                  height: 30,
                ),
                GuideText(
                  text: 'Bài test gồm 20 câu hỏi',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            AppButton(
              title: 'Bắt đầu',
              minWidth: 200,
              fontSize: 18,
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => QuestionPage(
                        categoryIndex: 0,
                        dataInstance: AutismData(),
                        initPoint: 0,
                        isAutismTest: true,
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
