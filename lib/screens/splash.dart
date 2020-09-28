import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import '../widgets/studytableTitle.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/SplashScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: TitleWidget(
          size1: (MediaQuery.of(context).size.width * 12) / 100,
          size2: (MediaQuery.of(context).size.width * 19) / 100,
          size3: (MediaQuery.of(context).size.width * 7) / 100,
          color: Colors.white,
          navigation: true,
        ),
      ),
    );
  }
}
