import 'package:flutter/material.dart';
import 'package:studyTable/models/input_model.dart';
import 'package:studyTable/widgets/text_fields.dart';

class InputWidget extends StatefulWidget {
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) => CustomTextField(),
    );
  }
}
