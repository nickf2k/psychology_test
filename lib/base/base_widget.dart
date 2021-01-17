import 'package:flutter/material.dart';
import 'package:psychology_test/config/app_color.dart';
import 'package:psychology_test/constant/route_constant.dart';

class BaseContainer extends StatelessWidget {
  final String title;
  final Widget child;
  bool canPop;

  BaseContainer({Key key, this.title, @required this.child, this.canPop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (canPop == null) canPop = Navigator.of(context).canPop();
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: Container(
            // color: Colors.red,
            child: canPop
                ? IconButton(
                    icon: Icon(
                      Icons.arrow_back_sharp,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  )
                : Container(),
          ),
          backgroundColor: AppColor.mainBackground.shade600,
          title: Text(
            title ?? "",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 0,
          child: Icon(Icons.home),
          backgroundColor: AppColor.mainBackground.shade400,
          onPressed: () => Navigator.of(context).pushNamed(RouteConstant.START),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: child,
      ),
    );
  }
}
