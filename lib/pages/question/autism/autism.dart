import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/data/autism_data.dart';
import 'package:psychology_test/shared/question_page.dart';

class AutismPage extends StatefulWidget {
  @override
  _AutismPageState createState() => _AutismPageState();
}

class _AutismPageState extends State<AutismPage> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<Key> keys = [Key('0'), Key('1'),Key('2'),Key('3')];
  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _count = 1;
    return BaseContainer(
        title: 'Kiểm tra tự kỷ',
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  itemCount: 2,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return QuestionPage(
                      initPoint: 10,

                    );
                  }),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ));
  }
}

class AutismComponent extends StatefulWidget {
  final int index;

  const AutismComponent({Key key, this.index}) : super(key: key);

  @override
  _AutismComponentState createState() => _AutismComponentState();
}

class _AutismComponentState extends State<AutismComponent> {
  int point = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget.index.toString()),
      ),
    );
  }
}
