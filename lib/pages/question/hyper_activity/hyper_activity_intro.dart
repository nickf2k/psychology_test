import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/config/app_color.dart';
import 'package:psychology_test/constant/route_constant.dart';
import 'package:psychology_test/data/hyper_activity_data.dart';
import 'package:psychology_test/shared/default_button.dart';
import 'package:psychology_test/shared/guild_text.dart';
import 'package:psychology_test/shared/question_page.dart';

class HyperActivityIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      title: 'Giới thiệu',
      child: Container(
        color: AppColor.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/guide.png'),
              Column(
                children: [
                  GuideText(
                    text: 'Có 2 bài test, mỗi test có nhiều câu hỏi',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GuideText(
                    text: 'Chuẩn bị:  ',
                  ),
                  GuideText(
                      text:
                          'Test 1: Chuẩn đoán tăng động giảm chú ý thể hiếu động, bồng bột'),
                  GuideText(
                      text:
                          'Test 2: Chuẩn đoán tăng động giảm chú ý thể tăng động giảm chú ý thiếu tập trung'),
                  GuideText(
                    text: 'Yêu cầu hoàn thành cả hai bài test này',
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
                onPressed: () =>
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => QuestionPage(
                          categoryIndex: 0,
                          dataInstance: HyperActivityData(),
                          initPoint: 0,
                        ))),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
