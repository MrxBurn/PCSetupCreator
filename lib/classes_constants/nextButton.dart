// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

//Alignment.topLeft is Alignment(-1.0, -1.0)
// Alignment.topCenter is Alignment(0.0, -1.0)
// Alignment.topRight is Alignment(1.0, -1.0)
// Alignment.centerLeft is Alignment(-1.0, 0.0)
// Alignment.center is Alignment(0.0, 0.0)
// Alignment.centerRight is Alignment(1.0, 0.0)
// Alignment.bottomLeft is Alignment(-1.0, 1.0)
// Alignment.bottomCenter is Alignment(0.0, 1.0)
// Alignment.bottomRight is Alignment(1.0, 1.0)

class NextButton extends StatelessWidget {
  int buttonColor = 0;
  String route = '';
  double paddingTop = 0.0;

  NextButton(this.paddingTop, this.route, this.buttonColor, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: paddingTop),
      child: Container(
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(buttonColor)),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, route);
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          )),
    );
  }
}
