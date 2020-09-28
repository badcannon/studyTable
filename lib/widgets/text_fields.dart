import 'package:flutter/material.dart';
import 'package:studyTable/models/input_model.dart';
import 'package:studyTable/screens/result_screen.dart';

class CustomTextField extends StatefulWidget {
  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  TextEditingController _controller,
      _controller1,
      _controller2,
      _controller3,
      _controller4,
      _controller5;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    _controller = TextEditingController();
    _controller = TextEditingController();
    _controller1 = TextEditingController();
    _controller2 = TextEditingController();
    _controller3 = TextEditingController();
    _controller4 = TextEditingController();
    _controller5 = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    super.dispose();
  }

  int counter = 1;

  InputModel input = new InputModel(
    name: '',
    subject1: '',
    subject2: '',
    subject3: '',
    subject4: '',
    subject5: '',
    subject6: '',
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (counter == 1)
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                labelText: 'Name'.toUpperCase(),
                labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
            onSubmitted: (value) {
              counter++;
              input = new InputModel(
                  name: value,
                  subject1: input.subject1,
                  subject2: input.subject2,
                  subject3: input.subject3,
                  subject4: input.subject4,
                  subject5: input.subject5,
                  subject6: input.subject6);
              print(input.name);
              _controller.clear();
            },
          ),
        if (counter == 2)
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                labelText: 'Subject 1'.toUpperCase(),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
            controller: _controller,
            onSubmitted: (value) {
              counter++;
              input = new InputModel(
                  name: input.name,
                  subject1: value,
                  subject2: input.subject2,
                  subject3: input.subject3,
                  subject4: input.subject4,
                  subject5: input.subject5,
                  subject6: input.subject6);
              print(input.subject1);
              _controller1.clear();
            },
          ),
        if (counter == 3)
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                labelText: 'Subject 2'.toUpperCase(),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
            controller: _controller1,
            onSubmitted: (value) {
              counter++;
              input = new InputModel(
                  name: input.name,
                  subject1: input.subject1,
                  subject2: value,
                  subject3: input.subject3,
                  subject4: input.subject4,
                  subject5: input.subject5,
                  subject6: input.subject6);
              print(input.subject1);
              _controller2.clear();
            },
          ),
        if (counter == 4)
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                labelText: 'Subject 3'.toUpperCase(),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
            controller: _controller2,
            onSubmitted: (value) {
              counter++;
              input = new InputModel(
                  name: input.name,
                  subject1: input.subject1,
                  subject2: input.subject2,
                  subject3: value,
                  subject4: input.subject4,
                  subject5: input.subject5,
                  subject6: input.subject6);
              print(input.subject1);
              _controller3.clear();
            },
          ),
        if (counter == 5)
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                labelText: 'Subject 4'.toUpperCase(),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
            controller: _controller3,
            onSubmitted: (value) {
              counter++;
              input = new InputModel(
                  name: input.name,
                  subject1: input.subject1,
                  subject2: input.subject2,
                  subject3: input.subject3,
                  subject4: value,
                  subject5: input.subject5,
                  subject6: input.subject6);
              print(input.subject1);
              _controller4.clear();
            },
          ),
        if (counter == 6)
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                labelText: 'Subject 5'.toUpperCase(),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
            controller: _controller4,
            onSubmitted: (value) {
              counter++;
              input = new InputModel(
                  name: input.name,
                  subject1: input.subject1,
                  subject2: input.subject2,
                  subject3: input.subject3,
                  subject4: input.subject4,
                  subject5: value,
                  subject6: input.subject6);
              print(input.subject1);
              _controller5.clear();
            },
          ),
        if (counter == 7)
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                labelText: 'Subject 6'.toUpperCase(),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20)),
            controller: _controller5,
            onSubmitted: (value) {
              input = new InputModel(
                  name: input.name,
                  subject1: input.subject1,
                  subject2: input.subject2,
                  subject3: input.subject3,
                  subject4: input.subject4,
                  subject5: input.subject5,
                  subject6: value);

              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => ResultScreen(input)));
            },
          ),
      ],
    );
  }
}
