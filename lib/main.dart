import 'package:flutter/material.dart';
import 'package:studyTable/screens/questionier.dart';
import './screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STUDYTable',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
        Questions.routeName: (ctx) => Questions(),
      },
    );
  }
}
