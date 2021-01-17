
import 'package:flutter/material.dart';
import 'package:psychology_test/constant/route_constant.dart';
import 'package:psychology_test/pages/choosing_test.dart';
import 'package:psychology_test/pages/home.dart';
import 'package:psychology_test/pages/knowledge.dart';
import 'package:psychology_test/pages/question/autism/autism.dart';
import 'package:psychology_test/pages/question/autism/autism_intro.dart';
import 'package:psychology_test/pages/question/autism/autism_result.dart';
import 'package:psychology_test/pages/question/hyper_activity/hyper_activity.dart';
import 'package:psychology_test/pages/question/hyper_activity/hyper_activity_intro.dart';
import 'package:psychology_test/pages/question/hyper_activity/hyper_activity_result.dart';
import 'package:psychology_test/pages/question/intellect/intellect.dart';
import 'package:psychology_test/pages/question/intellect/intellect_intro.dart';
import 'package:psychology_test/pages/question/intellect/intellect_result.dart';
import 'package:psychology_test/pages/start.dart';

Map<String, WidgetBuilder> routeConfig() {
  return <String, WidgetBuilder>{
    RouteConstant.HOME: (context) => HomePage(),
    RouteConstant.START: (context) => StartPage(),
    RouteConstant.CHOOSING: (context) => ChoosingPage(),
    RouteConstant.AUTISM: (context) => AutismPage(),
    RouteConstant.HYPER_ACTIVITY: (context) => HyperActivityPage(),
    RouteConstant.INTELLECT: (context) => IntellectPage(),
    RouteConstant.KNOWLEDGE: (context) => KnowledgePage(),
    RouteConstant.AUTISM_INTRO: (context) => AutismIntroducePage(),
    RouteConstant.HYPER_ACTIVITY_INTRO: (context) => HyperActivityIntro(),
    RouteConstant.INTELLECT_INTRO: (context) => IntellectIntroPage(),

    RouteConstant.AUTISM_RESULT: (context) => AutismTestResult(),
    RouteConstant.HYPER_ACTIVITY_RESULT: (context) => HyperActivityResult(),
    RouteConstant.INTELLECT_RESULT: (context) => IntellectResult(),




  };
}
