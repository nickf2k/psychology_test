import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/config/app_color.dart';
import 'package:psychology_test/constant/route_constant.dart';
import 'package:psychology_test/data/intellect_data.dart';
import 'package:psychology_test/shared/default_button.dart';
import 'package:psychology_test/shared/guild_text.dart';
import 'package:psychology_test/shared/question_page.dart';

class IntellectIntroPage extends StatelessWidget {
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
                    text:
                        'Đánh giá IQ cho trẻ độ tuổi từ 3-14 tuổi bằng việc vẽ hình người',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  GuideText(
                    text: 'Chuẩn bị trước: ',
                  ),
                  GuideText(
                    text:
                        'Đặt trước mặt trẻ một vài tờ giấy khổ A4 –viết chì, tẩy. Sau đó đề nghị trẻ vẽ một hình người, nếu trẻ cảm thấy khó khăn hay khó hình dung, ta có thể gợi ý : Con có thể vẽ bố, mẹ, anh chị, bạn vv.v. con vẽ sao cũng được',
                  ),
                  GuideText(
                      text:
                          'Khi trẻ ngưng vẽ, hỏi trẻ vẽ xong chưa. Khi trẻ xác nhận là đã vẽ xong thì bắt đầu tiến hành đánh giá'),
                  GuideText(
                    text: 'Không phê bình về bức vẽ xấu hay đẹp',
                  ),
                  GuideText(
                    text:
                        'Trắc nghiệm vẽ hình người thường được tiến hành đối với trẻ từ 3 đến 14',
                  )
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
                          dataInstance: IntellectData(),
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
