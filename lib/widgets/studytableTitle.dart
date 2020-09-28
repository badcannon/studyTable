import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:studyTable/screens/splash.dart';
import 'package:studyTable/screens/questionier.dart';

class TitleWidget extends StatelessWidget {
  final double size1, size2, size3;
  final Color color;
  final bool navigation;

  TitleWidget({
    @required this.size1,
    @required this.size2,
    @required this.size3,
    @required this.color,
    @required this.navigation,
  });

  @override
  Widget build(BuildContext context) {
    var text = GestureDetector(
      onTap: () {
        //navigate
        if (navigation) Navigator.of(context).pushNamed(Questions.routeName);
      },
      child: RichText(
        text: new TextSpan(
          children: [
            new TextSpan(
              text: 'STUDY',
              style: TextStyle(
                  fontSize: size1, fontFamily: 'Street Corner', color: color),
            ),
            new TextSpan(
                text: 'table',
                style: new TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: size2,
                    color: color.withAlpha(255))),
          ],
        ),
      ),
    );
    return Column(
      children: [
        text,
        GestureDetector(
          onTap: () {
            //navigate
            if (navigation)
              Navigator.of(context).pushNamed(Questions.routeName);
          },
          child: Text(
            "CARE A SMILE ",
            style: TextStyle(
                fontSize: size3, color: color, fontFamily: 'Street Corner'),
            textAlign: TextAlign.start,
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
