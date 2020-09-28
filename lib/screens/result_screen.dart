import 'package:flutter/material.dart';
import 'package:studyTable/models/input_model.dart';
import 'package:studyTable/widgets/result_display.dart';
import 'package:studyTable/widgets/studytableTitle.dart';

class ResultScreen extends StatelessWidget {
  final InputModel _input;
  ResultScreen(@required this._input);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const Text("Alert"),
              content: const Text(
                  "This is a demo app , going back will probably lead to loss of data !"),
              actions: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    Navigator.of(context).pop();
                  },
                  child: const Text("Ok"),
                ),
              ],
            );
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 60, top: 10),
                    color: Colors.white,
                    height: 60,
                    child: ListWheelScrollView(itemExtent: 60, children: [
                      DisplaySubjects(
                        subjectname: _input.subject1,
                      ),
                      DisplaySubjects(
                        subjectname: _input.subject2,
                      ),
                      DisplaySubjects(
                        subjectname: _input.subject3,
                      ),
                      DisplaySubjects(
                        subjectname: _input.subject4,
                      ),
                      DisplaySubjects(
                        subjectname: _input.subject5,
                      ),
                      DisplaySubjects(
                        subjectname: _input.subject6,
                      )
                    ]),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, top: 20),
                        child: Text(
                          _input.name.toUpperCase(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize:
                                  (MediaQuery.of(context).size.width * 4) /
                                      100),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TitleWidget(
                          size1: (MediaQuery.of(context).size.width * 9) / 100,
                          size2: (MediaQuery.of(context).size.width * 14) / 100,
                          size3: (MediaQuery.of(context).size.width * 6) / 100,
                          color: Colors.grey,
                          navigation: false,
                        ),
                      ),
                    ],
                  ),
                  alignment: Alignment.bottomLeft,
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.start,
            ),
          ),
        ),
      ),
    );
  }
}
