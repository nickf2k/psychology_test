import 'package:flutter/material.dart';
import 'package:psychology_test/config/app_color.dart';

class AppButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final Color color;
  final double radius;
  final double minWidth;
  final double fontSize;

  const AppButton(
      {Key key,
      this.onPressed,
      this.title,
      this.color,
      this.radius = 15,
      this.minWidth = 150,
      this.fontSize = 20})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: minWidth,
      onPressed: onPressed ?? null,
      color: color ?? AppColor.mainBackground.shade800,
      focusColor: AppColor.transparent,
      child: Text(
        title ?? "Button",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: fontSize, color: AppColor.textBlack),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: BorderSide(color: AppColor.mainBackground.shade500)),
    );
  }
}
