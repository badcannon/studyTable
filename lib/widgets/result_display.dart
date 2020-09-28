import 'package:flutter/material.dart';

class DisplaySubjects extends StatelessWidget {
  final String subjectname;
  DisplaySubjects({this.subjectname});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white10,
      child: Text(
        subjectname.toUpperCase(),
        style: TextStyle(
          color: Colors.black,
          fontSize: (MediaQuery.of(context).size.width * 7) / 100,
        ),
        textAlign: TextAlign.left,
        softWrap: true,
      ),
    );
  }
}
