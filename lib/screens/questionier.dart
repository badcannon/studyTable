import 'package:flutter/material.dart';
import 'package:studyTable/widgets/studytableTitle.dart';
import '../widgets/inputwidget.dart';

class Questions extends StatelessWidget {
  static const routeName = "/Questions";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: (MediaQuery.of(context).size.height * 30) / 100,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  height: (MediaQuery.of(context).size.height * 30) / 100,
                  child: InputWidget(),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TitleWidget(
                    size1: (MediaQuery.of(context).size.width * 9) / 100,
                    size2: (MediaQuery.of(context).size.width * 14) / 100,
                    size3: (MediaQuery.of(context).size.width * 6) / 100,
                    color: Colors.grey,
                    navigation: false,
                  ),
                ),
                alignment: Alignment.bottomLeft,
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}
