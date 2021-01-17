import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/shared/default_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseContainer(
      title: 'Trang chủ',
      child: Container(
          child: Center(
        child: AppButton(title: "Trang chủ",),
      )),
    );
  }
}
