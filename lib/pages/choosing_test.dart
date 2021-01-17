import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/config/app_color.dart';
import 'package:psychology_test/constant/route_constant.dart';
import 'package:psychology_test/shared/default_button.dart';

class ChoosingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      title: 'Trắc nghiệm tâm lý',
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/question.png'),
            AppButton(
              title: 'Kiểm tra tự kỷ',
              fontSize: 18,
              minWidth: 270,
              color: AppColor.mainBackground,
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteConstant.AUTISM_INTRO),
            ),
            AppButton(
              title: 'Kiểm tra tăng động',
              fontSize: 18,
              minWidth: 270,
              onPressed: () => Navigator.of(context)
                  .pushNamed(RouteConstant.HYPER_ACTIVITY_INTRO),
            ),
            AppButton(
              title: 'Kiểm tra trí tuệ',
              fontSize: 18,
              minWidth: 270,
              onPressed: () => Navigator.of(context)
                  .pushNamed(RouteConstant.INTELLECT_INTRO),
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
