import 'package:flutter/material.dart';
import 'package:psychology_test/base/base_widget.dart';
import 'package:psychology_test/constant/route_constant.dart';
import 'package:psychology_test/data/autism_data.dart';
import 'package:psychology_test/data/hyper_activity_data.dart';
import 'package:psychology_test/data/idata.dart';
import 'package:psychology_test/data/intellect_data.dart';
import 'package:psychology_test/shared/default_button.dart';

class QuestionPage extends StatefulWidget {
  final int categoryIndex;
  final IData dataInstance;
  final int initPoint;
  final bool isAutismTest;

  const QuestionPage(
      {Key key, this.categoryIndex, this.dataInstance, this.initPoint, this.isAutismTest = false})
      : super(key: key);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  String routeSuccess;
  int point = 0;
  int questionNumber;
  List<String> questions = [];
  Category _category;
  bool isLast = false;
  Map<String, int> attendace = {};
  List<int> options = [0, 1];

  getQuestions() {}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // point = widget.initPoint;
    _category = widget.dataInstance.getCategories()[widget.categoryIndex];
    questionNumber = _category.endIndex - _category.startIndex + 1;

    questions = widget.dataInstance
        .getQuestions()
        .sublist(_category.startIndex, _category.endIndex + 1);
    questions.forEach((element) {
      attendace[element] = -1;
    }); // cac cau hoi phai khac nhau
  }

  @override
  Widget build(BuildContext context) {
    bool isLast =
        widget.categoryIndex == widget.dataInstance.getCategories().length - 1;
    routeSuccess = getRouteWhenSuccess(widget.dataInstance);
    return BaseContainer(
      title: _category.name,
      child: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            widget.categoryIndex == null ? Text(_category.name) : Container(),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      title: Text(questions[index]),
                      subtitle: Column(
                        children: [
                          Row(
                            children: options
                                .map((e) => Row(
                                      children: [
                                        Radio(
                                          groupValue:
                                              attendace[questions[index]],
                                          value: e,
                                          onChanged: (newValue) {
                                            setState(() {
                                              attendace[questions[index]] =
                                                  newValue;
                                            });
                                          },
                                        ),
                                        widget.isAutismTest?Text(e == 0? 'Có' : 'Không'):
                                        Text(e == 1? 'Có' : 'Không')
                                      ],
                                    ))
                                .toList(),
                          ),
                          Divider()
                        ],
                      ),
                    ),
                  );
                }),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppButton(
                  title: 'Trước',
                  onPressed: () => Navigator.of(context).pop(),
                ),
                isLast
                    ? AppButton(
                        title: 'Hoàn thành',
                        onPressed: () {
                          bool canNext = handleLogicCanNext();
                          if (!canNext) return;
                          var result;
                          attendace.forEach((key, value) {
                            setState(() {
                              point = point + value;
                            });
                          });
                          if (widget.dataInstance is AutismData) {
                            result = AutismData.getResultTest(
                                point + widget.initPoint);
                          }
                          if (widget.dataInstance is HyperActivityData) {
                            result = HyperActivityData.getResult(
                                widget.initPoint, point);
                          }
                          if (widget.dataInstance is IntellectData) {
                            result = widget.initPoint + point;
                          }
                          Navigator.of(context)
                              .pushNamed(routeSuccess, arguments: result);
                        },
                      )
                    : AppButton(
                        title: 'Tiếp',
                        onPressed: () {
                          bool canNext = handleLogicCanNext();
                          if (!canNext) return;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => QuestionPage(
                                    categoryIndex: widget.categoryIndex + 1,
                                    dataInstance: widget.dataInstance,
                                    initPoint: point + widget.initPoint,
                                  )));
                        },
                      )
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }

  String getRouteWhenSuccess(IData dataInstance) {
    if (dataInstance is AutismData) return RouteConstant.AUTISM_RESULT;
    if (dataInstance is HyperActivityData)
      return RouteConstant.HYPER_ACTIVITY_RESULT;
    if (dataInstance is IntellectData) return RouteConstant.INTELLECT_RESULT;
    return RouteConstant.AUTISM_RESULT;
  }

  bool handleLogicCanNext() {
    bool canNext = true;

    for (var value in attendace.values) {
      // var value = value.
      if (value != -1) {
        setState(() {
          point = point + value;
        });
      } else {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  title: Center(
                    child: Text(
                      "Có lỗi xảy ra",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  content: Container(
                      height: 40,
                      child:
                          Center(child: Text("Hãy trả lời toàn bộ câu hỏi"))),
                ));
        canNext = false;
        break;
      }
    }
    return canNext;
  }
}
