import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/config/app_color.dart';
import 'package:psychology_test/constant/route_constant.dart';
import 'package:psychology_test/shared/default_button.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfff7f7f7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('assets/images/banner.jpg'),
            SizedBox(
              height: 10,
            ),
            AppButton(
              title: 'Trắc nghiệm tâm lý',
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteConstant.CHOOSING),
              minWidth: 240,
              fontSize: 18,
            ),
            SizedBox(
              height: 10,
            ),
            AppButton(
              title: 'Kiến thức',
              onPressed: () =>
                  Navigator.of(context).pushNamed(RouteConstant.KNOWLEDGE),
              minWidth: 240,
              fontSize: 18,
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
